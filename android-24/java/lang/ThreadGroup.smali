.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field daemon:Z

.field destroyed:Z

.field groups:[Ljava/lang/ThreadGroup;

.field maxPriority:I

.field nUnstartedThreads:I

.field name:Ljava/lang/String;

.field ngroups:I

.field nthreads:I

.field private final parent:Ljava/lang/ThreadGroup;

.field threads:[Ljava/lang/Thread;

.field vmAllowSuspension:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/lang/ThreadGroup;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    #@5
    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    #@7
    .line 62
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
    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@6
    .line 83
    const-string/jumbo v0, "system"

    #@9
    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@b
    .line 84
    const/16 v0, 0xa

    #@d
    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@f
    .line 85
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@12
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
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
    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/ThreadGroup;->checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    #@7
    .line 122
    return-void
.end method

.method private constructor <init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ThreadGroup;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/4 v0, 0x0

    #@4
    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@6
    .line 127
    iput-object p3, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@8
    .line 128
    iget v0, p2, Ljava/lang/ThreadGroup;->maxPriority:I

    #@a
    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@c
    .line 129
    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->daemon:Z

    #@e
    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    #@10
    .line 130
    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    #@12
    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    #@14
    .line 131
    iput-object p2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@16
    .line 132
    invoke-direct {p2, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    #@19
    .line 126
    return-void
.end method

.method private final add(Ljava/lang/ThreadGroup;)V
    .locals 2
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 816
    monitor-enter p0

    #@1
    .line 817
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 818
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 816
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 820
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@10
    if-nez v0, :cond_2

    #@12
    .line 821
    const/4 v0, 0x4

    #@13
    new-array v0, v0, [Ljava/lang/ThreadGroup;

    #@15
    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@17
    .line 825
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@19
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@1b
    aput-object p1, v0, v1

    #@1d
    .line 829
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Ljava/lang/ThreadGroup;->ngroups:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 815
    return-void

    #@25
    .line 822
    :cond_2
    :try_start_2
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@27
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@29
    array-length v1, v1

    #@2a
    if-ne v0, v1, :cond_1

    #@2c
    .line 823
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@2e
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@30
    mul-int/lit8 v1, v1, 0x2

    #@32
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, [Ljava/lang/ThreadGroup;

    #@38
    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    goto :goto_0
.end method

.method private static checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;
    .locals 1
    .param p0, "parent"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@3
    .line 142
    const/4 v0, 0x0

    #@4
    return-object v0
.end method

.method private enumerate([Ljava/lang/Thread;IZ)I
    .locals 7
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    #@0
    .prologue
    .line 437
    const/4 v3, 0x0

    #@1
    .line 438
    .local v3, "ngroupsSnapshot":I
    const/4 v0, 0x0

    #@2
    .line 439
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    #@3
    .line 440
    :try_start_0
    iget-boolean v5, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 441
    const/4 v5, 0x0

    #@8
    monitor-exit p0

    #@9
    return v5

    #@a
    .line 443
    :cond_0
    :try_start_1
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@c
    .line 444
    .local v4, "nt":I
    array-length v5, p1

    #@d
    sub-int/2addr v5, p2

    #@e
    if-le v4, v5, :cond_1

    #@10
    .line 445
    array-length v5, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    sub-int v4, v5, p2

    #@13
    .line 447
    :cond_1
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    move v2, p2

    #@15
    .end local p2    # "n":I
    .local v2, "n":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@17
    .line 448
    :try_start_2
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@19
    aget-object v5, v5, v1

    #@1b
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_7

    #@21
    .line 449
    add-int/lit8 p2, v2, 0x1

    #@23
    .end local v2    # "n":I
    .restart local p2    # "n":I
    :try_start_3
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@25
    aget-object v5, v5, v1

    #@27
    aput-object v5, p1, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@29
    .line 447
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@2b
    move v2, p2

    #@2c
    .end local p2    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    #@2d
    .line 452
    :cond_2
    if-eqz p3, :cond_3

    #@2f
    .line 453
    :try_start_4
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@31
    .line 454
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@33
    if-eqz v5, :cond_4

    #@35
    .line 455
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@37
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@3d
    :cond_3
    :goto_2
    monitor-exit p0

    #@3e
    .line 461
    if-eqz p3, :cond_5

    #@40
    .line 462
    const/4 v1, 0x0

    #@41
    move p2, v2

    #@42
    .end local v2    # "n":I
    .restart local p2    # "n":I
    :goto_3
    if-ge v1, v3, :cond_6

    #@44
    .line 463
    aget-object v5, v0, v1

    #@46
    const/4 v6, 0x1

    #@47
    invoke-direct {v5, p1, p2, v6}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    #@4a
    move-result p2

    #@4b
    .line 462
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_3

    #@4e
    .line 457
    .end local p2    # "n":I
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v2    # "n":I
    :cond_4
    const/4 v0, 0x0

    #@4f
    goto :goto_2

    #@50
    .line 439
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v4    # "nt":I
    .restart local p2    # "n":I
    :catchall_0
    move-exception v5

    #@51
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_4
    monitor-exit p0

    #@52
    throw v5

    #@53
    .end local p2    # "n":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v4    # "nt":I
    :cond_5
    move p2, v2

    #@54
    .line 466
    .end local v2    # "n":I
    .restart local p2    # "n":I
    :cond_6
    return p2

    #@55
    .line 439
    .end local p2    # "n":I
    .restart local v2    # "n":I
    :catchall_1
    move-exception v5

    #@56
    move p2, v2

    #@57
    .end local v2    # "n":I
    .restart local p2    # "n":I
    goto :goto_4

    #@58
    .end local p2    # "n":I
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v2    # "n":I
    :cond_7
    move p2, v2

    #@59
    .end local v2    # "n":I
    .restart local p2    # "n":I
    goto :goto_1
.end method

.method private enumerate([Ljava/lang/ThreadGroup;IZ)I
    .locals 6
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 571
    const/4 v3, 0x0

    #@2
    .line 572
    .local v3, "ngroupsSnapshot":I
    const/4 v0, 0x0

    #@3
    .line 573
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    #@4
    .line 574
    :try_start_0
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v4, :cond_0

    #@8
    monitor-exit p0

    #@9
    .line 575
    return v5

    #@a
    .line 577
    :cond_0
    :try_start_1
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@c
    .line 578
    .local v2, "ng":I
    array-length v4, p1

    #@d
    sub-int/2addr v4, p2

    #@e
    if-le v2, v4, :cond_1

    #@10
    .line 579
    array-length v4, p1

    #@11
    sub-int v2, v4, p2

    #@13
    .line 581
    :cond_1
    if-lez v2, :cond_2

    #@15
    .line 582
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@17
    const/4 v5, 0x0

    #@18
    invoke-static {v4, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 583
    add-int/2addr p2, v2

    #@1c
    .line 585
    :cond_2
    if-eqz p3, :cond_3

    #@1e
    .line 586
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@20
    .line 587
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@22
    if-eqz v4, :cond_4

    #@24
    .line 588
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@26
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    :cond_3
    :goto_0
    monitor-exit p0

    #@2d
    .line 594
    if-eqz p3, :cond_5

    #@2f
    .line 595
    const/4 v1, 0x0

    #@30
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    #@32
    .line 596
    aget-object v4, v0, v1

    #@34
    const/4 v5, 0x1

    #@35
    invoke-direct {v4, p1, p2, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    #@38
    move-result p2

    #@39
    .line 595
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 590
    .end local v1    # "i":I
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_4
    const/4 v0, 0x0

    #@3d
    goto :goto_0

    #@3e
    .line 573
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "ng":I
    :catchall_0
    move-exception v4

    #@3f
    monitor-exit p0

    #@40
    throw v4

    #@41
    .line 599
    .restart local v2    # "ng":I
    :cond_5
    return p2
.end method

.method private remove(Ljava/lang/Thread;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 974
    monitor-enter p0

    #@1
    .line 975
    :try_start_0
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 976
    return-void

    #@7
    .line 978
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 979
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_2

    #@12
    .line 980
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@14
    add-int/lit8 v2, v0, 0x1

    #@16
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@18
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@1a
    add-int/lit8 v4, v4, -0x1

    #@1c
    iput v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@1e
    sub-int/2addr v4, v0

    #@1f
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 983
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@24
    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@26
    const/4 v3, 0x0

    #@27
    aput-object v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    :cond_1
    monitor-exit p0

    #@2a
    .line 973
    return-void

    #@2b
    .line 978
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 974
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@2f
    monitor-exit p0

    #@30
    throw v1
.end method

.method private remove(Ljava/lang/ThreadGroup;)V
    .locals 5
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 839
    monitor-enter p0

    #@1
    .line 840
    :try_start_0
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 841
    return-void

    #@7
    .line 843
    :cond_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    :try_start_1
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 844
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@e
    aget-object v1, v1, v0

    #@10
    if-ne v1, p1, :cond_4

    #@12
    .line 845
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@18
    .line 846
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@1a
    add-int/lit8 v2, v0, 0x1

    #@1c
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@1e
    iget v4, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@20
    sub-int/2addr v4, v0

    #@21
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    .line 849
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@26
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@28
    const/4 v3, 0x0

    #@29
    aput-object v3, v1, v2

    #@2b
    .line 853
    :cond_1
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@2d
    if-nez v1, :cond_2

    #@2f
    .line 854
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->notifyAll()V

    #@32
    .line 856
    :cond_2
    iget-boolean v1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    #@34
    if-eqz v1, :cond_3

    #@36
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@38
    if-nez v1, :cond_3

    #@3a
    .line 857
    iget v1, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@3c
    if-nez v1, :cond_3

    #@3e
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@40
    if-nez v1, :cond_3

    #@42
    .line 859
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    :cond_3
    monitor-exit p0

    #@46
    .line 838
    return-void

    #@47
    .line 843
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_0

    #@4a
    .line 839
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    #@4b
    monitor-exit p0

    #@4c
    throw v1
.end method

.method private stopOrSuspend(Z)Z
    .locals 6
    .param p1, "suspend"    # Z

    #@0
    .prologue
    .line 697
    const/4 v3, 0x0

    #@1
    .line 698
    .local v3, "suicide":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4
    move-result-object v4

    #@5
    .line 700
    .local v4, "us":Ljava/lang/Thread;
    const/4 v0, 0x0

    #@6
    .line 701
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    #@7
    .line 702
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@a
    .line 703
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    iget v5, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@d
    if-ge v1, v5, :cond_2

    #@f
    .line 704
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@11
    aget-object v5, v5, v1

    #@13
    if-ne v5, v4, :cond_0

    #@15
    .line 705
    const/4 v3, 0x1

    #@16
    .line 703
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 706
    :cond_0
    if-eqz p1, :cond_1

    #@1b
    .line 707
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@1d
    aget-object v5, v5, v1

    #@1f
    invoke-virtual {v5}, Ljava/lang/Thread;->suspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    goto :goto_1

    #@23
    .line 701
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    :catchall_0
    move-exception v5

    #@24
    monitor-exit p0

    #@25
    throw v5

    #@26
    .line 709
    .restart local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@28
    aget-object v5, v5, v1

    #@2a
    invoke-virtual {v5}, Ljava/lang/Thread;->stop()V

    #@2d
    goto :goto_1

    #@2e
    .line 712
    :cond_2
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@30
    .line 713
    .local v2, "ngroupsSnapshot":I
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@32
    if-eqz v5, :cond_3

    #@34
    .line 714
    iget-object v5, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@36
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    :cond_3
    monitor-exit p0

    #@3d
    .line 717
    const/4 v1, 0x0

    #@3e
    :goto_2
    if-ge v1, v2, :cond_5

    #@40
    .line 718
    aget-object v5, v0, v1

    #@42
    invoke-direct {v5, p1}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_4

    #@48
    .line 717
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_2

    #@4b
    .line 718
    :cond_4
    const/4 v3, 0x1

    #@4c
    goto :goto_3

    #@4d
    .line 720
    :cond_5
    return v3
.end method


# virtual methods
.method public activeCount()I
    .locals 5

    #@0
    .prologue
    .line 353
    monitor-enter p0

    #@1
    .line 354
    :try_start_0
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 355
    const/4 v4, 0x0

    #@6
    monitor-exit p0

    #@7
    return v4

    #@8
    .line 357
    :cond_0
    :try_start_1
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@a
    .line 358
    .local v3, "result":I
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@c
    .line 359
    .local v2, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 360
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@12
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :goto_0
    monitor-exit p0

    #@19
    .line 365
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    #@1c
    .line 366
    aget-object v4, v0, v1

    #@1e
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    #@21
    move-result v4

    #@22
    add-int/2addr v3, v4

    #@23
    .line 365
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_1

    #@26
    .line 362
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    #@27
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_0

    #@28
    .line 353
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "ngroupsSnapshot":I
    .end local v3    # "result":I
    :catchall_0
    move-exception v4

    #@29
    monitor-exit p0

    #@2a
    throw v4

    #@2b
    .line 368
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    .restart local v3    # "result":I
    :cond_2
    return v3
.end method

.method public activeGroupCount()I
    .locals 5

    #@0
    .prologue
    .line 487
    monitor-enter p0

    #@1
    .line 488
    :try_start_0
    iget-boolean v4, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 489
    const/4 v4, 0x0

    #@6
    monitor-exit p0

    #@7
    return v4

    #@8
    .line 491
    :cond_0
    :try_start_1
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@a
    .line 492
    .local v3, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 493
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@10
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    :goto_0
    monitor-exit p0

    #@17
    .line 498
    move v2, v3

    #@18
    .line 499
    .local v2, "n":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@1b
    .line 500
    aget-object v4, v0, v1

    #@1d
    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    #@20
    move-result v4

    #@21
    add-int/2addr v2, v4

    #@22
    .line 499
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_1

    #@25
    .line 495
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v0, 0x0

    #@26
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_0

    #@27
    .line 487
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v3    # "ngroupsSnapshot":I
    :catchall_0
    move-exception v4

    #@28
    monitor-exit p0

    #@29
    throw v4

    #@2a
    .line 502
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "ngroupsSnapshot":I
    :cond_2
    return v2
.end method

.method add(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 895
    monitor-enter p0

    #@1
    .line 896
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 897
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 895
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 899
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@10
    if-nez v0, :cond_2

    #@12
    .line 900
    const/4 v0, 0x4

    #@13
    new-array v0, v0, [Ljava/lang/Thread;

    #@15
    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@17
    .line 904
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@19
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@1b
    aput-object p1, v0, v1

    #@1d
    .line 908
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@23
    .line 914
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 894
    return-void

    #@2b
    .line 901
    :cond_2
    :try_start_2
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@2d
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@2f
    array-length v1, v1

    #@30
    if-ne v0, v1, :cond_1

    #@32
    .line 902
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@34
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@36
    mul-int/lit8 v1, v1, 0x2

    #@38
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, [Ljava/lang/Thread;

    #@3e
    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    goto :goto_0
.end method

.method addUnstarted()V
    .locals 1

    #@0
    .prologue
    .line 873
    monitor-enter p0

    #@1
    .line 874
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 875
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@a
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 873
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0

    #@e
    .line 877
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit p0

    #@15
    .line 872
    return-void
.end method

.method public allowThreadSuspension(Z)Z
    .locals 1
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1089
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->vmAllowSuspension:Z

    #@2
    .line 1090
    if-nez p1, :cond_0

    #@4
    .line 1091
    invoke-static {}, Lsun/misc/VM;->unsuspendSomeThreads()V

    #@7
    .line 1093
    :cond_0
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public final checkAccess()V
    .locals 0

    #@0
    .prologue
    .line 327
    return-void
.end method

.method public final destroy()V
    .locals 4

    #@0
    .prologue
    .line 783
    monitor-enter p0

    #@1
    .line 784
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@4
    .line 785
    iget-boolean v3, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    #@6
    if-nez v3, :cond_0

    #@8
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@a
    if-lez v3, :cond_1

    #@c
    .line 786
    :cond_0
    new-instance v3, Ljava/lang/IllegalThreadStateException;

    #@e
    invoke-direct {v3}, Ljava/lang/IllegalThreadStateException;-><init>()V

    #@11
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 783
    :catchall_0
    move-exception v3

    #@13
    monitor-exit p0

    #@14
    throw v3

    #@15
    .line 788
    :cond_1
    :try_start_1
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@17
    .line 789
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@19
    if-eqz v3, :cond_3

    #@1b
    .line 790
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@1d
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, [Ljava/lang/ThreadGroup;

    #@23
    .line 794
    :goto_0
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 795
    const/4 v3, 0x1

    #@28
    iput-boolean v3, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    #@2a
    .line 796
    const/4 v3, 0x0

    #@2b
    iput v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@2d
    .line 797
    const/4 v3, 0x0

    #@2e
    iput-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@30
    .line 798
    const/4 v3, 0x0

    #@31
    iput v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@33
    .line 799
    const/4 v3, 0x0

    #@34
    iput-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :cond_2
    monitor-exit p0

    #@37
    .line 802
    const/4 v1, 0x0

    #@38
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_4

    #@3a
    .line 803
    aget-object v3, v0, v1

    #@3c
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->destroy()V

    #@3f
    .line 802
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_1

    #@42
    .line 792
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    #@43
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_0

    #@44
    .line 805
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v1    # "i":I
    :cond_4
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@46
    if-eqz v3, :cond_5

    #@48
    .line 806
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@4a
    invoke-direct {v3, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    #@4d
    .line 780
    :cond_5
    return-void
.end method

.method public enumerate([Ljava/lang/Thread;)I
    .locals 2
    .param p1, "list"    # [Ljava/lang/Thread;

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@3
    .line 395
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public enumerate([Ljava/lang/Thread;Z)I
    .locals 1
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    #@0
    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@3
    .line 433
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;)I
    .locals 2
    .param p1, "list"    # [Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 528
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@3
    .line 529
    const/4 v0, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public enumerate([Ljava/lang/ThreadGroup;Z)I
    .locals 1
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    #@0
    .prologue
    .line 566
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@3
    .line 567
    const/4 v0, 0x0

    #@4
    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getMaxPriority()I
    .locals 1

    #@0
    .prologue
    .line 188
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@2
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getParent()Ljava/lang/ThreadGroup;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 173
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@6
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@9
    .line 174
    :cond_0
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@b
    return-object v0
.end method

.method public final interrupt()V
    .locals 4

    #@0
    .prologue
    .line 647
    monitor-enter p0

    #@1
    .line 648
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@4
    .line 649
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 650
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@b
    aget-object v3, v3, v1

    #@d
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@10
    .line 649
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 652
    :cond_0
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@15
    .line 653
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 654
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@1b
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :goto_1
    monitor-exit p0

    #@22
    .line 659
    const/4 v1, 0x0

    #@23
    :goto_2
    if-ge v1, v2, :cond_2

    #@25
    .line 660
    aget-object v3, v0, v1

    #@27
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->interrupt()V

    #@2a
    .line 659
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_2

    #@2d
    .line 656
    :cond_1
    const/4 v0, 0x0

    #@2e
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_1

    #@2f
    .line 647
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    .end local v2    # "ngroupsSnapshot":I
    :catchall_0
    move-exception v3

    #@30
    monitor-exit p0

    #@31
    throw v3

    #@32
    .line 644
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    :cond_2
    return-void
.end method

.method public final isDaemon()Z
    .locals 1

    #@0
    .prologue
    .line 201
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    #@2
    return v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 211
    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z
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
    .locals 2

    #@0
    .prologue
    .line 997
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, v1}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    #@6
    .line 996
    return-void
.end method

.method list(Ljava/io/PrintStream;I)V
    .locals 5
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "indent"    # I

    #@0
    .prologue
    .line 1002
    monitor-enter p0

    #@1
    .line 1003
    const/4 v2, 0x0

    #@2
    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_0

    #@4
    .line 1004
    :try_start_0
    const-string/jumbo v4, " "

    #@7
    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@a
    .line 1003
    add-int/lit8 v2, v2, 0x1

    #@c
    goto :goto_0

    #@d
    .line 1006
    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@10
    .line 1007
    add-int/lit8 p2, p2, 0x4

    #@12
    .line 1008
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_1
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@15
    if-ge v1, v4, :cond_2

    #@17
    .line 1009
    const/4 v2, 0x0

    #@18
    :goto_2
    if-ge v2, p2, :cond_1

    #@1a
    .line 1010
    const-string/jumbo v4, " "

    #@1d
    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@20
    .line 1009
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_2

    #@23
    .line 1012
    :cond_1
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@25
    aget-object v4, v4, v1

    #@27
    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@2a
    .line 1008
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 1014
    :cond_2
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@2f
    .line 1015
    .local v3, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@31
    if-eqz v4, :cond_3

    #@33
    .line 1016
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@35
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    :goto_3
    monitor-exit p0

    #@3c
    .line 1021
    const/4 v1, 0x0

    #@3d
    :goto_4
    if-ge v1, v3, :cond_4

    #@3f
    .line 1022
    aget-object v4, v0, v1

    #@41
    invoke-virtual {v4, p1, p2}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    #@44
    .line 1021
    add-int/lit8 v1, v1, 0x1

    #@46
    goto :goto_4

    #@47
    .line 1018
    :cond_3
    const/4 v0, 0x0

    #@48
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_3

    #@49
    .line 1002
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    .end local v3    # "ngroupsSnapshot":I
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit p0

    #@4b
    throw v4

    #@4c
    .line 999
    .restart local v1    # "i":I
    .restart local v3    # "ngroupsSnapshot":I
    :cond_4
    return-void
.end method

.method public final parentOf(Ljava/lang/ThreadGroup;)Z
    .locals 1
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    #@0
    .prologue
    .line 306
    :goto_0
    if-eqz p1, :cond_1

    #@2
    .line 307
    if-ne p1, p0, :cond_0

    #@4
    .line 308
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 306
    :cond_0
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@8
    goto :goto_0

    #@9
    .line 311
    :cond_1
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public final resume()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 748
    monitor-enter p0

    #@1
    .line 749
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@4
    .line 750
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    iget v3, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 751
    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    #@b
    aget-object v3, v3, v1

    #@d
    invoke-virtual {v3}, Ljava/lang/Thread;->resume()V

    #@10
    .line 750
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 753
    :cond_0
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@15
    .line 754
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 755
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@1b
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :goto_1
    monitor-exit p0

    #@22
    .line 760
    const/4 v1, 0x0

    #@23
    :goto_2
    if-ge v1, v2, :cond_2

    #@25
    .line 761
    aget-object v3, v0, v1

    #@27
    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->resume()V

    #@2a
    .line 760
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_2

    #@2d
    .line 757
    :cond_1
    const/4 v0, 0x0

    #@2e
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_1

    #@2f
    .line 748
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v1    # "i":I
    .end local v2    # "ngroupsSnapshot":I
    :catchall_0
    move-exception v3

    #@30
    monitor-exit p0

    #@31
    throw v3

    #@32
    .line 745
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    :cond_2
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 0
    .param p1, "daemon"    # Z

    #@0
    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@3
    .line 234
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    #@5
    .line 232
    return-void
.end method

.method public final setMaxPriority(I)V
    .locals 4
    .param p1, "pri"    # I

    #@0
    .prologue
    .line 269
    monitor-enter p0

    #@1
    .line 270
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    #@4
    .line 275
    const/4 v3, 0x1

    #@5
    if-ge p1, v3, :cond_0

    #@7
    .line 276
    const/4 p1, 0x1

    #@8
    .line 278
    :cond_0
    const/16 v3, 0xa

    #@a
    if-le p1, v3, :cond_1

    #@c
    .line 279
    const/16 p1, 0xa

    #@e
    .line 282
    :cond_1
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@10
    if-eqz v3, :cond_2

    #@12
    iget-object v3, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@14
    iget v3, v3, Ljava/lang/ThreadGroup;->maxPriority:I

    #@16
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v3

    #@1a
    :goto_0
    iput v3, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@1c
    .line 283
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@1e
    .line 284
    .local v2, "ngroupsSnapshot":I
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@20
    if-eqz v3, :cond_3

    #@22
    .line 285
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    #@24
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, [Ljava/lang/ThreadGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :goto_1
    monitor-exit p0

    #@2b
    .line 290
    const/4 v1, 0x0

    #@2c
    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    #@2e
    .line 291
    aget-object v3, v0, v1

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    #@33
    .line 290
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_2

    #@36
    .end local v1    # "i":I
    .end local v2    # "ngroupsSnapshot":I
    :cond_2
    move v3, p1

    #@37
    .line 282
    goto :goto_0

    #@38
    .line 287
    .restart local v2    # "ngroupsSnapshot":I
    :cond_3
    const/4 v0, 0x0

    #@39
    .local v0, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_1

    #@3a
    .line 269
    .end local v0    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "ngroupsSnapshot":I
    :catchall_0
    move-exception v3

    #@3b
    monitor-exit p0

    #@3c
    throw v3

    #@3d
    .line 266
    .restart local v1    # "i":I
    .restart local v2    # "ngroupsSnapshot":I
    :cond_4
    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 623
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 624
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    #@e
    .line 622
    :cond_0
    return-void
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 685
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 686
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    #@e
    .line 684
    :cond_0
    return-void
.end method

.method threadStartFailed(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 934
    monitor-enter p0

    #@1
    .line 935
    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    #@4
    .line 936
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 933
    return-void

    #@c
    .line 934
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method threadTerminated(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 952
    monitor-enter p0

    #@1
    .line 953
    :try_start_0
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    #@4
    .line 955
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@6
    if-nez v0, :cond_0

    #@8
    .line 956
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->notifyAll()V

    #@b
    .line 958
    :cond_0
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    #@11
    if-nez v0, :cond_1

    #@13
    .line 959
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    #@15
    if-nez v0, :cond_1

    #@17
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 961
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 951
    return-void

    #@20
    .line 952
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1103
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
    const-string/jumbo v1, ",maxpri="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    iget v1, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string/jumbo v1, "]"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1062
    iget-object v1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 1063
    iget-object v1, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    #@6
    invoke-virtual {v1, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@9
    .line 1061
    :cond_0
    :goto_0
    return-void

    #@a
    .line 1066
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    #@d
    move-result-object v0

    #@e
    .line 1067
    .local v0, "ueh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_2

    #@10
    .line 1068
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    #@13
    goto :goto_0

    #@14
    .line 1069
    :cond_2
    instance-of v1, p2, Ljava/lang/ThreadDeath;

    #@16
    if-nez v1, :cond_0

    #@18
    .line 1070
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v3, "Exception in thread \""

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 1071
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 1071
    const-string/jumbo v3, "\" "

    #@31
    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@3c
    .line 1072
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3e
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    #@41
    goto :goto_0
.end method
