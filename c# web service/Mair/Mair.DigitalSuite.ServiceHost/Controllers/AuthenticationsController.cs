﻿using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using AutoMapper;
using Mair.DigitalSuite.ServiceHost.Repositories;
using Mair.DigitalSuite.ServiceHost.Models;
using Mair.DigitalSuite.ServiceHost.Services.Token;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Mair.DigitalSuite.ServiceHost.Contracts;
using Mair.DigitalSuite.ServiceHost.Contexts;
using Mair.DigitalSuite.ServiceHost.Models.Dto.Auth;
using Mair.DigitalSuite.ServiceHost.Models.Param.Auth;

namespace Mair.DigitalSuite.ServiceHost.Controllers
{
    [Route("api/[controller]")]
    public class AuthenticationsController : Controller
    {
        private IAuthenticationsRepository _repo;
        private MairDigitalSuiteDatabaseContext _context;
        private readonly IConfiguration _config;

        public AuthenticationsController(IAuthenticationsRepository repo, IConfiguration config, MairDigitalSuiteDatabaseContext context)
        {
            _repo = repo;
            _context = context;
            _config = config;
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin)]
        [HttpGet("GetAllAuthentications")] //<host>/api/Authentications/GetAllAuthentications
        public async Task<IActionResult> GetAllAuthentications()
        {
            var result = await _repo.GetAllAuthentications();
			
			return Ok(result);
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin)]
        [HttpGet("GetAuthentication")] //<host>/api/Authentications/GetAuthentication/5
        public async Task<IActionResult> GetAuthentication(long id)
        {
            var result = await _repo.GetAuthenticationsById(id);

            return Ok(result);
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin + ", " + Common.Config.Roles.Constants.RoleSuperUser + ", " + Common.Config.Roles.Constants.RoleUser)]
        [HttpGet("GetAuthenticationsByUserName")] //<host>/api/Authentications/GetAuthenticationsByUserName/userName
        public async Task<IActionResult> GetAuthenticationsByUserName(string userName)
        {
            var result = await _repo.GetAuthenticationsByUserName(userName);

			return Ok(result);
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin + ", " + Common.Config.Roles.Constants.RoleSuperUser + ", " + Common.Config.Roles.Constants.RoleUser)]
        [HttpGet("DisableAuthenticationsByUserName")] //<host>/api/Authentications/DisableAuthenticationsByUserName/userName
        public async Task<IActionResult> DisableAuthenticationsByUserName(string userName)
        {
            var result = await _repo.DisableAuthenticationsByUserName(userName);
			
			return Ok(result);
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin + ", " + Common.Config.Roles.Constants.RoleSuperUser + ", " + Common.Config.Roles.Constants.RoleUser)]
        [HttpPut("UpdateAuthentication")] //<host>/api/Authentications/UpdateAuthentication/5
        public async Task<IActionResult> UpdateAuthentication(long id, AuthenticationDto data)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != data.Id)
            {
                return BadRequest();
            }

            var result = await _repo.UpdateAuthentication(data);

            return Ok(result);
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin)]
        [HttpPost("AddAuthentication")] //<host>/api/Authentications/AddAuthentication
        public async Task<IActionResult> AddAuthentication(AuthenticationDto data)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var result = await _repo.AddAuthentication(data);

            return Ok(result);
        }

        [Authorize(Roles = Common.Config.Roles.Constants.RoleAdmin)]
        [HttpDelete("DeleteAuthentication")] //<host>/api/Authentications/DeleteAuthentication/5
        public async Task<IActionResult> DeleteAuthentication(long id)
        {
            var result = await _repo.DeleteAuthenticationById(id);

            return Ok(result);
        }

        [AllowAnonymous]
        [HttpPost("GetToken")] //<host>/api/Authentications/GetToken
        public async Task<IActionResult> GetToken(AuthenticationLoginParam param)
        {
            string userName = param.UserName;
            string password = param.Password;

            GrantCredentials grantCredentials = new GrantCredentials(_context);

            var result = await grantCredentials.GetToken(userName, password);
			
            return Ok(result);
        }
    }
}