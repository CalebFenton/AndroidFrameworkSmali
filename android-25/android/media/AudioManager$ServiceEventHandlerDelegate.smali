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
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2134
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2136
    if-nez p2, :cond_1

    #@8
    .line 2137
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    #@e
    .line 2138
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@11
    move-result-object v0

    #@12
    .line 2144
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    #@14
    .line 2146
    new-instance v1, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;

    #@16
    invoke-direct {v1, p0, v0}, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;)V

    #@19
    iput-object v1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@1b
    .line 2134
    :goto_1
    return-void

    #@1c
    .line 2141
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1f
    move-result-object v0

    #@20
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@21
    .line 2174
    :cond_2
    iput-object v1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@23
    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 2179
    iget-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method
