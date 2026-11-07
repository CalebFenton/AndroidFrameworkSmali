.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Initial"
.end annotation


# instance fields
.field private blacklist mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

.field final synthetic blacklist this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1360
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$ExceptionHandler;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)V

    return-void
.end method

.method private blacklist reset()V
    .registers 2

    .line 1365
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->tearDown()V

    .line 1366
    return-void
.end method


# virtual methods
.method public blacklist enterState()V
    .registers 5

    .line 1370
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    if-nez v0, :cond_15

    .line 1371
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "mInitialSetupData is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1372
    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    .line 1371
    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 1373
    return-void

    .line 1376
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->reset()V

    .line 1378
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    .line 1379
    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v1, v1, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    .line 1380
    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeSessionId(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)I

    move-result v3

    .line 1378
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$smsetupAlarmReceiver(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;I)V

    .line 1384
    :try_start_31
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$fgetmIkeConnectionCtrl(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;)Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setUp()V

    .line 1387
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_41
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_31 .. :try_end_41} :catch_42

    .line 1390
    goto :goto_48

    .line 1388
    :catch_42
    move-exception v0

    .line 1389
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    invoke-static {v1, v0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->-$$Nest$mhandleIkeFatalError(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;Ljava/lang/Exception;)V

    .line 1391
    .end local v0    # "e":Landroid/net/ipsec/ike/exceptions/IkeException;
    :goto_48
    return-void
.end method

.method public blacklist exitState()V
    .registers 2

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 1415
    return-void
.end method

.method protected blacklist getMetricsStateCode()I
    .registers 2

    .line 1419
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist processStateMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 1399
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_26

    .line 1408
    :pswitch_6
    const/4 v0, 0x0

    return v0

    .line 1401
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v0, v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeInit:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;->setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V

    .line 1402
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->mCreateIkeLocalIkeInit:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$CreateIkeLocalIkeInit;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1403
    return v1

    .line 1405
    :pswitch_1b
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->this$0:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/net/ipsec/ike/utils/State;

    invoke-virtual {v0, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;->transitionTo(Lcom/android/internal/net/ipsec/ike/utils/IState;)V

    .line 1406
    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x18f
        :pswitch_1b
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist setIkeSetupData(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;)V
    .registers 2
    .param p1, "setupData"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 1394
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$Initial;->mInitialSetupData:Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$InitialSetupData;

    .line 1395
    return-void
.end method
