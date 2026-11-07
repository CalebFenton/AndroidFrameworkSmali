.class Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans;
.super Ljava/lang/Object;
.source "PackageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/parsing/pkg/PackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/pkg/PackageImpl$Booleans$Flags;
    }
.end annotation


# static fields
.field private static final blacklist ALLOW_AUDIO_PLAYBACK_CAPTURE:J = 0x80000000L

.field private static final blacklist ALLOW_BACKUP:J = 0x4L

.field private static final blacklist ALLOW_CLEAR_USER_DATA:J = 0x800L

.field private static final blacklist ALLOW_CLEAR_USER_DATA_ON_FAILED_RESTORE:J = 0x40000000L

.field private static final blacklist ALLOW_NATIVE_HEAP_POINTER_TAGGING:J = 0x1000000000L

.field private static final blacklist ALLOW_TASK_REPARENTING:J = 0x400L

.field private static final blacklist ATTRIBUTIONS_ARE_USER_VISIBLE:J = 0x800000000000L

.field private static final blacklist BACKUP_IN_FOREGROUND:J = 0x1000000L

.field private static final blacklist CANT_SAVE_STATE:J = 0x800000000L

.field private static final blacklist CORE_APP:J = 0x10000000000000L

.field private static final blacklist CROSS_PROFILE:J = 0x80000000000L

.field private static final blacklist DEBUGGABLE:J = 0x80L

.field private static final blacklist DEFAULT_TO_DEVICE_PROTECTED_STORAGE:J = 0x4000000L

.field private static final blacklist DIRECT_BOOT_AWARE:J = 0x8000000L

.field private static final blacklist DISALLOW_PROFILING:J = 0x200000000000L

.field private static final blacklist ENABLED:J = 0x100000000000L

.field private static final blacklist ENABLE_ON_BACK_INVOKED_CALLBACK:J = 0x4000000000000L

.field private static final blacklist EXTERNAL_STORAGE:J = 0x1L

.field private static final blacklist EXTRACT_NATIVE_LIBS:J = 0x20000L

.field private static final blacklist FACTORY_TEST:J = 0x40000000000000L

.field private static final blacklist FORCE_QUERYABLE:J = 0x40000000000L

.field private static final blacklist FULL_BACKUP_ONLY:J = 0x20L

.field private static final blacklist GAME:J = 0x40000L

.field private static final blacklist HARDWARE_ACCELERATED:J = 0x2L

.field private static final blacklist HAS_CODE:J = 0x200L

.field private static final blacklist HAS_DOMAIN_URLS:J = 0x400000L

.field private static final blacklist HAS_FRAGILE_USER_DATA:J = 0x400000000L

.field private static final blacklist ISOLATED_SPLIT_LOADING:J = 0x200000L

.field private static final blacklist KILL_AFTER_RESTORE:J = 0x8L

.field private static final blacklist LARGE_HEAP:J = 0x1000L

.field private static final blacklist LEAVING_SHARED_UID:J = 0x8000000000000L

.field private static final blacklist MULTI_ARCH:J = 0x10000L

.field private static final blacklist NATIVE_LIBRARY_ROOT_REQUIRES_ISA:J = -0x8000000000000000L

.field private static final blacklist ODM:J = 0x2000000000000000L

.field private static final blacklist OEM:J = 0x400000000000000L

.field private static final blacklist OVERLAY:J = 0x100000L

.field private static final blacklist OVERLAY_IS_STATIC:J = 0x8000000000L

.field private static final blacklist PARTIALLY_DIRECT_BOOT_AWARE:J = 0x10000000L

.field private static final blacklist PERSISTENT:J = 0x40L

.field private static final blacklist PRESERVE_LEGACY_EXTERNAL_STORAGE:J = 0x2000000000L

.field private static final blacklist PRIVILEGED:J = 0x200000000000000L

.field private static final blacklist PRODUCT:J = 0x1000000000000000L

.field private static final blacklist PROFILEABLE_BY_SHELL:J = 0x800000L

.field private static final blacklist REQUEST_FOREGROUND_SERVICE_EXEMPTION:J = 0x400000000000L

.field private static final blacklist REQUEST_LEGACY_EXTERNAL_STORAGE:J = 0x100000000L

.field private static final blacklist REQUIRED_FOR_ALL_USERS:J = 0x4000000000L

.field private static final blacklist RESET_ENABLED_SETTINGS_ON_APP_DATA_CLEARED:J = 0x1000000000000L

.field private static final blacklist RESIZEABLE_ACTIVITY_VIA_SDK_VERSION:J = 0x20000000L

.field private static final blacklist RESTORE_ANY_VERSION:J = 0x10L

.field private static final blacklist SDK_LIBRARY:J = 0x2000000000000L

.field private static final blacklist SIGNED_WITH_PLATFORM_KEY:J = 0x4000000000000000L

.field private static final blacklist STATIC_SHARED_LIBRARY:J = 0x80000L

.field private static final blacklist SUPPORTS_RTL:J = 0x4000L

.field private static final blacklist SYSTEM:J = 0x20000000000000L

.field private static final blacklist SYSTEM_EXT:J = 0x100000000000000L

.field private static final blacklist TEST_ONLY:J = 0x8000L

.field private static final blacklist USES_CLEARTEXT_TRAFFIC:J = 0x2000L

.field private static final blacklist USES_NON_SDK_API:J = 0x200000000L

.field private static final blacklist USE_32_BIT_ABI:J = 0x10000000000L

.field private static final blacklist USE_EMBEDDED_DEX:J = 0x2000000L

.field private static final blacklist VENDOR:J = 0x800000000000000L

.field private static final blacklist VISIBLE_TO_INSTANT_APPS:J = 0x20000000000L

.field private static final blacklist VM_SAFE_MODE:J = 0x100L


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 3798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
