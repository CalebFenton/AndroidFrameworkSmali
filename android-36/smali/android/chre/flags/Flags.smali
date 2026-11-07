.class public final Landroid/chre/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ABORT_IF_NO_CONTEXT_HUB_FOUND:Ljava/lang/String; = "android.chre.flags.abort_if_no_context_hub_found"

.field public static final blacklist FLAG_BT_SOCKET_HAL_SUPPORTED:Ljava/lang/String; = "android.chre.flags.bt_socket_hal_supported"

.field public static final blacklist FLAG_BUG_FIX_HAL_RELIABLE_MESSAGE_RECORD:Ljava/lang/String; = "android.chre.flags.bug_fix_hal_reliable_message_record"

.field public static final blacklist FLAG_BUG_FIX_REMOVE_EXIT_CALL_IN_HAL:Ljava/lang/String; = "android.chre.flags.bug_fix_remove_exit_call_in_hal"

.field public static final blacklist FLAG_EFW_XPORT_IN_CONTEXT_HUB:Ljava/lang/String; = "android.chre.flags.efw_xport_in_context_hub"

.field public static final blacklist FLAG_EFW_XPORT_REWIND_ON_ERROR:Ljava/lang/String; = "android.chre.flags.efw_xport_rewind_on_error"

.field public static final blacklist FLAG_FIX_API_CHECK:Ljava/lang/String; = "android.chre.flags.fix_api_check"

.field public static final blacklist FLAG_HAL_HANDLE_NANOAPP_QUERY_TEST_MODE:Ljava/lang/String; = "android.chre.flags.hal_handle_nanoapp_query_test_mode"

.field public static final blacklist FLAG_OFFLOAD_API:Ljava/lang/String; = "android.chre.flags.offload_api"

.field public static final blacklist FLAG_OFFLOAD_IMPLEMENTATION:Ljava/lang/String; = "android.chre.flags.offload_implementation"

.field public static final blacklist FLAG_RECONNECT_HOST_ENDPOINTS_AFTER_HAL_RESTART:Ljava/lang/String; = "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

.field public static final blacklist FLAG_REDUCE_LOCKING_CONTEXT_HUB_TRANSACTION_MANAGER:Ljava/lang/String; = "android.chre.flags.reduce_locking_context_hub_transaction_manager"

.field public static final blacklist FLAG_REFACTOR_HAL_XPORT_AGNOSTIC:Ljava/lang/String; = "android.chre.flags.refactor_hal_xport_agnostic"

.field public static final blacklist FLAG_RELIABLE_MESSAGE:Ljava/lang/String; = "android.chre.flags.reliable_message"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_DUPLICATE_DETECTION_SERVICE:Ljava/lang/String; = "android.chre.flags.reliable_message_duplicate_detection_service"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_RETRY_SUPPORT_SERVICE:Ljava/lang/String; = "android.chre.flags.reliable_message_retry_support_service"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_TEST_MODE_BEHAVIOR:Ljava/lang/String; = "android.chre.flags.reliable_message_test_mode_behavior"

.field public static final blacklist FLAG_REMOVE_OLD_CONTEXT_HUB_APIS:Ljava/lang/String; = "android.chre.flags.remove_old_context_hub_apis"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Landroid/chre/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/chre/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist abortIfNoContextHubFound()Z
    .registers 1

    .line 48
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->abortIfNoContextHubFound()Z

    move-result v0

    return v0
.end method

.method public static greylist btSocketHalSupported()Z
    .registers 1

    .line 55
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->btSocketHalSupported()Z

    move-result v0

    return v0
.end method

.method public static greylist bugFixHalReliableMessageRecord()Z
    .registers 1

    .line 62
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->bugFixHalReliableMessageRecord()Z

    move-result v0

    return v0
.end method

.method public static greylist bugFixRemoveExitCallInHal()Z
    .registers 1

    .line 69
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->bugFixRemoveExitCallInHal()Z

    move-result v0

    return v0
.end method

.method public static greylist efwXportInContextHub()Z
    .registers 1

    .line 76
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->efwXportInContextHub()Z

    move-result v0

    return v0
.end method

.method public static greylist efwXportRewindOnError()Z
    .registers 1

    .line 83
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->efwXportRewindOnError()Z

    move-result v0

    return v0
.end method

.method public static greylist fixApiCheck()Z
    .registers 1

    .line 90
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->fixApiCheck()Z

    move-result v0

    return v0
.end method

.method public static greylist halHandleNanoappQueryTestMode()Z
    .registers 1

    .line 97
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->halHandleNanoappQueryTestMode()Z

    move-result v0

    return v0
.end method

.method public static greylist offloadApi()Z
    .registers 1

    .line 104
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->offloadApi()Z

    move-result v0

    return v0
.end method

.method public static greylist offloadImplementation()Z
    .registers 1

    .line 111
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->offloadImplementation()Z

    move-result v0

    return v0
.end method

.method public static greylist reconnectHostEndpointsAfterHalRestart()Z
    .registers 1

    .line 118
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reconnectHostEndpointsAfterHalRestart()Z

    move-result v0

    return v0
.end method

.method public static greylist reduceLockingContextHubTransactionManager()Z
    .registers 1

    .line 125
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reduceLockingContextHubTransactionManager()Z

    move-result v0

    return v0
.end method

.method public static greylist refactorHalXportAgnostic()Z
    .registers 1

    .line 132
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->refactorHalXportAgnostic()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessage()Z
    .registers 1

    .line 139
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessage()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageDuplicateDetectionService()Z
    .registers 1

    .line 146
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageDuplicateDetectionService()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageRetrySupportService()Z
    .registers 1

    .line 153
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageRetrySupportService()Z

    move-result v0

    return v0
.end method

.method public static greylist reliableMessageTestModeBehavior()Z
    .registers 1

    .line 160
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->reliableMessageTestModeBehavior()Z

    move-result v0

    return v0
.end method

.method public static greylist removeOldContextHubApis()Z
    .registers 1

    .line 167
    sget-object v0, Landroid/chre/flags/Flags;->FEATURE_FLAGS:Landroid/chre/flags/FeatureFlags;

    invoke-interface {v0}, Landroid/chre/flags/FeatureFlags;->removeOldContextHubApis()Z

    move-result v0

    return v0
.end method
