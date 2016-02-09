.class public Ljava/util/concurrent/SynchronousQueue;
.super Ljava/util/AbstractQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$Transferer;,
        Ljava/util/concurrent/SynchronousQueue$TransferStack;,
        Ljava/util/concurrent/SynchronousQueue$TransferQueue;,
        Ljava/util/concurrent/SynchronousQueue$EmptyIterator;,
        Ljava/util/concurrent/SynchronousQueue$WaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final NCPUS:I

.field static final maxTimedSpins:I

.field static final maxUntimedSpins:I

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L

.field static final spinForTimeoutThreshold:J = 0x3e8L


# instance fields
.field private qlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile transient transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue$Transferer",
            "<TE;>;"
        }
    .end annotation
.end field

.field private waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

.field private waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 156
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v1

    #@8
    sput v1, Ljava/util/concurrent/SynchronousQueue;->NCPUS:I

    #@a
    .line 165
    sget v1, Ljava/util/concurrent/SynchronousQueue;->NCPUS:I

    #@c
    const/4 v2, 0x2

    #@d
    if-ge v1, v2, :cond_0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_0
    sput v1, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    #@12
    .line 172
    sget v1, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    #@14
    mul-int/lit8 v1, v1, 0x10

    #@16
    sput v1, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    #@18
    .line 1179
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    #@1a
    .line 54
    .local v0, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    #@1b
    .line 165
    .end local v0    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/16 v1, 0x20

    #@1d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 825
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    #@4
    .line 824
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    #@0
    .prologue
    .line 834
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 835
    if-eqz p1, :cond_0

    #@5
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;-><init>()V

    #@a
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@c
    .line 834
    return-void

    #@d
    .line 835
    :cond_0
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    #@f
    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;-><init>()V

    #@12
    goto :goto_0
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .param p0, "UNSAFE"    # Lsun/misc/Unsafe;
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 1167
    .local p2, "klazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-wide v2

    #@8
    return-wide v2

    #@9
    .line 1168
    :catch_0
    move-exception v0

    #@a
    .line 1170
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    #@c
    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    #@f
    .line 1171
    .local v1, "error":Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchFieldError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@12
    .line 1172
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1156
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1157
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    #@5
    instance-of v0, v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1158
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@b
    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;-><init>()V

    #@e
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@10
    .line 1155
    :goto_0
    return-void

    #@11
    .line 1160
    :cond_0
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;-><init>()V

    #@16
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@18
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1137
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@2
    instance-of v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@4
    .line 1138
    .local v0, "fair":Z
    if-eqz v0, :cond_0

    #@6
    .line 1139
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    #@c
    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    #@e
    .line 1140
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    #@10
    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    #@13
    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    #@15
    .line 1141
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    #@17
    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    #@1a
    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    #@1c
    .line 1148
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@1f
    .line 1136
    return-void

    #@20
    .line 1144
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    #@22
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@25
    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    #@27
    .line 1145
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    #@29
    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    #@2c
    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    #@2e
    .line 1146
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    #@30
    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    #@33
    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    #@35
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    #@0
    .prologue
    .line 962
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 973
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 995
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1081
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1082
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1083
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1084
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1085
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 1086
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@17
    .line 1087
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1a
    .line 1088
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1090
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 1100
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 1101
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v2

    #@8
    .line 1102
    :cond_0
    if-ne p1, p0, :cond_1

    #@a
    .line 1103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@c
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f
    throw v2

    #@10
    .line 1104
    :cond_1
    const/4 v1, 0x0

    #@11
    .line 1105
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    #@13
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    #@19
    .line 1106
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1107
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1109
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 935
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1039
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/concurrent/SynchronousQueue$EmptyIterator;

    #@2
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    #@1
    .line 882
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 883
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@b
    const-wide/16 v2, 0x0

    #@d
    invoke-virtual {v1, p1, v0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    if-eqz v1, :cond_1

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    #@1
    .line 864
    if-nez p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 865
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@b
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@e
    move-result-wide v2

    #@f
    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 866
    return v1

    #@16
    .line 867
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_2

    #@1c
    .line 868
    const/4 v0, 0x0

    #@1d
    return v0

    #@1e
    .line 869
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    #@20
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@23
    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 1028
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 925
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@2
    const-wide/16 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v4, 0x1

    #@6
    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 911
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@6
    move-result-wide v2

    #@7
    const/4 v4, 0x1

    #@8
    invoke-virtual {v1, v5, v4, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 912
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    #@e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 914
    new-instance v1, Ljava/lang/InterruptedException;

    #@16
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    #@19
    throw v1

    #@1a
    .line 913
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 846
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 847
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@a
    const-wide/16 v2, 0x0

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 848
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@16
    .line 849
    new-instance v0, Ljava/lang/InterruptedException;

    #@18
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 845
    :cond_1
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    #@0
    .prologue
    .line 955
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 984
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1006
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1017
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 945
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v5, 0x0

    #@1
    .line 894
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    #@3
    const-wide/16 v2, 0x0

    #@5
    const/4 v4, 0x0

    #@6
    invoke-virtual {v1, v5, v4, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    .line 895
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@c
    .line 896
    return-object v0

    #@d
    .line 897
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@10
    .line 898
    new-instance v1, Ljava/lang/InterruptedException;

    #@12
    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    #@15
    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1057
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@1
    .line 1069
    array-length v0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 1070
    const/4 v0, 0x0

    #@5
    aput-object v0, p1, v1

    #@7
    .line 1071
    :cond_0
    return-object p1
.end method
