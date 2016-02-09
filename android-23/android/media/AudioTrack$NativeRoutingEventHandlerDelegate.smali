.class Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeRoutingEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioTrack;
    .param p2, "track"    # Landroid/media/AudioTrack;
    .param p3, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2386
    iput-object p1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2391
    if-eqz p4, :cond_0

    #@8
    .line 2392
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    .line 2399
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v0, :cond_1

    #@e
    .line 2401
    new-instance v1, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;

    #@10
    invoke-direct {v1, p0, v0, p2, p3}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnRoutingChangedListener;)V

    #@13
    iput-object v1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@15
    .line 2388
    :goto_1
    return-void

    #@16
    .line 2395
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-static {p1}, Landroid/media/AudioTrack;->-get0(Landroid/media/AudioTrack;)Landroid/os/Looper;

    #@19
    move-result-object v0

    #@1a
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1b
    .line 2420
    :cond_1
    iput-object v1, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@1d
    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    #@0
    .prologue
    .line 2425
    iget-object v0, p0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method
