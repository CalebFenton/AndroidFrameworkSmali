.class final Landroid/media/MediaRouter$Static$Client;
.super Landroid/media/IMediaRouterClient$Stub;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$Static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$Static;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaRouter$Static;

    #@0
    .prologue
    .line 573
    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    #@2
    invoke-direct {p0}, Landroid/media/IMediaRouterClient$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 576
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Landroid/media/MediaRouter$Static$Client$1;

    #@6
    invoke-direct {v1, p0}, Landroid/media/MediaRouter$Static$Client$1;-><init>(Landroid/media/MediaRouter$Static$Client;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 575
    return-void
.end method
