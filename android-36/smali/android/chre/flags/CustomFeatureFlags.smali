.class public Landroid/chre/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/chre/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/chre/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/chre/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Landroid/chre/flags/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v1, Ljava/util/HashSet;

    const-string v19, "android.chre.flags.remove_old_context_hub_apis"

    const-string v20, ""

    const-string v2, "android.chre.flags.abort_if_no_context_hub_found"

    const-string v3, "android.chre.flags.bt_socket_hal_supported"

    const-string v4, "android.chre.flags.bug_fix_hal_reliable_message_record"

    const-string v5, "android.chre.flags.bug_fix_remove_exit_call_in_hal"

    const-string v6, "android.chre.flags.efw_xport_in_context_hub"

    const-string v7, "android.chre.flags.efw_xport_rewind_on_error"

    const-string v8, "android.chre.flags.fix_api_check"

    const-string v9, "android.chre.flags.hal_handle_nanoapp_query_test_mode"

    const-string v10, "android.chre.flags.offload_api"

    const-string v11, "android.chre.flags.offload_implementation"

    const-string v12, "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

    const-string v13, "android.chre.flags.reduce_locking_context_hub_transaction_manager"

    const-string v14, "android.chre.flags.refactor_hal_xport_agnostic"

    const-string v15, "android.chre.flags.reliable_message"

    const-string v16, "android.chre.flags.reliable_message_duplicate_detection_service"

    const-string v17, "android.chre.flags.reliable_message_retry_support_service"

    const-string v18, "android.chre.flags.reliable_message_test_mode_behavior"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/chre/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/chre/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist abortIfNoContextHubFound()Z
    .registers 3

    .line 22
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.chre.flags.abort_if_no_context_hub_found"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist btSocketHalSupported()Z
    .registers 3

    .line 29
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.chre.flags.bt_socket_hal_supported"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bugFixHalReliableMessageRecord()Z
    .registers 3

    .line 36
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.chre.flags.bug_fix_hal_reliable_message_record"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist bugFixRemoveExitCallInHal()Z
    .registers 3

    .line 43
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.chre.flags.bug_fix_remove_exit_call_in_hal"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist efwXportInContextHub()Z
    .registers 3

    .line 50
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.chre.flags.efw_xport_in_context_hub"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist efwXportRewindOnError()Z
    .registers 3

    .line 57
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.chre.flags.efw_xport_rewind_on_error"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixApiCheck()Z
    .registers 3

    .line 64
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.chre.flags.fix_api_check"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    const-string v17, "android.chre.flags.reliable_message_test_mode_behavior"

    const-string v18, "android.chre.flags.remove_old_context_hub_apis"

    const-string v1, "android.chre.flags.abort_if_no_context_hub_found"

    const-string v2, "android.chre.flags.bt_socket_hal_supported"

    const-string v3, "android.chre.flags.bug_fix_hal_reliable_message_record"

    const-string v4, "android.chre.flags.bug_fix_remove_exit_call_in_hal"

    const-string v5, "android.chre.flags.efw_xport_in_context_hub"

    const-string v6, "android.chre.flags.efw_xport_rewind_on_error"

    const-string v7, "android.chre.flags.fix_api_check"

    const-string v8, "android.chre.flags.hal_handle_nanoapp_query_test_mode"

    const-string v9, "android.chre.flags.offload_api"

    const-string v10, "android.chre.flags.offload_implementation"

    const-string v11, "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

    const-string v12, "android.chre.flags.reduce_locking_context_hub_transaction_manager"

    const-string v13, "android.chre.flags.refactor_hal_xport_agnostic"

    const-string v14, "android.chre.flags.reliable_message"

    const-string v15, "android.chre.flags.reliable_message_duplicate_detection_service"

    const-string v16, "android.chre.flags.reliable_message_retry_support_service"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/chre/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 159
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/chre/flags/FeatureFlags;>;"
    iget-object v0, p0, Landroid/chre/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist halHandleNanoappQueryTestMode()Z
    .registers 3

    .line 71
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.chre.flags.hal_handle_nanoapp_query_test_mode"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flagName"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Landroid/chre/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 147
    invoke-direct {p0}, Landroid/chre/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public greylist offloadApi()Z
    .registers 3

    .line 78
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.chre.flags.offload_api"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist offloadImplementation()Z
    .registers 3

    .line 85
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.chre.flags.offload_implementation"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reconnectHostEndpointsAfterHalRestart()Z
    .registers 3

    .line 92
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.chre.flags.reconnect_host_endpoints_after_hal_restart"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reduceLockingContextHubTransactionManager()Z
    .registers 3

    .line 99
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.chre.flags.reduce_locking_context_hub_transaction_manager"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist refactorHalXportAgnostic()Z
    .registers 3

    .line 106
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.chre.flags.refactor_hal_xport_agnostic"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessage()Z
    .registers 3

    .line 113
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.chre.flags.reliable_message"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageDuplicateDetectionService()Z
    .registers 3

    .line 120
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_duplicate_detection_service"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageRetrySupportService()Z
    .registers 3

    .line 127
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_retry_support_service"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist reliableMessageTestModeBehavior()Z
    .registers 3

    .line 134
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.chre.flags.reliable_message_test_mode_behavior"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist removeOldContextHubApis()Z
    .registers 3

    .line 141
    new-instance v0, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/chre/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.chre.flags.remove_old_context_hub_apis"

    invoke-virtual {p0, v1, v0}, Landroid/chre/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
