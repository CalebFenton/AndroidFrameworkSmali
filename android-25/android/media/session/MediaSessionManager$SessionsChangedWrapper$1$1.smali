.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->onActiveSessionsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

.field final synthetic val$tokens:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    #@0
    .prologue
    .line 339
    .local p2, "val$tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    #@2
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 342
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    #@2
    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    #@4
    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get2(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@7
    move-result-object v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 344
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    .line 345
    .local v0, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    #@11
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@14
    move-result v2

    #@15
    .line 346
    .local v2, "size":I
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@18
    .line 347
    new-instance v4, Landroid/media/session/MediaController;

    #@1a
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    #@1c
    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    #@1e
    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get0(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;

    #@21
    move-result-object v5

    #@22
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    #@24
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Landroid/media/session/MediaSession$Token;

    #@2a
    invoke-direct {v4, v5, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    #@2d
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@30
    .line 346
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 349
    :cond_0
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$2:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    #@35
    iget-object v3, v3, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    #@37
    invoke-static {v3}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get2(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    #@3a
    move-result-object v3

    #@3b
    invoke-interface {v3, v0}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    #@3e
    .line 341
    .end local v0    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaController;>;"
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method
