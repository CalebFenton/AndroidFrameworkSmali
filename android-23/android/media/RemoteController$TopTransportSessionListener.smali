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
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor <init>(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    #@0
    .prologue
    .line 713
    iput-object p1, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$TopTransportSessionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/RemoteController$TopTransportSessionListener;-><init>(Landroid/media/RemoteController;)V

    #@3
    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 718
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v4

    #@4
    .line 719
    .local v4, "size":I
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    .line 720
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/media/session/MediaController;

    #@d
    .line 721
    .local v0, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    #@10
    move-result-wide v2

    #@11
    .line 724
    .local v2, "flags":J
    const-wide/16 v6, 0x2

    #@13
    and-long/2addr v6, v2

    #@14
    const-wide/16 v8, 0x0

    #@16
    cmp-long v5, v6, v8

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 725
    iget-object v5, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    #@1c
    invoke-static {v5, v0}, Landroid/media/RemoteController;->-wrap9(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V

    #@1f
    .line 726
    return-void

    #@20
    .line 719
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 729
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    :cond_1
    iget-object v5, p0, Landroid/media/RemoteController$TopTransportSessionListener;->this$0:Landroid/media/RemoteController;

    #@25
    const/4 v6, 0x0

    #@26
    invoke-static {v5, v6}, Landroid/media/RemoteController;->-wrap9(Landroid/media/RemoteController;Landroid/media/session/MediaController;)V

    #@29
    .line 717
    return-void
.end method
