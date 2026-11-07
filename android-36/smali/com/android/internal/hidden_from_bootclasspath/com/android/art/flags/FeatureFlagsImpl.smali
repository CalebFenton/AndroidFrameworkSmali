.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist alwaysEnableProfileCode:Z

.field private static blacklist artServiceV3:Z

.field private static blacklist executableMethodFileOffsets:Z

.field private static blacklist executableMethodFileOffsetsV2:Z

.field private static volatile blacklist isCached:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->alwaysEnableProfileCode:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artServiceV3:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsets:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsV2:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 6

    .line 17
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.art.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 18
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string v3, "art_service_v3"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artServiceV3:Z

    .line 19
    const-string v3, "always_enable_profile_code"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->alwaysEnableProfileCode:Z

    .line 20
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsets:Z

    .line 21
    const-string v3, "executable_method_file_offsets_v2"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsV2:Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_2e
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_24} :catch_25

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_36

    .line 25
    :catch_25
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 22
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_2e
    move-exception v2

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    nop

    .line 30
    :goto_37
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist alwaysEnableProfileCode()Z
    .registers 2

    .line 34
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 35
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 37
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->alwaysEnableProfileCode:Z

    return v0
.end method

.method public blacklist artServiceV3()Z
    .registers 2

    .line 42
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 43
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 45
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artServiceV3:Z

    return v0
.end method

.method public blacklist executableMethodFileOffsets()Z
    .registers 2

    .line 50
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 51
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 53
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsets:Z

    return v0
.end method

.method public blacklist executableMethodFileOffsetsV2()Z
    .registers 2

    .line 58
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 59
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 61
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsV2:Z

    return v0
.end method
