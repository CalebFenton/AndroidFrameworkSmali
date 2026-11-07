.class Landroid/media/RemoteController$TopTransportSessionListener;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopTransportSessionListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor blacklist <init>(Landroid/media/RemoteController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 467
    iput-object p1, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/RemoteController;Landroid/media/RemoteController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public whitelist onActiveSessionsChanged(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 472
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 473
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_23

    .line 474
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 475
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v3

    .line 478
    .local v3, "flags":J
    const-wide/16 v5, 0x2

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_20

    .line 479
    iget-object v5, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    invoke-static {v5, v2}, Landroid/media/RemoteController;->-$$Nest$mupdateController(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V

    .line 480
    return-void

    .line 473
    .end local v2    # "controller":Landroid/media/session/MediaController;
    .end local v3    # "flags":J
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 483
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/RemoteController;->-$$Nest$mupdateController(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V

    .line 484
    return-void
.end method
