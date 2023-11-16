; ModuleID = 'obj\Release\110\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\110\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [54 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 2
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 20
	i64 872800313462103108, ; 2: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 14
	i64 1000557547492888992, ; 3: Mono.Security.dll => 0xde2b1c9cba651a0 => 26
	i64 1425944114962822056, ; 4: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 24
	i64 1731380447121279447, ; 5: Newtonsoft.Json => 0x18071957e9b889d7 => 4
	i64 1795316252682057001, ; 6: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 11
	i64 1836611346387731153, ; 7: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 20
	i64 1981742497975770890, ; 8: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 18
	i64 2133195048986300728, ; 9: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 4
	i64 2262844636196693701, ; 10: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 14
	i64 2329709569556905518, ; 11: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 17
	i64 2547086958574651984, ; 12: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 10
	i64 2592350477072141967, ; 13: System.Xml.dll => 0x23f9e10627330e8f => 9
	i64 2624866290265602282, ; 14: mscorlib.dll => 0x246d65fbde2db8ea => 3
	i64 3289520064315143713, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 16
	i64 3531994851595924923, ; 16: System.Numerics => 0x31042a9aade235bb => 8
	i64 4794310189461587505, ; 17: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 10
	i64 5203618020066742981, ; 18: Xamarin.Essentials => 0x4836f704f0e652c5 => 21
	i64 5507995362134886206, ; 19: System.Core.dll => 0x4c705499688c873e => 5
	i64 5815299928378696839, ; 20: Supp.App.dll => 0x50b418795d5de487 => 0
	i64 6401687960814735282, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 17
	i64 6548213210057960872, ; 22: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 13
	i64 6876862101832370452, ; 23: System.Xml.Linq => 0x5f6f85a57d108914 => 25
	i64 7488575175965059935, ; 24: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 25
	i64 7637365915383206639, ; 25: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 21
	i64 7654504624184590948, ; 26: System.Net.Http => 0x6a3a4366801b8264 => 7
	i64 7820441508502274321, ; 27: System.Data => 0x6c87ca1e14ff8111 => 23
	i64 8083354569033831015, ; 28: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 16
	i64 8167236081217502503, ; 29: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8626175481042262068, ; 30: Java.Interop => 0x77b654e585b55834 => 1
	i64 8687599634433813467, ; 31: Supp.App => 0x78908dd6b13dabdb => 0
	i64 9324707631942237306, ; 32: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 11
	i64 9662334977499516867, ; 33: System.Numerics.dll => 0x8617827802b0cfc3 => 8
	i64 9808709177481450983, ; 34: Mono.Android.dll => 0x881f890734e555e7 => 2
	i64 9998632235833408227, ; 35: Mono.Security => 0x8ac2470b209ebae3 => 26
	i64 10038780035334861115, ; 36: System.Net.Http.dll => 0x8b50e941206af13b => 7
	i64 10229024438826829339, ; 37: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 13
	i64 10430153318873392755, ; 38: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 12
	i64 11023048688141570732, ; 39: System.Core => 0x98f9bc61168392ac => 5
	i64 11037814507248023548, ; 40: System.Xml => 0x992e31d0412bf7fc => 9
	i64 12451044538927396471, ; 41: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 15
	i64 12466513435562512481, ; 42: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 19
	i64 13370592475155966277, ; 43: System.Runtime.Serialization => 0xb98de304062ea945 => 24
	i64 13454009404024712428, ; 44: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 22
	i64 13647894001087880694, ; 45: System.Data.dll => 0xbd670f48cb071df6 => 23
	i64 13959074834287824816, ; 46: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 15
	i64 14792063746108907174, ; 47: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 22
	i64 15370334346939861994, ; 48: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 12
	i64 15609085926864131306, ; 49: System.dll => 0xd89e9cf3334914ea => 6
	i64 16154507427712707110, ; 50: System => 0xe03056ea4e39aa26 => 6
	i64 16833383113903931215, ; 51: mscorlib => 0xe99c30c1484d7f4f => 3
	i64 17704177640604968747, ; 52: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 19
	i64 17710060891934109755 ; 53: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 18
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [54 x i32] [
	i32 2, i32 20, i32 14, i32 26, i32 24, i32 4, i32 11, i32 20, ; 0..7
	i32 18, i32 4, i32 14, i32 17, i32 10, i32 9, i32 3, i32 16, ; 8..15
	i32 8, i32 10, i32 21, i32 5, i32 0, i32 17, i32 13, i32 25, ; 16..23
	i32 25, i32 21, i32 7, i32 23, i32 16, i32 1, i32 1, i32 0, ; 24..31
	i32 11, i32 8, i32 2, i32 26, i32 7, i32 13, i32 12, i32 5, ; 32..39
	i32 9, i32 15, i32 19, i32 24, i32 22, i32 23, i32 15, i32 22, ; 40..47
	i32 12, i32 6, i32 6, i32 3, i32 19, i32 18 ; 48..53
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
