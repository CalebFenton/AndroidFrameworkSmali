.class Landroid/nfc/cardemulation/CardEmulation$2;
.super Ljava/lang/Object;
.source "CardEmulation.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/cardemulation/CardEmulation;->linkToNfcDeath()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/nfc/cardemulation/CardEmulation;


# direct methods
.method constructor blacklist <init>(Landroid/nfc/cardemulation/CardEmulation;)V
    .registers 2
    .param p1, "this$0"    # Landroid/nfc/cardemulation/CardEmulation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1508
    iput-object p1, p0, Landroid/nfc/cardemulation/CardEmulation$2;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 5

    .line 1511
    iget-object v0, p0, Landroid/nfc/cardemulation/CardEmulation$2;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fgetmNfcEventCallbacks(Landroid/nfc/cardemulation/CardEmulation;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1512
    :try_start_7
    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation$2;->this$0:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->-$$Nest$fputmDeathRecipient(Landroid/nfc/cardemulation/CardEmulation;Landroid/os/IBinder$DeathRecipient;)V

    .line 1513
    sput-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    .line 1514
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_24

    .line 1515
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1516
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/nfc/cardemulation/CardEmulation$2$1;

    invoke-direct {v1, p0, v0}, Landroid/nfc/cardemulation/CardEmulation$2$1;-><init>(Landroid/nfc/cardemulation/CardEmulation$2;Landroid/os/Handler;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1530
    return-void

    .line 1514
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method
