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
.field final synthetic blacklist this$1:Landroid/media/MediaRouter$Static$Client;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter$Static$Client;)V
    .registers 2
    .param p1, "this$1"    # Landroid/media/MediaRouter$Static$Client;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 675
    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 678
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, v1, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-ne v0, v1, :cond_11

    .line 679
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 681
    :cond_11
    return-void
.end method
