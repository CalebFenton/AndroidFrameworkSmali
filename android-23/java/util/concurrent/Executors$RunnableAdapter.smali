.class final Ljava/util/concurrent/Executors$RunnableAdapter;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunnableAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 418
    .local p0, "this":Ljava/util/concurrent/Executors$RunnableAdapter;, "Ljava/util/concurrent/Executors$RunnableAdapter<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 419
    iput-object p1, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->task:Ljava/lang/Runnable;

    #@5
    .line 420
    iput-object p2, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->result:Ljava/lang/Object;

    #@7
    .line 418
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 423
    .local p0, "this":Ljava/util/concurrent/Executors$RunnableAdapter;, "Ljava/util/concurrent/Executors$RunnableAdapter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->task:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@5
    .line 424
    iget-object v0, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->result:Ljava/lang/Object;

    #@7
    return-object v0
.end method
