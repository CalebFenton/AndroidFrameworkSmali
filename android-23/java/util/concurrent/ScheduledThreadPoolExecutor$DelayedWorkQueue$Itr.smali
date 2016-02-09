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
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field final array:[Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field cursor:I

.field lastRet:I

.field final synthetic this$1:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;[Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 1
    .param p1, "this$1"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/RunnableScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1257
    .local p2, "array":[Ljava/util/concurrent/RunnableScheduledFuture;, "[Ljava/util/concurrent/RunnableScheduledFuture<*>;"
    iput-object p1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$1:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1254
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    #@8
    .line 1255
    const/4 v0, -0x1

    #@9
    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    #@b
    .line 1258
    iput-object p2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@d
    .line 1257
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 1262
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1265
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->next()Ljava/lang/Runnable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public next()Ljava/lang/Runnable;
    .locals 3

    #@0
    .prologue
    .line 1266
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    #@2
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@4
    array-length v1, v1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 1267
    new-instance v0, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1268
    :cond_0
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    #@f
    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    #@11
    .line 1269
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@13
    iget v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->cursor:I

    #@19
    aget-object v0, v0, v1

    #@1b
    return-object v0
.end method

.method public remove()V
    .locals 3

    #@0
    .prologue
    .line 1273
    iget v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 1274
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1275
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->this$1:Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;

    #@c
    iget-object v1, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->array:[Ljava/util/concurrent/RunnableScheduledFuture;

    #@e
    iget v2, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    #@10
    aget-object v1, v1, v2

    #@12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->remove(Ljava/lang/Object;)Z

    #@15
    .line 1276
    const/4 v0, -0x1

    #@16
    iput v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$Itr;->lastRet:I

    #@18
    .line 1272
    return-void
.end method
