.class final Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/util/concurrent/ForkJoinTask",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final ex:Ljava/lang/Throwable;

.field final hashCode:I

.field next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field final thrower:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;)V
    .locals 2
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "next"    # Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/ForkJoinTask$ExceptionNode;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 406
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;, "Ljava/util/concurrent/ForkJoinTask<TV;>.ExceptionNode;"
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->-get0()Ljava/lang/ref/ReferenceQueue;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@7
    .line 407
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    #@9
    .line 408
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    #@b
    .line 409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    #@15
    .line 410
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    #@1b
    .line 405
    return-void
.end method
