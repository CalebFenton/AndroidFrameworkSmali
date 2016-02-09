.class final Ljava/util/concurrent/ForkJoinPool$EmptyTask;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 545
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    #@3
    const/high16 v0, -0x10000000

    #@5
    iput v0, p0, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->status:I

    #@7
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    #@0
    .prologue
    .line 548
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 546
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->getRawResult()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    #@0
    .prologue
    .line 546
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 547
    check-cast p1, Ljava/lang/Void;

    #@2
    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool$EmptyTask;->setRawResult(Ljava/lang/Void;)V

    #@5
    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 547
    return-void
.end method
