.class final Landroid/media/ImageReader$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/ImageReader;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 637
    iput-object p1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    #@2
    .line 638
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    #@7
    .line 637
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 644
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    #@2
    invoke-static {v1}, Landroid/media/ImageReader;->-get2(Landroid/media/ImageReader;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 645
    :try_start_0
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    #@9
    invoke-static {v1}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .local v0, "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    monitor-exit v2

    #@e
    .line 647
    if-eqz v0, :cond_0

    #@10
    .line 648
    iget-object v1, p0, Landroid/media/ImageReader$ListenerHandler;->this$0:Landroid/media/ImageReader;

    #@12
    invoke-interface {v0, v1}, Landroid/media/ImageReader$OnImageAvailableListener;->onImageAvailable(Landroid/media/ImageReader;)V

    #@15
    .line 642
    :cond_0
    return-void

    #@16
    .line 644
    .end local v0    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
.end method
