.class Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;->newRegularWithACC(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/concurrent/ForkJoinWorkerThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$pool:Ljava/util/concurrent/ForkJoinPool;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .registers 2

    .line 1025
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 1025
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->run()Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/concurrent/ForkJoinWorkerThread;
    .registers 6

    .line 1027
    new-instance v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory$1;->val$pool:Ljava/util/concurrent/ForkJoinPool;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/concurrent/ForkJoinWorkerThread;-><init>(Ljava/lang/ThreadGroup;Ljava/util/concurrent/ForkJoinPool;ZZ)V

    return-object v0
.end method
