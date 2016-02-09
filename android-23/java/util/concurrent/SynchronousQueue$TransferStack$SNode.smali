.class final Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SNode"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final matchOffset:J

.field private static final nextOffset:J


# instance fields
.field item:Ljava/lang/Object;

.field volatile match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field mode:I

.field volatile next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 260
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 261
    const-class v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@8
    .line 262
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 263
    const-string/jumbo v3, "match"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 262
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->matchOffset:J

    #@17
    .line 264
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    #@19
    .line 265
    const-string/jumbo v3, "next"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v3

    #@20
    .line 264
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v2

    #@24
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 202
    return-void

    #@27
    .line 266
    :catch_0
    move-exception v0

    #@28
    .line 267
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@2a
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 212
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>.SNode;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 213
    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    #@5
    .line 212
    return-void
.end method


# virtual methods
.method casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@0
    .prologue
    .line 217
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>.SNode;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 218
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->nextOffset:J

    #@8
    move-object v1, p0

    #@9
    move-object v4, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 217
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 250
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>.SNode;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method tryCancel()V
    .locals 6

    #@0
    .prologue
    .line 246
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>.SNode;"
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->matchOffset:J

    #@4
    const/4 v4, 0x0

    #@5
    move-object v1, p0

    #@6
    move-object v5, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    .line 245
    return-void
.end method

.method tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 8
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>.SNode;"
    const/4 v7, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 230
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 231
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->UNSAFE:Lsun/misc/Unsafe;

    #@8
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->matchOffset:J

    #@a
    move-object v1, p0

    #@b
    move-object v5, p1

    #@c
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 230
    if-eqz v0, :cond_1

    #@12
    .line 232
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    #@14
    .line 233
    .local v6, "w":Ljava/lang/Thread;
    if-eqz v6, :cond_0

    #@16
    .line 234
    iput-object v4, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    #@18
    .line 235
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@1b
    .line 237
    :cond_0
    return v7

    #@1c
    .line 239
    .end local v6    # "w":Ljava/lang/Thread;
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@1e
    if-ne v0, p1, :cond_2

    #@20
    move v0, v7

    #@21
    :goto_0
    return v0

    #@22
    :cond_2
    const/4 v0, 0x0

    #@23
    goto :goto_0
.end method
