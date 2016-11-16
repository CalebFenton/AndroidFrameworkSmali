.class Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/concurrent/ForkJoinWorkerThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

.field final synthetic val$pool:Ljava/util/concurrent/ForkJoinPool;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;Ljava/util/concurrent/ForkJoinPool;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;
    .param p2, "val$pool"    # Ljava/util/concurrent/ForkJoinPool;

    #@0
    .prologue
    .line 3542
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->this$1:Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    #@2
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava/util/concurrent/ForkJoinPool;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 3543
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->run()Ljava/util/concurrent/ForkJoinWorkerThread;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/util/concurrent/ForkJoinWorkerThread;
    .locals 2

    #@0
    .prologue
    .line 3544
    new-instance v0, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;

    #@2
    .line 3545
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory$1;->val$pool:Ljava/util/concurrent/ForkJoinPool;

    #@4
    .line 3544
    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;-><init>(Ljava/util/concurrent/ForkJoinPool;)V

    #@7
    return-object v0
.end method
