.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;
.super Landroid/media/session/IActiveSessionsListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;


# direct methods
.method public static synthetic blacklist $r8$lambda$v-zQmMXFQ9fkWva-bGATn7CMvwg(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->lambda$onActiveSessionsChanged$0(Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1267
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-direct {p0}, Landroid/media/session/IActiveSessionsListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onActiveSessionsChanged$0(Ljava/util/List;)V
    .registers 3
    .param p1, "tokens"    # Ljava/util/List;

    .line 1272
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$mcallOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onActiveSessionsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    .line 1270
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1271
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-$$Nest$fgetmExecutor(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1272
    .local v0, "executor":Ljava/util/concurrent/Executor;
    new-instance v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1274
    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    :cond_16
    return-void
.end method
