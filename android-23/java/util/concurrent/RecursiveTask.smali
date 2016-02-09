.class public abstract Ljava/util/concurrent/RecursiveTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "RecursiveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d692599075496L


# instance fields
.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected final exec()Z
    .locals 1

    #@0
    .prologue
    .line 65
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/RecursiveTask;->compute()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Ljava/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    #@6
    .line 66
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method protected final setRawResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "this":Ljava/util/concurrent/RecursiveTask;, "Ljava/util/concurrent/RecursiveTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/RecursiveTask;->result:Ljava/lang/Object;

    #@2
    .line 57
    return-void
.end method
