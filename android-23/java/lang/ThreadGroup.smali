.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isDaemon:Z

.field private isDestroyed:Z

.field private maxPriority:I

.field private name:Ljava/lang/String;

.field final parent:Ljava/lang/ThreadGroup;

.field private final threadRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threads:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/lang/ThreadGroup;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@7
    .line 69
    new-instance v0, Ljava/lang/ThreadGroup;

    #@9
    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@b
    const-string/jumbo v2, "main"

    #@e
    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    #@11
    sput-object v0, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    #@13
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    const/16 v0, 0xa

    #@5
    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@7
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@9
    const/4 v1, 0x5

    #@a
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@f
    .line 54
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-static {v0, v1}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@18
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@20
    .line 112
    const-string/jumbo v0, "system"

    #@23
    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@25
    .line 113
    const/4 v0, 0x0

    #@26
    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@28
    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    #@b
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 38
    const/16 v0, 0xa

    #@6
    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@8
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x5

    #@b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@e
    iput-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@10
    .line 54
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@12
    invoke-static {v0, v2}, Llibcore/util/CollectionUtils;->dereferenceIterable(Ljava/lang/Iterable;Z)Ljava/lang/Iterable;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@18
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    const/4 v1, 0x3

    #@1b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1e
    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@20
    .line 93
    if-nez p1, :cond_0

    #@22
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    #@24
    const-string/jumbo v1, "parent == null"

    #@27
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 96
    :cond_0
    iput-object p2, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@2d
    .line 97
    iput-object p1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@2f
    .line 98
    if-eqz p1, :cond_1

    #@31
    .line 99
    invoke-direct {p1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    #@34
    .line 100
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@37
    move-result v0

    #@38
    invoke-virtual {p0, v0}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    #@3b
    .line 101
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->isDaemon()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_1

    #@41
    .line 102
    invoke-virtual {p0, v2}, Ljava/lang/ThreadGroup;->setDaemon(Z)V

    #@44
    .line 92
    :cond_1
    return-void
.end method

.method private add(Ljava/lang/ThreadGroup;)V
    .locals 2
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 163
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 164
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 165
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 163
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    monitor-exit v1

    #@16
    .line 162
    return-void
.end method

.method private destroyIfEmptyDaemon()V
    .locals 3

    #@0
    .prologue
    .line 244
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 245
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    if-eqz v0, :cond_1

    #@b
    :cond_0
    :goto_0
    monitor-exit v1

    #@c
    .line 242
    return-void

    #@d
    .line 245
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 246
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@1b
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    .line 247
    :try_start_2
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@1e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 248
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@27
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 244
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v1

    #@2b
    throw v0

    #@2c
    .line 246
    :catchall_1
    move-exception v0

    #@2d
    :try_start_4
    monitor-exit v2

    #@2e
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private enumerateGeneric([Ljava/lang/Object;ZIZ)I
    .locals 7
    .param p1, "enumeration"    # [Ljava/lang/Object;
    .param p2, "recurse"    # Z
    .param p3, "enumerationIndex"    # I
    .param p4, "enumeratingThreads"    # Z

    #@0
    .prologue
    .line 338
    if-eqz p4, :cond_3

    #@2
    .line 339
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@4
    monitor-enter v6

    #@5
    .line 341
    :try_start_0
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@7
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v5

    #@b
    add-int/lit8 v3, v5, -0x1

    #@d
    .local v3, "i":I
    move v0, p3

    #@e
    .end local p3    # "enumerationIndex":I
    .local v0, "enumerationIndex":I
    :goto_0
    if-ltz v3, :cond_2

    #@10
    .line 342
    :try_start_1
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@12
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/lang/ref/WeakReference;

    #@18
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b
    move-result-object v4

    #@1c
    check-cast v4, Ljava/lang/Thread;

    #@1e
    .line 343
    .local v4, "thread":Ljava/lang/Thread;
    if-eqz v4, :cond_0

    #@20
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_9

    #@26
    .line 344
    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    #@27
    if-lt v0, v5, :cond_1

    #@29
    monitor-exit v6

    #@2a
    .line 345
    return v0

    #@2b
    :cond_0
    move p3, v0

    #@2c
    .line 341
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    #@2e
    move v0, p3

    #@2f
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_0

    #@30
    .line 347
    :cond_1
    add-int/lit8 p3, v0, 0x1

    #@32
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :try_start_2
    aput-object v4, p1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@34
    goto :goto_1

    #@35
    .line 339
    .end local v3    # "i":I
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    #@36
    :goto_2
    monitor-exit v6

    #@37
    throw v5

    #@38
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    .restart local v3    # "i":I
    :cond_2
    monitor-exit v6

    #@39
    :goto_3
    move p3, v0

    #@3a
    .line 362
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    if-eqz p2, :cond_8

    #@3c
    .line 363
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@3e
    monitor-enter v6

    #@3f
    .line 364
    :try_start_3
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@41
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v2

    #@45
    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_7

    #@4b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v1

    #@4f
    check-cast v1, Ljava/lang/ThreadGroup;

    #@51
    .line 365
    .local v1, "group":Ljava/lang/ThreadGroup;
    array-length v5, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@52
    if-lt p3, v5, :cond_6

    #@54
    monitor-exit v6

    #@55
    .line 366
    return p3

    #@56
    .line 352
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@58
    monitor-enter v6

    #@59
    .line 353
    :try_start_4
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@5b
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@5e
    move-result v5

    #@5f
    add-int/lit8 v3, v5, -0x1

    #@61
    .restart local v3    # "i":I
    move v0, p3

    #@62
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :goto_5
    if-ltz v3, :cond_5

    #@64
    .line 354
    :try_start_5
    array-length v5, p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@65
    if-lt v0, v5, :cond_4

    #@67
    monitor-exit v6

    #@68
    .line 355
    return v0

    #@69
    .line 357
    :cond_4
    add-int/lit8 p3, v0, 0x1

    #@6b
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    :try_start_6
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@6d
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v5

    #@71
    aput-object v5, p1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@73
    .line 353
    add-int/lit8 v3, v3, -0x1

    #@75
    move v0, p3

    #@76
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    goto :goto_5

    #@77
    :cond_5
    monitor-exit v6

    #@78
    goto :goto_3

    #@79
    .line 352
    .end local v0    # "enumerationIndex":I
    .end local v3    # "i":I
    .restart local p3    # "enumerationIndex":I
    :catchall_1
    move-exception v5

    #@7a
    :goto_6
    monitor-exit v6

    #@7b
    throw v5

    #@7c
    .line 368
    .restart local v1    # "group":Ljava/lang/ThreadGroup;
    .restart local v2    # "group$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    :cond_6
    :try_start_7
    invoke-direct {v1, p1, p2, p3, p4}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@7f
    move-result p3

    #@80
    goto :goto_4

    #@81
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_7
    monitor-exit v6

    #@82
    .line 373
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    :cond_8
    return p3

    #@83
    .line 363
    :catchall_2
    move-exception v5

    #@84
    monitor-exit v6

    #@85
    throw v5

    #@86
    .line 352
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :catchall_3
    move-exception v5

    #@87
    move p3, v0

    #@88
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_6

    #@89
    .line 339
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    :catchall_4
    move-exception v5

    #@8a
    move p3, v0

    #@8b
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_2

    #@8c
    .end local p3    # "enumerationIndex":I
    .restart local v0    # "enumerationIndex":I
    .restart local v4    # "thread":Ljava/lang/Thread;
    :cond_9
    move p3, v0

    #@8d
    .end local v0    # "enumerationIndex":I
    .restart local p3    # "enumerationIndex":I
    goto :goto_1
.end method

.method private indent(I)V
    .locals 3
    .param p1, "levels"    # I

    #@0
    .prologue
    .line 486
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@3
    .line 487
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    const-string/jumbo v2, "    "

    #@8
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@b
    .line 486
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 485
    :cond_0
    return-void
.end method

.method private list(I)V
    .locals 6
    .param p1, "levels"    # I

    #@0
    .prologue
    .line 468
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    #@3
    .line 469
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->toString()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 471
    add-int/lit8 p1, p1, 0x1

    #@e
    .line 472
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@10
    monitor-enter v5

    #@11
    .line 473
    :try_start_0
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    .local v3, "thread$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/Thread;

    #@23
    .line 474
    .local v2, "thread":Ljava/lang/Thread;
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->indent(I)V

    #@26
    .line 475
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    goto :goto_0

    #@2c
    .line 472
    .end local v2    # "thread":Ljava/lang/Thread;
    .end local v3    # "thread$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit v5

    #@2e
    throw v4

    #@2f
    .restart local v3    # "thread$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    #@30
    .line 478
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@32
    monitor-enter v5

    #@33
    .line 479
    :try_start_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@35
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v1

    #@39
    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_1

    #@3f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/ThreadGroup;

    #@45
    .line 480
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v0, p1}, Ljava/lang/ThreadGroup;->list(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@48
    goto :goto_1

    #@49
    .line 478
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    #@4a
    monitor-exit v5

    #@4b
    throw v4

    #@4c
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@4d
    .line 467
    return-void
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .locals 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 517
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@2
    monitor-enter v3

    #@3
    .line 518
    :try_start_0
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/ThreadGroup;

    #@15
    .line 520
    .local v1, "threadGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v1, p1}, Ljava/lang/ThreadGroup;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 521
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .end local v1    # "threadGroup":Ljava/lang/ThreadGroup;
    :cond_1
    monitor-exit v3

    #@1f
    .line 526
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    #@22
    .line 516
    return-void

    #@23
    .line 517
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ThreadGroup;>;"
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method private stopHelper()Z
    .locals 8

    #@0
    .prologue
    .line 615
    const/4 v3, 0x0

    #@1
    .line 616
    .local v3, "stopCurrent":Z
    iget-object v7, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@3
    monitor-enter v7

    #@4
    .line 617
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v0

    #@8
    .line 618
    .local v0, "current":Ljava/lang/Thread;
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v5

    #@e
    .local v5, "thread$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/lang/Thread;

    #@1a
    .line 619
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v0, :cond_0

    #@1c
    .line 620
    const/4 v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 622
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 616
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v4    # "thread":Ljava/lang/Thread;
    .end local v5    # "thread$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@23
    monitor-exit v7

    #@24
    throw v6

    #@25
    .restart local v0    # "current":Ljava/lang/Thread;
    .restart local v5    # "thread$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v7

    #@26
    .line 626
    iget-object v7, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@28
    monitor-enter v7

    #@29
    .line 627
    :try_start_1
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@2b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .end local v3    # "stopCurrent":Z
    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/lang/ThreadGroup;

    #@3b
    .line 628
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->stopHelper()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result v6

    #@3f
    or-int/2addr v3, v6

    #@40
    .local v3, "stopCurrent":Z
    goto :goto_1

    #@41
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v3    # "stopCurrent":Z
    :cond_2
    monitor-exit v7

    #@42
    .line 631
    return v3

    #@43
    .line 626
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    #@44
    monitor-exit v7

    #@45
    throw v6
.end method

.method private suspendHelper()Z
    .locals 8

    #@0
    .prologue
    .line 653
    const/4 v3, 0x0

    #@1
    .line 654
    .local v3, "suspendCurrent":Z
    iget-object v7, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@3
    monitor-enter v7

    #@4
    .line 655
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v0

    #@8
    .line 656
    .local v0, "current":Ljava/lang/Thread;
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v5

    #@e
    .local v5, "thread$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v4

    #@18
    check-cast v4, Ljava/lang/Thread;

    #@1a
    .line 657
    .local v4, "thread":Ljava/lang/Thread;
    if-ne v4, v0, :cond_0

    #@1c
    .line 658
    const/4 v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 660
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 654
    .end local v0    # "current":Ljava/lang/Thread;
    .end local v4    # "thread":Ljava/lang/Thread;
    .end local v5    # "thread$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    #@23
    monitor-exit v7

    #@24
    throw v6

    #@25
    .restart local v0    # "current":Ljava/lang/Thread;
    .restart local v5    # "thread$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v7

    #@26
    .line 664
    iget-object v7, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@28
    monitor-enter v7

    #@29
    .line 665
    :try_start_1
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@2b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .end local v3    # "suspendCurrent":Z
    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/lang/ThreadGroup;

    #@3b
    .line 666
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-direct {v1}, Ljava/lang/ThreadGroup;->suspendHelper()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@3e
    move-result v6

    #@3f
    or-int/2addr v3, v6

    #@40
    .local v3, "suspendCurrent":Z
    goto :goto_1

    #@41
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v3    # "suspendCurrent":Z
    :cond_2
    monitor-exit v7

    #@42
    .line 669
    return v3

    #@43
    .line 664
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    #@44
    monitor-exit v7

    #@45
    throw v6
.end method


# virtual methods
.method public activeCount()I
    .locals 7

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    .line 124
    .local v0, "count":I
    iget-object v6, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@3
    monitor-enter v6

    #@4
    .line 125
    :try_start_0
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v4

    #@a
    .local v4, "thread$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Ljava/lang/Thread;

    #@16
    .line 126
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_1
    monitor-exit v6

    #@20
    .line 131
    iget-object v6, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@22
    monitor-enter v6

    #@23
    .line 132
    :try_start_1
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@25
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v2

    #@29
    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_2

    #@2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Ljava/lang/ThreadGroup;

    #@35
    .line 133
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@38
    move-result v5

    #@39
    add-int/2addr v0, v5

    #@3a
    goto :goto_1

    #@3b
    .line 124
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    .end local v4    # "thread$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@3c
    monitor-exit v6

    #@3d
    throw v5

    #@3e
    .restart local v2    # "group$iterator":Ljava/util/Iterator;
    .restart local v4    # "thread$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v6

    #@3f
    .line 136
    return v0

    #@40
    .line 131
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    #@41
    monitor-exit v6

    #@42
    throw v5
.end method

.method public activeGroupCount()I
    .locals 5

    #@0
    .prologue
    .line 146
    const/4 v0, 0x0

    #@1
    .line 147
    .local v0, "count":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@3
    monitor-enter v4

    #@4
    .line 148
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_0

    #@10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/lang/ThreadGroup;

    #@16
    .line 150
    .local v1, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result v3

    #@1a
    add-int/lit8 v3, v3, 0x1

    #@1c
    add-int/2addr v0, v3

    #@1d
    goto :goto_0

    #@1e
    .end local v1    # "group":Ljava/lang/ThreadGroup;
    :cond_0
    monitor-exit v4

    #@1f
    .line 153
    return v0

    #@20
    .line 147
    .end local v2    # "group$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@21
    monitor-exit v4

    #@22
    throw v3
.end method

.method final addThread(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 705
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 706
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@c
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 704
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0

    #@10
    .line 708
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@12
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@14
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 703
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .locals 1
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 184
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final checkAccess()V
    .locals 0

    #@0
    .prologue
    .line 190
    return-void
.end method

.method public final destroy()V
    .locals 5

    #@0
    .prologue
    .line 204
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    .line 205
    :try_start_0
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@5
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    .line 206
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 207
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    #@c
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v4, "Thread group was already destroyed: "

    #@14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    .line 209
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@1e
    .line 208
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 207
    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 205
    :catchall_0
    move-exception v0

    #@2b
    :try_start_2
    monitor-exit v2

    #@2c
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2d
    .line 204
    :catchall_1
    move-exception v0

    #@2e
    monitor-exit v1

    #@2f
    throw v0

    #@30
    .line 209
    :cond_0
    :try_start_3
    const-string/jumbo v0, "n/a"

    #@33
    goto :goto_0

    #@34
    .line 211
    :cond_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v0

    #@3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_3

    #@40
    .line 212
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    #@42
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v4, "Thread group still contains threads: "

    #@4a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    .line 214
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@50
    if-eqz v0, :cond_2

    #@52
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@54
    .line 213
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 212
    invoke-direct {v3, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v3

    #@60
    .line 214
    :cond_2
    const-string/jumbo v0, "n/a"

    #@63
    goto :goto_1

    #@64
    .line 217
    :cond_3
    :goto_2
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@69
    move-result v0

    #@6a
    if-nez v0, :cond_4

    #@6c
    .line 221
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@6e
    const/4 v3, 0x0

    #@6f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Ljava/lang/ThreadGroup;

    #@75
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->destroy()V

    #@78
    goto :goto_2

    #@79
    .line 224
    :cond_4
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@7b
    if-eqz v0, :cond_5

    #@7d
    .line 225
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@7f
    invoke-direct {v0, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    #@82
    .line 229
    :cond_5
    const/4 v0, 0x1

    #@83
    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@86
    monitor-exit v1

    #@87
    .line 203
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .locals 1
    .param p1, "threads"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 267
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .locals 2
    .param p1, "threads"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    #@0
    .prologue
    .line 284
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .locals 1
    .param p1, "groups"    # [Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 299
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .locals 1
    .param p1, "groups"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 316
    invoke-direct {p0, p1, p2, v0, v0}, Ljava/lang/ThreadGroup;->enumerateGeneric([Ljava/lang/Object;ZIZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getMaxPriority()I
    .locals 1

    #@0
    .prologue
    .line 384
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@2
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .locals 1

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@2
    return-object v0
.end method

.method public final interrupt()V
    .locals 6

    #@0
    .prologue
    .line 413
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@2
    monitor-enter v5

    #@3
    .line 414
    :try_start_0
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "thread$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/Thread;

    #@15
    .line 415
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 413
    .end local v2    # "thread":Ljava/lang/Thread;
    .end local v3    # "thread$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit v5

    #@1b
    throw v4

    #@1c
    .restart local v3    # "thread$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    #@1d
    .line 418
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@1f
    monitor-enter v5

    #@20
    .line 419
    :try_start_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@22
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/ThreadGroup;

    #@32
    .line 420
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@35
    goto :goto_1

    #@36
    .line 418
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    #@37
    monitor-exit v5

    #@38
    throw v4

    #@39
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@3a
    .line 412
    return-void
.end method

.method public final isDaemon()Z
    .locals 1

    #@0
    .prologue
    .line 434
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    #@2
    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 444
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->isDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public list()V
    .locals 1

    #@0
    .prologue
    .line 455
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@5
    .line 456
    const/4 v0, 0x0

    #@6
    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->list(I)V

    #@9
    .line 453
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .locals 1
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 499
    :goto_0
    if-eqz p1, :cond_1

    #@2
    .line 500
    if-ne p0, p1, :cond_0

    #@4
    .line 501
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 503
    :cond_0
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@8
    goto :goto_0

    #@9
    .line 505
    :cond_1
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method final removeThread(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 716
    iget-object v2, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@2
    monitor-enter v2

    #@3
    .line 717
    :try_start_0
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/Thread;

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 719
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit v2

    #@1f
    .line 724
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->destroyIfEmptyDaemon()V

    #@22
    .line 715
    return-void

    #@23
    .line 716
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Thread;>;"
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public final resume()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 541
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threadRefs:Ljava/util/List;

    #@2
    monitor-enter v5

    #@3
    .line 542
    :try_start_0
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:Ljava/lang/Iterable;

    #@5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v3

    #@9
    .local v3, "thread$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/Thread;

    #@15
    .line 543
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 541
    .end local v2    # "thread":Ljava/lang/Thread;
    .end local v3    # "thread$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit v5

    #@1b
    throw v4

    #@1c
    .restart local v3    # "thread$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    #@1d
    .line 546
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@1f
    monitor-enter v5

    #@20
    .line 547
    :try_start_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@22
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_1

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/ThreadGroup;

    #@32
    .line 548
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@35
    goto :goto_1

    #@36
    .line 546
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    #@37
    monitor-exit v5

    #@38
    throw v4

    #@39
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    #@3a
    .line 540
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 0
    .param p1, "isDaemon"    # Z

    #@0
    .prologue
    .line 562
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->isDaemon:Z

    #@2
    .line 561
    return-void
.end method

.method public final setMaxPriority(I)V
    .locals 5
    .param p1, "newMax"    # I

    #@0
    .prologue
    .line 581
    iget v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@2
    if-gt p1, v3, :cond_4

    #@4
    .line 582
    const/4 v3, 0x1

    #@5
    if-ge p1, v3, :cond_0

    #@7
    .line 583
    const/4 p1, 0x1

    #@8
    .line 586
    :cond_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@a
    if-nez v3, :cond_1

    #@c
    move v2, p1

    #@d
    .line 587
    .local v2, "parentPriority":I
    :goto_0
    if-gt v2, p1, :cond_2

    #@f
    .end local v2    # "parentPriority":I
    :goto_1
    iput v2, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@11
    .line 588
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@13
    monitor-enter v4

    #@14
    .line 589
    :try_start_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:Ljava/util/List;

    #@16
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "group$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_3

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Ljava/lang/ThreadGroup;

    #@26
    .line 590
    .local v0, "group":Ljava/lang/ThreadGroup;
    invoke-virtual {v0, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    goto :goto_2

    #@2a
    .line 588
    .end local v0    # "group":Ljava/lang/ThreadGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@2b
    monitor-exit v4

    #@2c
    throw v3

    #@2d
    .line 586
    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@2f
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@32
    move-result v2

    #@33
    .restart local v2    # "parentPriority":I
    goto :goto_0

    #@34
    :cond_2
    move v2, p1

    #@35
    .line 587
    goto :goto_1

    #@36
    .end local v2    # "parentPriority":I
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v4

    #@37
    .line 580
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->stopHelper()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    #@d
    .line 607
    :cond_0
    return-void
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/ThreadGroup;->suspendHelper()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 647
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    #@d
    .line 645
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[name="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 675
    const-string/jumbo v1, ",maxPriority="

    #@23
    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 675
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    #@2a
    move-result v1

    #@2b
    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 675
    const-string/jumbo v1, "]"

    #@32
    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 690
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@6
    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@9
    .line 688
    :cond_0
    :goto_0
    return-void

    #@a
    .line 691
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 693
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@17
    goto :goto_0

    #@18
    .line 694
    :cond_2
    instance-of v0, p2, Ljava/lang/ThreadDeath;

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 696
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1e
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@21
    goto :goto_0
.end method
