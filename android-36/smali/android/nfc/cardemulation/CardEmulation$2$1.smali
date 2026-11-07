.class Landroid/nfc/cardemulation/CardEmulation$2$1;
.super Ljava/lang/Object;
.source "CardEmulation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/cardemulation/CardEmulation$2;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/nfc/cardemulation/CardEmulation$2;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$XHDPBlgybOp8G5Ubh9yCvH7BR4s(Landroid/nfc/cardemulation/CardEmulation$2$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/nfc/cardemulation/CardEmulation$2$1;->lambda$run$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation$2;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Landroid/nfc/cardemulation/CardEmulation$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1516
    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$2$1;->this$1:Landroid/nfc/cardemulation/CardEmulation$2;

    iput-object p2, p0, Landroid/nfc/cardemulation/CardEmulation$2$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$run$0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1522
    sget-object v0, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$2$1;->this$1:Landroid/nfc/cardemulation/CardEmulation$2;

    iget-object v1, v1, Landroid/nfc/cardemulation/CardEmulation$2;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v1, v1, Landroid/nfc/cardemulation/CardEmulation;->mINfcEventCallback:Landroid/nfc/INfcEventCallback;

    invoke-interface {v0, v1}, Landroid/nfc/INfcCardEmulation;->registerNfcEventCallback(Landroid/nfc/INfcEventCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 1519
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$2$1;->this$1:Landroid/nfc/cardemulation/CardEmulation$2;

    iget-object v0, v0, Landroid/nfc/cardemulation/CardEmulation$2;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_24

    .line 1520
    :try_start_9
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$2$1;->this$1:Landroid/nfc/cardemulation/CardEmulation$2;

    iget-object v1, v1, Landroid/nfc/cardemulation/CardEmulation$2;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 1521
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/CardEmulation$2$1$$ExternalSyntheticLambda0;-><init>(Landroid/nfc/cardemulation/CardEmulation$2$1;)V

    invoke-static {v1}, Landroid/nfc/cardemulation/CardEmulation;->callService(Landroid/nfc/cardemulation/CardEmulation$ServiceCall;)V

    .line 1524
    :cond_1f
    monitor-exit v0

    .line 1527
    goto :goto_2c

    .line 1524
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    .end local p0    # "this":Landroid/nfc/cardemulation/CardEmulation$2$1;
    :try_start_23
    throw v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 1525
    .restart local p0    # "this":Landroid/nfc/cardemulation/CardEmulation$2$1;
    :catchall_24
    move-exception v0

    .line 1526
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$2$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1528
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2c
    return-void
.end method
