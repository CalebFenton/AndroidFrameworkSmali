.class Landroid/media/MediaRouter$Static$Client$1;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$Static$Client;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/MediaRouter$Static$Client;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static$Client;)V
    .locals 0
    .param p1, "this$2"    # Landroid/media/MediaRouter$Static$Client;

    #@0
    .prologue
    .line 576
    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client$1;->this$2:Landroid/media/MediaRouter$Static$Client;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 579
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$2:Landroid/media/MediaRouter$Static$Client;

    #@2
    iget-object v1, p0, Landroid/media/MediaRouter$Static$Client$1;->this$2:Landroid/media/MediaRouter$Static$Client;

    #@4
    iget-object v1, v1, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    #@6
    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 580
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$2:Landroid/media/MediaRouter$Static$Client;

    #@c
    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    #@e
    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    #@11
    .line 578
    :cond_0
    return-void
.end method
