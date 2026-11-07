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
.field volatile greylist-max-o next:Ljava/util/concurrent/FutureTask$WaitNode;

.field volatile greylist-max-o thread:Ljava/lang/Thread;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    return-void
.end method
