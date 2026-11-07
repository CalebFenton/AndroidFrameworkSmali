.class public final Landroid/net/connectivity/com/android/net/ct/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_JOB:Ljava/lang/String; = "com.android.net.ct.flags.certificate_transparency_job"

.field public static final blacklist FLAG_CERTIFICATE_TRANSPARENCY_SERVICE:Ljava/lang/String; = "com.android.net.ct.flags.certificate_transparency_service"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/net/ct/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist certificateTransparencyJob()Z
    .registers 1

    .line 16
    sget-object v0, Landroid/net/connectivity/com/android/net/ct/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlags;->certificateTransparencyJob()Z

    move-result v0

    return v0
.end method

.method public static blacklist certificateTransparencyService()Z
    .registers 1

    .line 23
    sget-object v0, Landroid/net/connectivity/com/android/net/ct/flags/Flags;->FEATURE_FLAGS:Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/net/connectivity/com/android/net/ct/flags/FeatureFlags;->certificateTransparencyService()Z

    move-result v0

    return v0
.end method
