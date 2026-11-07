.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# static fields
.field public static final greylist-max-o APPLICATION_INFO_CHANGED:I = 0x9c

.field public static final greylist-max-o ATTACH_AGENT:I = 0x9b

.field public static final blacklist ATTACH_STARTUP_AGENTS:I = 0xa2

.field public static final greylist-max-o BIND_APPLICATION:I = 0x6e

.field public static final greylist BIND_SERVICE:I = 0x79

.field public static final greylist-max-o CLEAN_UP_CONTEXT:I = 0x77

.field public static final greylist-max-o CONFIGURATION_CHANGED:I = 0x76

.field public static final greylist-max-o CREATE_BACKUP_AGENT:I = 0x80

.field public static final greylist CREATE_SERVICE:I = 0x72

.field public static final greylist-max-o DESTROY_BACKUP_AGENT:I = 0x81

.field public static final greylist-max-o DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final greylist-max-o DUMP_ACTIVITY:I = 0x88

.field public static final blacklist DUMP_GFXINFO:I = 0xa5

.field public static final greylist-max-o DUMP_HEAP:I = 0x87

.field public static final greylist DUMP_PROVIDER:I = 0x8d

.field public static final blacklist DUMP_RESOURCES:I = 0xa6

.field public static final greylist-max-o DUMP_SERVICE:I = 0x7b

.field public static final greylist ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final greylist-max-o EXECUTE_TRANSACTION:I = 0x9f

.field public static final greylist EXIT_APPLICATION:I = 0x6f

.field public static final blacklist FINISH_INSTRUMENTATION_WITHOUT_RESTART:I = 0xab

.field public static final greylist GC_WHEN_IDLE:I = 0x78

.field public static final greylist INSTALL_PROVIDER:I = 0x91

.field public static final blacklist INSTRUMENT_WITHOUT_RESTART:I = 0xaa

.field public static final greylist-max-o LOCAL_VOICE_INTERACTION_STARTED:I = 0x9a

.field public static final greylist-max-o LOW_MEMORY:I = 0x7c

.field public static final blacklist ON_NEW_SCENE_TRANSITION_INFO:I = 0x92

.field public static final blacklist PING:I = 0xa8

.field public static final greylist-max-o PROFILER_CONTROL:I = 0x7f

.field public static final blacklist PURGE_RESOURCES:I = 0xa1

.field public static final greylist RECEIVER:I = 0x71

.field public static final greylist-max-o RELAUNCH_ACTIVITY:I = 0xa0

.field public static final greylist REMOVE_PROVIDER:I = 0x83

.field public static final greylist-max-o REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final greylist-max-o RUN_ISOLATED_ENTRY_POINT:I = 0x9e

.field public static final greylist SCHEDULE_CRASH:I = 0x86

.field public static final greylist SERVICE_ARGS:I = 0x73

.field public static final blacklist SET_CONTENT_CAPTURE_OPTIONS_CALLBACK:I = 0xa4

.field public static final greylist-max-o SET_CORE_SETTINGS:I = 0x8a

.field public static final greylist-max-o SLEEPING:I = 0x89

.field public static final greylist-max-o START_BINDER_TRACKING:I = 0x96

.field public static final greylist-max-o STOP_BINDER_TRACKING_AND_DUMP:I = 0x97

.field public static final greylist STOP_SERVICE:I = 0x74

.field public static final greylist-max-o SUICIDE:I = 0x82

.field public static final blacklist TIMEOUT_SERVICE:I = 0xa7

.field public static final blacklist TIMEOUT_SERVICE_FOR_TYPE:I = 0xac

.field public static final greylist-max-o TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final greylist UNBIND_SERVICE:I = 0x7a

.field public static final greylist-max-o UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final greylist-max-o UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b

