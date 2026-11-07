.class Landroid/media/internal/guava_common/util/concurrent/MoreExecutors$Application;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist addShutdownHook(Ljava/lang/Thread;)V
    .registers 2

    .line 226
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method
