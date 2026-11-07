.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z

.field private static blacklist sandboxActivitySdkBasedContext:Z

.field private static blacklist sandboxClientImportanceListener:Z

.field private static blacklist sdkSandboxInstrumentationInfo:Z

.field private static blacklist sdkSandboxUidToAppUidApi:Z

.field private static blacklist selinuxInputSelector:Z

.field private static blacklist selinuxSdkSandboxAudit:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sandboxActivitySdkBasedContext:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sandboxClientImportanceListener:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sdkSandboxInstrumentationInfo:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sdkSandboxUidToAppUidApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->selinuxInputSelector:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->selinuxSdkSandboxAudit:Z

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

    .line 19
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.sdksandbox.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 20
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string/jumbo v3, "sandbox_activity_sdk_based_context"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sandboxActivitySdkBasedContext:Z

    .line 21
    const-string/jumbo v3, "sandbox_client_importance_listener"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sandboxClientImportanceListener:Z

    .line 22
    const-string/jumbo v3, "sdk_sandbox_instrumentation_info"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sdkSandboxInstrumentationInfo:Z

    .line 23
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sdkSandboxUidToAppUidApi:Z

    .line 24
    const-string/jumbo v3, "selinux_input_selector"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->selinuxInputSelector:Z

    .line 25
    const-string/jumbo v3, "selinux_sdk_sandbox_audit"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->selinuxSdkSandboxAudit:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_43
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_39} :catch_3a

    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    goto :goto_4b

    .line 29
    :catch_3a
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 26
    .end local v2    # "e":Ljava/lang/LinkageError;
    :catch_43
    move-exception v2

    .line 28
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    nop

    .line 34
    :goto_4c
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist sandboxActivitySdkBasedContext()Z
    .registers 2

    .line 38
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 39
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->init()V

    .line 41
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sandboxActivitySdkBasedContext:Z

    return v0
.end method

.method public blacklist sandboxClientImportanceListener()Z
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 47
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->init()V

    .line 49
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sandboxClientImportanceListener:Z

    return v0
.end method

.method public blacklist sdkSandboxInstrumentationInfo()Z
    .registers 2

    .line 54
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 55
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->init()V

    .line 57
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sdkSandboxInstrumentationInfo:Z

    return v0
.end method

.method public blacklist sdkSandboxUidToAppUidApi()Z
    .registers 2

    .line 62
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 63
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->init()V

    .line 65
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->sdkSandboxUidToAppUidApi:Z

    return v0
.end method

.method public blacklist selinuxInputSelector()Z
    .registers 2

    .line 70
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 71
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->init()V

    .line 73
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->selinuxInputSelector:Z

    return v0
.end method

.method public blacklist selinuxSdkSandboxAudit()Z
    .registers 2

    .line 78
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 79
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->init()V

    .line 81
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;->selinuxSdkSandboxAudit:Z

    return v0
.end method
