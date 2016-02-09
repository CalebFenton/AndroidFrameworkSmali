.class Landroid/media/AudioManager$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .param p2, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3990
    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 3994
    if-eqz p3, :cond_0

    #@8
    .line 3995
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    .line 4002
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    #@e
    .line 4004
    new-instance v1, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;

    #@10
    invoke-direct {v1, p0, v0, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioDeviceCallback;)V

    #@13
    iput-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@15
    .line 3991
    :goto_1
    return-void

    #@16
    .line 3998
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@19
    move-result-object v0

    #@1a
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1b
    .line 4028
    :cond_1
    iput-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@1d
    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 4033
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method