.field public static final blacklist UPDATE_UI_TRANSLATION_STATE:I = 0xa3


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2403
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o codeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "code"    # I

    .line 2528
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 2532
    const-wide/16 v1, -0x1

    .line 2536
    .local v1, "debugStoreId":J
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v3

    .line 2537
    .local v3, "shouldLogLongMessage":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2538
    .local v4, "messageStartUptimeMs":J
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x40

    packed-switch v0, :pswitch_data_550

    :pswitch_14
    goto/16 :goto_522

    .line 2677
    :pswitch_16
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceTimeoutForType: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2681
    :cond_35
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v6, v7, v8}, Landroid/app/ActivityThread;->-$$Nest$mhandleTimeoutServiceForType(Landroid/app/ActivityThread;Landroid/os/IBinder;II)V

    .line 2682
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2683
    goto/16 :goto_522

    .line 2850
    :pswitch_47
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleFinishInstrumentationWithoutRestart(Landroid/app/ActivityThread;)V

    goto/16 :goto_522

    .line 2847
    :pswitch_4e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$AppBindData;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleInstrumentWithoutRestart(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2848
    goto/16 :goto_522

    .line 2674
    :pswitch_59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/RemoteCallback;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2675
    goto/16 :goto_522

    .line 2666
    :pswitch_62
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceTimeout: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2668
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2667
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2670
    :cond_85
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v6, v7}, Landroid/app/ActivityThread;->-$$Nest$mhandleTimeoutService(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V

    .line 2671
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2672
    goto/16 :goto_522

    .line 2748
    :pswitch_95
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpResources(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpResourcesData;)V

    .line 2749
    goto/16 :goto_522

    .line 2703
    :pswitch_a0
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpGfxInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2704
    goto/16 :goto_522

    .line 2844
    :pswitch_ab
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetContentCaptureOptionsCallback(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2845
    goto/16 :goto_522

    .line 2838
    :pswitch_b6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2839
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Landroid/view/translation/TranslationSpec;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v10, Landroid/view/translation/TranslationSpec;

    iget-object v11, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v12, Landroid/view/translation/UiTranslationSpec;

    invoke-static/range {v6 .. v12}, Landroid/app/ActivityThread;->-$$Nest$mupdateUiTranslationState(Landroid/app/ActivityThread;Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 2842
    goto/16 :goto_522

    .line 2835
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_dd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleAttachStartupAgents(Ljava/lang/String;)V

    .line 2836
    goto/16 :goto_522

    .line 2832
    :pswitch_e6
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2833
    goto/16 :goto_522

    .line 2829
    :pswitch_ed
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    .line 2830
    goto/16 :goto_522

    .line 2818
    :pswitch_f8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/servertransaction/ClientTransaction;

    .line 2820
    .local v6, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-static {}, Landroid/app/servertransaction/ClientTransactionListenerController;->getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;

    move-result-object v7

    .line 2821
    .local v7, "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    invoke-virtual {v7}, Landroid/app/servertransaction/ClientTransactionListenerController;->onClientTransactionStarted()V

    .line 2823
    :try_start_104
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmTransactionExecutor(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/servertransaction/TransactionExecutor;->execute(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_10d
    .catchall {:try_start_104 .. :try_end_10d} :catchall_113

    .line 2825
    invoke-virtual {v7}, Landroid/app/servertransaction/ClientTransactionListenerController;->onClientTransactionFinished()V

    .line 2826
    nop

    .line 2827
    goto/16 :goto_522

    .line 2825
    :catchall_113
    move-exception v0

    invoke-virtual {v7}, Landroid/app/servertransaction/ClientTransactionListenerController;->onClientTransactionFinished()V

    .line 2826
    throw v0

    .line 2814
    .end local v6    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v7    # "controller":Landroid/app/servertransaction/ClientTransactionListenerController;
    :pswitch_118
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v7, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    invoke-static {v0, v6, v7}, Landroid/app/ActivityThread;->-$$Nest$mhandleRunIsolatedEntryPoint(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2816
    goto/16 :goto_522

    .line 2811
    :pswitch_12f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mapplyPendingApplicationInfoChanges(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 2812
    goto/16 :goto_522

    .line 2806
    :pswitch_13a
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 2807
    .local v0, "app":Landroid/app/Application;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-eqz v0, :cond_148

    iget-object v6, v0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    :cond_148
    invoke-static {v7, v6}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    .line 2808
    goto/16 :goto_522

    .line 2802
    .end local v0    # "app":Landroid/app/Application;
    :pswitch_14d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v7, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0, v6, v7}, Landroid/app/ActivityThread;->-$$Nest$mhandleLocalVoiceInteractionStarted(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 2804
    goto/16 :goto_522

    .line 2799
    :pswitch_164
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopBinderTrackingAndDump(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V

    .line 2800
    goto/16 :goto_522

    .line 2796
    :pswitch_16f
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleStartBinderTracking(Landroid/app/ActivityThread;)V

    .line 2797
    goto/16 :goto_522

    .line 2793
    :pswitch_176
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleEnterAnimationComplete(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2794
    goto/16 :goto_522

    .line 2788
    :pswitch_181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2790
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;>;"
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityThread;->onNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 2791
    goto/16 :goto_522

    .line 2777
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;>;"
    :pswitch_194
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "providerInstall: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2779
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2778
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2782
    :cond_1b7
    :try_start_1b7
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_1c0
    .catchall {:try_start_1b7 .. :try_end_1c0} :catchall_1c6

    .line 2784
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2785
    nop

    .line 2786
    goto/16 :goto_522

    .line 2784
    :catchall_1c6
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2785
    throw v0

    .line 2774
    :pswitch_1cb
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v7, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v7, v8

    :goto_1d7
    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 2775
    goto/16 :goto_522

    .line 2768
    :pswitch_1dc
    const-string/jumbo v0, "handleRequestAssistContextExtras"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2770
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    .line 2771
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2772
    goto/16 :goto_522

    .line 2765
    :pswitch_1f0
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {v0, v6, v8}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 2766
    goto/16 :goto_522

    .line 2754
    :pswitch_1fb
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpProvider(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2755
    goto/16 :goto_522

    .line 2762
    :pswitch_206
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    .line 2763
    goto/16 :goto_522

    .line 2757
    :pswitch_211
    const-string/jumbo v0, "setCoreSettings"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2758
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleSetCoreSettings(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 2759
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2760
    goto/16 :goto_522

    .line 2751
    :pswitch_225
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpActivity(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2752
    goto/16 :goto_522

    .line 2745
    :pswitch_230
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v0}, Landroid/app/ActivityThread;->handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V

    .line 2746
    goto/16 :goto_522

    .line 2737
    :pswitch_239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2738
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2739
    .local v6, "message":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 2740
    .local v7, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2741
    iget-object v8, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v6, v9, v7}, Landroid/app/ActivityThread;->-$$Nest$mthrowRemoteServiceException(Landroid/app/ActivityThread;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2742
    goto/16 :goto_522

    .line 2732
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    :pswitch_251
    const-string v0, "broadcastPackage"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2733
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 2734
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2735
    goto/16 :goto_522

    .line 2727
    :pswitch_266
    const-string/jumbo v0, "providerRemove"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2728
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v0, v6}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 2729
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2730
    goto/16 :goto_522

    .line 2724
    :pswitch_27a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2725
    goto/16 :goto_522

    .line 2719
    :pswitch_283
    const-string v0, "backupDestroyAgent"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2720
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleDestroyBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2721
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2722
    goto/16 :goto_522

    .line 2714
    :pswitch_296
    const-string v0, "backupCreateAgent"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2715
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateBackupAgent(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 2716
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2717
    goto/16 :goto_522

    .line 2711
    :pswitch_2a9
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_2b0

    goto :goto_2b1

    :cond_2b0
    move v7, v8

    :goto_2b1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ProfilerInfo;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v7, v6, v8}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 2712
    goto/16 :goto_522

    .line 2706
    :pswitch_2bc
    const-string/jumbo v0, "lowMemory"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2707
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 2708
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2709
    goto/16 :goto_522

    .line 2700
    :pswitch_2cc
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleDumpService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    .line 2701
    goto/16 :goto_522

    .line 2627
    :pswitch_2d7
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2fa

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceUnbind: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2629
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2631
    :cond_2fa
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleUnbindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 2632
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2633
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2634
    goto/16 :goto_522

    .line 2607
    :pswitch_30d
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_330

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceBind: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2609
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2608
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2611
    :cond_330
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityThread$BindServiceData;

    .line 2612
    .local v6, "bindData":Landroid/app/ActivityThread$BindServiceData;
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_343

    .line 2613
    iget-boolean v0, v6, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    iget-object v7, v6, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 2614
    invoke-static {v0, v7}, Lcom/android/internal/os/DebugStore;->recordServiceBind(ZLandroid/content/Intent;)J

    move-result-wide v1

    .line 2617
    :cond_343
    :try_start_343
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    :try_end_348
    .catchall {:try_start_343 .. :try_end_348} :catchall_357

    .line 2619
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2620
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_355

    .line 2621
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2622
    const/4 v3, 0x0

    .line 2625
    :cond_355
    goto/16 :goto_522

    .line 2619
    :catchall_357
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2620
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_365

    .line 2621
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2622
    const/4 v3, 0x0

    .line 2624
    :cond_365
    throw v0

    .line 2692
    .end local v6    # "bindData":Landroid/app/ActivityThread$BindServiceData;
    :pswitch_366
    const-string v0, "gcWhenIdle"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2694
    :try_start_36b
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V
    :try_end_370
    .catchall {:try_start_36b .. :try_end_370} :catchall_376

    .line 2696
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2697
    nop

    .line 2698
    goto/16 :goto_522

    .line 2696
    :catchall_376
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2697
    throw v0

    .line 2688
    :pswitch_37b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 2689
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v6, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v7, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v8, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    goto/16 :goto_522

    .line 2685
    .end local v0    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_38a
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmConfigurationController(Landroid/app/ActivityThread;)Landroid/app/ConfigurationController;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    invoke-virtual {v0, v6}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2686
    goto/16 :goto_522

    .line 2657
    :pswitch_399
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3bc

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceStop: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2659
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2658
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2661
    :cond_3bc
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleStopService(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 2662
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->schedulePurgeIdler()V

    .line 2663
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2664
    goto/16 :goto_522

    .line 2636
    :pswitch_3cf
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_3f2

    .line 2637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceStart: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2638
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2637
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2640
    :cond_3f2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityThread$ServiceArgsData;

    .line 2641
    .local v6, "serviceData":Landroid/app/ActivityThread$ServiceArgsData;
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_407

    .line 2642
    iget v0, v6, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    iget v7, v6, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget-object v8, v6, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-static {v0, v7, v8}, Lcom/android/internal/os/DebugStore;->recordServiceOnStart(IILandroid/content/Intent;)J

    move-result-wide v1

    .line 2647
    :cond_407
    :try_start_407
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleServiceArgs(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    :try_end_40c
    .catchall {:try_start_407 .. :try_end_40c} :catchall_41b

    .line 2649
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2650
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_419

    .line 2651
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2652
    const/4 v3, 0x0

    .line 2655
    :cond_419
    goto/16 :goto_522

    .line 2649
    :catchall_41b
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2650
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_429

    .line 2651
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2652
    const/4 v3, 0x0

    .line 2654
    :cond_429
    throw v0

    .line 2587
    .end local v6    # "serviceData":Landroid/app/ActivityThread$ServiceArgsData;
    :pswitch_42a
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_44d

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceCreate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2589
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2588
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2591
    :cond_44d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityThread$CreateServiceData;

    .line 2592
    .local v6, "createServiceData":Landroid/app/ActivityThread$CreateServiceData;
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_45e

    .line 2593
    iget-object v0, v6, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    invoke-static {v0}, Lcom/android/internal/os/DebugStore;->recordServiceCreate(Landroid/content/pm/ServiceInfo;)J

    move-result-wide v1

    .line 2597
    :cond_45e
    :try_start_45e
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleCreateService(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    :try_end_463
    .catchall {:try_start_45e .. :try_end_463} :catchall_472

    .line 2599
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2600
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_470

    .line 2601
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2602
    const/4 v3, 0x0

    .line 2605
    :cond_470
    goto/16 :goto_522

    .line 2599
    :catchall_472
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2600
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_480

    .line 2601
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2602
    const/4 v3, 0x0

    .line 2604
    :cond_480
    throw v0

    .line 2559
    .end local v6    # "createServiceData":Landroid/app/ActivityThread$CreateServiceData;
    :pswitch_481
    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4b1

    .line 2560
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    .line 2561
    .local v0, "rec":Landroid/app/ActivityThread$ReceiverData;
    iget-object v6, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_4ac

    .line 2562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastReceiveComp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2563
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2562
    invoke-static {v9, v10, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_4b1

    .line 2565
    :cond_4ac
    const-string v6, "broadcastReceiveComp"

    invoke-static {v9, v10, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2569
    .end local v0    # "rec":Landroid/app/ActivityThread$ReceiverData;
    :cond_4b1
    :goto_4b1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityThread$ReceiverData;

    .line 2570
    .local v6, "receiverData":Landroid/app/ActivityThread$ReceiverData;
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_4c6

    .line 2571
    iget-object v0, v6, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    .line 2573
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 2572
    invoke-static {v0, v7}, Lcom/android/internal/os/DebugStore;->recordBroadcastReceive(Landroid/content/Intent;I)J

    move-result-wide v1

    .line 2577
    :cond_4c6
    :try_start_4c6
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v6}, Landroid/app/ActivityThread;->-$$Nest$mhandleReceiver(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    :try_end_4cb
    .catchall {:try_start_4c6 .. :try_end_4cb} :catchall_4d9

    .line 2579
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2580
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_4d8

    .line 2581
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2582
    const/4 v3, 0x0

    .line 2585
    :cond_4d8
    goto :goto_522

    .line 2579
    :catchall_4d9
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2580
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_4e7

    .line 2581
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2582
    const/4 v3, 0x0

    .line 2584
    :cond_4e7
    throw v0

    .line 2553
    .end local v6    # "receiverData":Landroid/app/ActivityThread$ReceiverData;
    :pswitch_4e8
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_4f5

    .line 2554
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 2556
    :cond_4f5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2557
    goto :goto_522

    .line 2540
    :pswitch_4fd
    const-string v0, "bindApplication"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2541
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_50c

    .line 2543
    invoke-static {}, Lcom/android/internal/os/DebugStore;->recordHandleBindApplication()J

    move-result-wide v1

    .line 2545
    :cond_50c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$AppBindData;

    .line 2546
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v6, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v6, v0}, Landroid/app/ActivityThread;->-$$Nest$mhandleBindApplication(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 2547
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v6

    if-eqz v6, :cond_51e

    .line 2548
    invoke-static {v1, v2}, Lcom/android/internal/os/DebugStore;->recordEventEnd(J)V

    .line 2550
    :cond_51e
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 2551
    nop

    .line 2853
    .end local v0    # "data":Landroid/app/ActivityThread$AppBindData;
    :goto_522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 2854
    .local v6, "messageElapsedTimeMs":J
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2855
    .local v0, "obj":Ljava/lang/Object;
    instance-of v8, v0, Lcom/android/internal/os/SomeArgs;

    if-eqz v8, :cond_533

    .line 2856
    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2859
    :cond_533
    if-eqz v3, :cond_54e

    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetLONG_MESSAGE_THRESHOLD_MS()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_54e

    .line 2861
    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6, v7}, Lcom/android/internal/os/DebugStore;->recordLongLooperMessage(ILjava/lang/String;J)V

    .line 2864
    :cond_54e
    return-void

    nop

    :pswitch_data_550
    .packed-switch 0x6e
        :pswitch_4fd
        :pswitch_4e8
        :pswitch_14
        :pswitch_481
        :pswitch_42a
        :pswitch_3cf
        :pswitch_399
        :pswitch_14
        :pswitch_38a
        :pswitch_37b
        :pswitch_366
        :pswitch_30d
        :pswitch_2d7
        :pswitch_2cc
        :pswitch_2bc
        :pswitch_14
        :pswitch_14
        :pswitch_2a9
        :pswitch_296
        :pswitch_283
        :pswitch_27a
        :pswitch_266
        :pswitch_14
        :pswitch_251
        :pswitch_239
        :pswitch_230
        :pswitch_225
        :pswitch_14
        :pswitch_211
        :pswitch_206
        :pswitch_14
        :pswitch_1fb
        :pswitch_1f0
        :pswitch_1dc
        :pswitch_1cb
        :pswitch_194
        :pswitch_181
        :pswitch_14
        :pswitch_14
        :pswitch_176
        :pswitch_16f
        :pswitch_164
        :pswitch_14
        :pswitch_14
        :pswitch_14d
        :pswitch_13a
        :pswitch_12f
        :pswitch_14
        :pswitch_118
        :pswitch_f8
        :pswitch_ed
        :pswitch_e6
        :pswitch_dd
        :pswitch_b6
        :pswitch_ab
        :pswitch_a0
        :pswitch_95
        :pswitch_62
        :pswitch_59
        :pswitch_14
        :pswitch_4e
        :pswitch_47
        :pswitch_16
    .end packed-switch
.end method
