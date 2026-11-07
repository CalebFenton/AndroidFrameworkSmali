.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist certificateTransparencyCheckservertrustedApi:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist spake2plusApi:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->certificateTransparencyCheckservertrustedApi:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->spake2plusApi:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 5

    .line 15
    const-string v0, "FeatureFlagsImplExport"

    :try_start_2
    const-string v1, "com.android.org.conscrypt.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 16
    .local v1, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v2, "certificate_transparency_checkservertrusted_api"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->certificateTransparencyCheckservertrustedApi:Z

    .line 17
    const-string/jumbo v2, "spake2plus_api"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->spake2plusApi:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_24
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_1a} :catch_1b

    .end local v1    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_2c

    .line 21
    :catch_1b
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/LinkageError;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 18
    .end local v1    # "e":Ljava/lang/LinkageError;
    :catch_24
    move-exception v1

    .line 20
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    nop

    .line 26
    :goto_2d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist certificateTransparencyCheckservertrustedApi()Z
    .registers 2

    .line 30
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 31
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->init()V

    .line 33
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->certificateTransparencyCheckservertrustedApi:Z

    return v0
.end method

.method public blacklist spake2plusApi()Z
    .registers 2

    .line 38
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 39
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->init()V

    .line 41
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->spake2plusApi:Z

    return v0
.end method
