.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;
.super Ljava/lang/Object;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o array:[Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field greylist-max-o cursor:I

.field greylist-max-o lastRet:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1382
    .local p2, "array":[Ljava/util/concurrent/RunnableScheduledFuture;, "[Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    .line 1383
    iput-object p2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    .line 1384
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1387
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1377
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->next()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/Runnable;
    .registers 4

    .line 1391
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 1393
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    iput v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    aget-object v0, v0, v1

    return-object v0

    .line 1392
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 4

    .line 1397
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    if-ltz v0, :cond_13

    .line 1399
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$0:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->remove(Ljava/lang/Object;)Z

    .line 1400
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    .line 1401
    return-void

    .line 1398
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
