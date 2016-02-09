.class final Ljava/util/concurrent/FutureTask$WaitNode;
.super Ljava/lang/Object;
.source "FutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WaitNode"
.end annotation


# instance fields
.field volatile next:Ljava/util/concurrent/FutureTask$WaitNode;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 327
    .local p0, "this":Ljava/util/concurrent/FutureTask$WaitNode;, "Ljava/util/concurrent/FutureTask<TV;>.WaitNode;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    #@9
    return-void
.end method
