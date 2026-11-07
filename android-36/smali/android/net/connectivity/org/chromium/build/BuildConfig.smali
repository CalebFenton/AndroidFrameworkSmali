.class public Landroid/net/connectivity/org/chromium/build/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static blacklist APK_ASSETS_SUFFIX:Ljava/lang/String; = null

.field public static blacklist APK_ASSETS_SUFFIXED_LIST:[Ljava/lang/String; = null

.field public static blacklist DISABLE_STRICT_MODE_CONTEXT:Z = false

.field public static blacklist ENABLE_ASSERTS:Z = false

.field public static blacklist ENABLE_DEBUG_LOGS:Z = false

.field public static blacklist IS_BUNDLE:Z = false

.field public static blacklist IS_CHROME_BRANDED:Z = false

.field public static blacklist IS_CRONET_BUILD:Z = false

.field public static blacklist IS_DESKTOP_ANDROID:Z = false

.field public static blacklist IS_FOR_TEST:Z = false

.field public static blacklist IS_INCREMENTAL_INSTALL:Z = false

.field public static blacklist IS_UBSAN:Z = false

.field public static final blacklist LOGTAG_PREFIX:Ljava/lang/String; = "cn_"

.field public static blacklist MIN_SDK_VERSION:I

.field public static blacklist R_STRING_PRODUCT_VERSION:I

.field public static blacklist VERSION_CODE:J

.field public static blacklist WRITE_CLANG_PROFILING_DATA:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 7
    const/16 v0, 0x17

    sput v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->MIN_SDK_VERSION:I

    .line 8
    const-wide/16 v0, 0x1

    sput-wide v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->VERSION_CODE:J

    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->IS_CRONET_BUILD:Z

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->APK_ASSETS_SUFFIXED_LIST:[Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->APK_ASSETS_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
