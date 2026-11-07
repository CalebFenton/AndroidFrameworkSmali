.class Landroid/media/MediaDrm$ListenerWithExecutor;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerWithExecutor"
.end annotation


# instance fields
.field private final blacklist mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConsumer(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mConsumer:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/media/MediaDrm$ListenerWithExecutor;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/media/MediaDrm$ListenerArgs;",
            ">;)V"
        }
    .end annotation

    .line 1340
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/MediaDrm$ListenerArgs;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    iput-object p1, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1342
    iput-object p2, p0, Landroid/media/MediaDrm$ListenerWithExecutor;->mConsumer:Ljava/util/function/Consumer;

    .line 1343
    return-void
.end method
