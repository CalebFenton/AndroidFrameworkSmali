.class public final Ljdk/internal/ref/CleanerImpl;
.super Ljava/lang/Object;
.source "CleanerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;,
        Ljdk/internal/ref/CleanerImpl$CleanerCleanable;,
        Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;
    }
.end annotation


# static fields
.field private static blacklist cleanerImplAccess:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/ref/Cleaner;",
            "Ljdk/internal/ref/CleanerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist phantomCleanableList:Ljdk/internal/ref/PhantomCleanable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljdk/internal/ref/PhantomCleanable<",
            "*>;"
        }
    .end annotation
.end field

.field final blacklist queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Ljdk/internal/ref/CleanerImpl;->cleanerImplAccess:Ljava/util/function/Function;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljdk/internal/ref/CleanerImpl;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 92
    new-instance v0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;

    invoke-direct {v0}, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;-><init>()V

    iput-object v0, p0, Ljdk/internal/ref/CleanerImpl;->phantomCleanableList:Ljdk/internal/ref/PhantomCleanable;

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Ljdk/internal/ref/CleanerImpl;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 103
    new-instance v0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;

    invoke-direct {v0}, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;-><init>()V

    iput-object v0, p0, Ljdk/internal/ref/CleanerImpl;->phantomCleanableList:Ljdk/internal/ref/PhantomCleanable;

    .line 104
    return-void
.end method

.method static blacklist getCleanerImpl(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;
    .registers 2
    .param p0, "cleaner"    # Ljava/lang/ref/Cleaner;

    .line 84
    sget-object v0, Ljdk/internal/ref/CleanerImpl;->cleanerImplAccess:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdk/internal/ref/CleanerImpl;

    return-object v0
.end method

.method public static blacklist setCleanerImplAccess(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/ref/Cleaner;",
            "Ljdk/internal/ref/CleanerImpl;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p0, "access":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/ref/Cleaner;Ljdk/internal/ref/CleanerImpl;>;"
    sget-object v0, Ljdk/internal/ref/CleanerImpl;->cleanerImplAccess:Ljava/util/function/Function;

    if-nez v0, :cond_7

    .line 72
    sput-object p0, Ljdk/internal/ref/CleanerImpl;->cleanerImplAccess:Ljava/util/function/Function;

    .line 76
    return-void

    .line 74
    :cond_7
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "cleanerImplAccess"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 160
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljdk/internal/misc/InnocuousThread;

    if-eqz v1, :cond_c

    .line 161
    move-object v1, v0

    check-cast v1, Ljdk/internal/misc/InnocuousThread;

    goto :goto_d

    .line 162
    :cond_c
    const/4 v1, 0x0

    :goto_d
    nop

    .line 163
    .local v1, "mlThread":Ljdk/internal/misc/InnocuousThread;
    :goto_e
    iget-object v2, p0, Ljdk/internal/ref/CleanerImpl;->phantomCleanableList:Ljdk/internal/ref/PhantomCleanable;

    invoke-virtual {v2}, Ljdk/internal/ref/PhantomCleanable;->isListEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 167
    if-eqz v1, :cond_1b

    .line 169
    invoke-virtual {v1}, Ljdk/internal/misc/InnocuousThread;->eraseThreadLocals()V

    .line 174
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Ljdk/internal/ref/CleanerImpl;->queue:Ljava/lang/ref/ReferenceQueue;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Cleaner$Cleanable;

    .line 175
    .local v2, "ref":Ljava/lang/ref/Cleaner$Cleanable;
    if-eqz v2, :cond_2d

    .line 176
    invoke-interface {v2}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2c

    goto :goto_2d

    .line 178
    .end local v2    # "ref":Ljava/lang/ref/Cleaner$Cleanable;
    :catchall_2c
    move-exception v2

    .line 181
    :cond_2d
    :goto_2d
    goto :goto_e

    .line 183
    :cond_2e
    return-void
.end method

.method public blacklist start(Ljava/lang/ref/Cleaner;)V
    .registers 4
    .param p1, "cleaner"    # Ljava/lang/ref/Cleaner;

    .line 141
    invoke-static {p1}, Ljdk/internal/ref/CleanerImpl;->getCleanerImpl(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_7

    .line 144
    return-void

    .line 142
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "wrong cleaner"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public blacklist start(Ljava/lang/ref/Cleaner;Ljava/util/concurrent/ThreadFactory;)V
    .registers 5
    .param p1, "cleaner"    # Ljava/lang/ref/Cleaner;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 114
    invoke-static {p1}, Ljdk/internal/ref/CleanerImpl;->getCleanerImpl(Ljava/lang/ref/Cleaner;)Ljdk/internal/ref/CleanerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_1d

    .line 119
    new-instance v0, Ljdk/internal/ref/CleanerImpl$CleanerCleanable;

    invoke-direct {v0, p1}, Ljdk/internal/ref/CleanerImpl$CleanerCleanable;-><init>(Ljava/lang/ref/Cleaner;)V

    .line 121
    if-nez p2, :cond_11

    .line 122
    invoke-static {}, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;->factory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    .line 128
    :cond_11
    invoke-interface {p2, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 129
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void

    .line 115
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "wrong cleaner"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
