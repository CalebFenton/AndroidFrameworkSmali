.class public abstract Ljava/util/concurrent/RecursiveTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "RecursiveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x489d692599075496L


# instance fields
.field greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 84
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract whitelist test-api compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected final whitelist test-api exec()Z
    .registers 2

    .line 110
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveTask;->compute()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 99
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    return-object v0
.end method

.method protected final whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    .line 104
    return-void
.end method
