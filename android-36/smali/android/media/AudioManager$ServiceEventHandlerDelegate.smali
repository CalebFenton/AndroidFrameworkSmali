.class Landroid/media/AudioManager$ServiceEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceEventHandlerDelegate"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 5
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4407
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4409
    if-nez p2, :cond_13

    .line 4410
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-nez v0, :cond_17

    .line 4411
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_17

    .line 4414
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_13
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 4417
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_17
    :goto_17
    if-eqz v1, :cond_21

    .line 4419
    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;

    invoke-direct {v0, p0, v1, p1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_24

    .line 4458
    :cond_21
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 4460
    :goto_24
    return-void
.end method


# virtual methods
.method greylist-max-o getHandler()Landroid/os/Handler;
    .registers 2

    .line 4463
    iget-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
