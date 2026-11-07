.class public Ljava/lang/ThreadGroup;
.super Ljava/lang/Object;
.source "ThreadGroup.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final greylist-max-r mainThreadGroup:Ljava/lang/ThreadGroup;

.field static final greylist systemThreadGroup:Ljava/lang/ThreadGroup;


# instance fields
.field greylist-max-o daemon:Z

.field greylist-max-o destroyed:Z

.field greylist groups:[Ljava/lang/ThreadGroup;

.field greylist-max-o maxPriority:I

.field greylist-max-o nUnstartedThreads:I

.field greylist-max-r name:Ljava/lang/String;

.field greylist ngroups:I

.field greylist-max-o nthreads:I

.field private final greylist parent:Ljava/lang/ThreadGroup;

.field greylist-max-o threads:[Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0}, Ljava/lang/ThreadGroup;-><init>()V

    sput-object v0, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    .line 62
    new-instance v0, Ljava/lang/ThreadGroup;

    sget-object v1, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    const-string v2, "main"

    invoke-direct {v0, v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    sput-object v0, Ljava/lang/ThreadGroup;->mainThreadGroup:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 82
    const-string v0, "system"

    iput-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 83
    const/16 v0, 0xa

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 85
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 4
    .param p1, "parent"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .line 122
    invoke-static {p1}, Ljava/lang/ThreadGroup;->checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Void;Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .registers 5
    .param p1, "unused"    # Ljava/lang/Void;
    .param p2, "parent"    # Ljava/lang/ThreadGroup;
    .param p3, "name"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 126
    iput-object p3, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    .line 127
    iget v0, p2, Ljava/lang/ThreadGroup;->maxPriority:I

    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 128
    iget-boolean v0, p2, Ljava/lang/ThreadGroup;->daemon:Z

    iput-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    .line 129
    iput-object p2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    .line 130
    invoke-direct {p2, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/ThreadGroup;)V

    .line 131
    return-void
.end method

.method private final greylist-max-o add(Ljava/lang/ThreadGroup;)V
    .registers 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .line 822
    monitor-enter p0

    .line 823
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_32

    .line 826
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-nez v0, :cond_f

    .line 827
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    goto :goto_24

    .line 828
    :cond_f
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    array-length v1, v1

    if-ne v0, v1, :cond_24

    .line 829
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ThreadGroup;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    .line 831
    :cond_24
    :goto_24
    iget-object v0, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    aput-object p1, v0, v1

    .line 835
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 836
    monitor-exit p0

    .line 837
    return-void

    .line 824
    :cond_32
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    .end local p1    # "g":Ljava/lang/ThreadGroup;
    throw v0

    .line 836
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    .restart local p1    # "g":Ljava/lang/ThreadGroup;
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private static greylist-max-o checkParentAccess(Ljava/lang/ThreadGroup;)Ljava/lang/Void;
    .registers 2
    .param p0, "parent"    # Ljava/lang/ThreadGroup;

    .line 139
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o enumerate([Ljava/lang/Thread;IZ)I
    .registers 10
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "ngroupsSnapshot":I
    const/4 v1, 0x0

    .line 442
    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 443
    :try_start_3
    iget-boolean v2, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v2, :cond_a

    .line 444
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 446
    :cond_a
    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 447
    .local v2, "nt":I
    array-length v3, p1

    sub-int/2addr v3, p2

    if-le v2, v3, :cond_13

    .line 448
    array-length v3, p1

    sub-int v2, v3, p2

    .line 450
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_30

    .line 451
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_55

    if-eqz v4, :cond_2d

    .line 452
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "n":I
    .local v4, "n":I
    :try_start_22
    iget-object v5, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v3

    aput-object v5, p1, p2
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2a

    move p2, v4

    goto :goto_2d

    .line 463
    .end local v2    # "nt":I
    .end local v3    # "i":I
    :catchall_2a
    move-exception v2

    move p2, v4

    goto :goto_56

    .line 450
    .end local v4    # "n":I
    .restart local v2    # "nt":I
    .restart local v3    # "i":I
    .restart local p2    # "n":I
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 455
    .end local v3    # "i":I
    :cond_30
    if-eqz p3, :cond_44

    .line 456
    :try_start_32
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    move v0, v3

    .line 457
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_43

    .line 458
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ThreadGroup;

    move-object v1, v3

    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .local v3, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_44

    .line 460
    .end local v3    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_43
    const/4 v1, 0x0

    .line 463
    .end local v2    # "nt":I
    :cond_44
    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_55

    .line 464
    if-eqz p3, :cond_54

    .line 465
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_48
    if-ge v2, v0, :cond_54

    .line 466
    aget-object v3, v1, v2

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result p2

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 469
    .end local v2    # "i":I
    :cond_54
    return p2

    .line 463
    :catchall_55
    move-exception v2

    :goto_56
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v2
.end method

.method private greylist-max-o enumerate([Ljava/lang/ThreadGroup;IZ)I
    .registers 9
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "n"    # I
    .param p3, "recurse"    # Z

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "ngroupsSnapshot":I
    const/4 v1, 0x0

    .line 576
    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 577
    :try_start_3
    iget-boolean v2, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 578
    monitor-exit p0

    return v3

    .line 580
    :cond_a
    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 581
    .local v2, "ng":I
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le v2, v4, :cond_13

    .line 582
    array-length v4, p1

    sub-int v2, v4, p2

    .line 584
    :cond_13
    if-lez v2, :cond_1b

    .line 585
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    add-int/2addr p2, v2

    .line 588
    :cond_1b
    if-eqz p3, :cond_2f

    .line 589
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    move v0, v3

    .line 590
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v3, :cond_2e

    .line 591
    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ThreadGroup;

    move-object v1, v3

    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .local v3, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_2f

    .line 593
    .end local v3    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_2e
    const/4 v1, 0x0

    .line 596
    .end local v2    # "ng":I
    :cond_2f
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_40

    .line 597
    if-eqz p3, :cond_3f

    .line 598
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v0, :cond_3f

    .line 599
    aget-object v3, v1, v2

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result p2

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 602
    .end local v2    # "i":I
    :cond_3f
    return p2

    .line 596
    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v2
.end method

.method private greylist-max-o remove(Ljava/lang/Thread;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;

    .line 977
    monitor-enter p0

    .line 978
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_7

    .line 979
    monitor-exit p0

    return-void

    .line 981
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_2d

    .line 982
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2a

    .line 983
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 987
    goto :goto_2d

    .line 981
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 990
    .end local v0    # "i":I
    :cond_2d
    :goto_2d
    monitor-exit p0

    .line 991
    return-void

    .line 990
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private greylist-max-o remove(Ljava/lang/ThreadGroup;)V
    .registers 7
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .line 845
    monitor-enter p0

    .line 846
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_7

    .line 847
    monitor-exit p0

    return-void

    .line 849
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-ge v0, v1, :cond_2f

    .line 850
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2c

    .line 851
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 852
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v4, p0, Ljava/lang/ThreadGroup;->ngroups:I

    sub-int/2addr v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    iget v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 856
    goto :goto_2f

    .line 849
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 859
    .end local v0    # "i":I
    :cond_2f
    :goto_2f
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_36

    .line 860
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 862
    :cond_36
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v0, :cond_49

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_49

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v0, :cond_49

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v0, :cond_49

    .line 865
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 867
    :cond_49
    monitor-exit p0

    .line 868
    return-void

    .line 867
    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method private greylist-max-o stopOrSuspend(Z)Z
    .registers 8
    .param p1, "suspend"    # Z

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "suicide":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 705
    .local v1, "us":Ljava/lang/Thread;
    const/4 v2, 0x0

    .line 706
    .local v2, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    monitor-enter p0

    .line 707
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 708
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget v4, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v3, v4, :cond_2b

    .line 709
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    if-ne v4, v1, :cond_17

    .line 710
    const/4 v0, 0x1

    goto :goto_28

    .line 711
    :cond_17
    if-eqz p1, :cond_21

    .line 712
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->suspend()V

    goto :goto_28

    .line 714
    :cond_21
    iget-object v4, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Thread;->stop()V

    .line 708
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 717
    .end local v3    # "i":I
    :cond_2b
    iget v3, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 718
    .local v3, "ngroupsSnapshot":I
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v4, :cond_3a

    .line 719
    iget-object v4, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/ThreadGroup;

    move-object v2, v4

    .line 721
    :cond_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_51

    .line 722
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    if-ge v4, v3, :cond_50

    .line 723
    aget-object v5, v2, v4

    invoke-direct {v5, p1}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v5

    if-nez v5, :cond_4b

    if-eqz v0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v5, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v5, 0x1

    :goto_4c
    move v0, v5

    .line 722
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 725
    .end local v4    # "i":I
    :cond_50
    return v0

    .line 721
    .end local v3    # "ngroupsSnapshot":I
    :catchall_51
    move-exception v3

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v3
.end method


# virtual methods
.method public whitelist test-api activeCount()I
    .registers 6

    .line 356
    monitor-enter p0

    .line 357
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_8

    .line 358
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 360
    :cond_8
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 361
    .local v0, "result":I
    iget v1, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 362
    .local v1, "ngroupsSnapshot":I
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v2, :cond_19

    .line 363
    iget-object v2, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/ThreadGroup;

    .local v2, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_1a

    .line 365
    .end local v2    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_19
    const/4 v2, 0x0

    .line 367
    .restart local v2    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_29

    .line 368
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v1, :cond_28

    .line 369
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 368
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 371
    .end local v3    # "i":I
    :cond_28
    return v0

    .line 367
    .end local v0    # "result":I
    .end local v1    # "ngroupsSnapshot":I
    .end local v2    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public whitelist test-api activeGroupCount()I
    .registers 6

    .line 490
    monitor-enter p0

    .line 491
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-eqz v0, :cond_8

    .line 492
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 494
    :cond_8
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 495
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_17

    .line 496
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_18

    .line 498
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_17
    const/4 v1, 0x0

    .line 500
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_28

    .line 501
    move v2, v0

    .line 502
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    if-ge v3, v0, :cond_27

    .line 503
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 505
    .end local v3    # "i":I
    :cond_27
    return v2

    .line 500
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    .end local v2    # "n":I
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method greylist-max-r add(Ljava/lang/Thread;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;

    .line 901
    monitor-enter p0

    .line 902
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_38

    .line 905
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    if-nez v0, :cond_f

    .line 906
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    goto :goto_24

    .line 907
    :cond_f
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    array-length v1, v1

    if-ne v0, v1, :cond_24

    .line 908
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Thread;

    iput-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    .line 910
    :cond_24
    :goto_24
    iget-object v0, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    aput-object p1, v0, v1

    .line 914
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 920
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 921
    monitor-exit p0

    .line 922
    return-void

    .line 903
    :cond_38
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    .end local p1    # "t":Ljava/lang/Thread;
    throw v0

    .line 921
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    .restart local p1    # "t":Ljava/lang/Thread;
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method greylist-max-o addUnstarted()V
    .registers 2

    .line 879
    monitor-enter p0

    .line 880
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_d

    .line 883
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 884
    monitor-exit p0

    .line 885
    return-void

    .line 881
    :cond_d
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    throw v0

    .line 884
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public whitelist test-api allowThreadSuspension(Z)Z
    .registers 3
    .param p1, "b"    # Z
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 1092
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist test-api checkAccess()V
    .registers 1

    .line 331
    return-void
.end method

.method public final whitelist test-api destroy()V
    .registers 5

    .line 789
    monitor-enter p0

    .line 790
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 791
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    if-nez v0, :cond_43

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-gtz v0, :cond_43

    .line 794
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 795
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_1b

    .line 796
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_1c

    .line 798
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_1b
    const/4 v1, 0x0

    .line 800
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_1c
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v2, :cond_2d

    .line 801
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/ThreadGroup;->destroyed:Z

    .line 802
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 803
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    .line 804
    iput v2, p0, Ljava/lang/ThreadGroup;->nthreads:I

    .line 805
    iput-object v3, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    .line 807
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_49

    .line 808
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v0, :cond_39

    .line 809
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->destroy()V

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 811
    .end local v2    # "i":I
    :cond_39
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v2, :cond_42

    .line 812
    iget-object v2, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-direct {v2, p0}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/ThreadGroup;)V

    .line 814
    :cond_42
    return-void

    .line 792
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    .end local p0    # "this":Ljava/lang/ThreadGroup;
    throw v0

    .line 807
    .restart local p0    # "this":Ljava/lang/ThreadGroup;
    :catchall_49
    move-exception v0

    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/Thread;)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/Thread;

    .line 397
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 398
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/Thread;Z)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/Thread;
    .param p2, "recurse"    # Z

    .line 435
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/ThreadGroup;)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/ThreadGroup;

    .line 531
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 532
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api enumerate([Ljava/lang/ThreadGroup;Z)I
    .registers 4
    .param p1, "list"    # [Ljava/lang/ThreadGroup;
    .param p2, "recurse"    # Z

    .line 569
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getMaxPriority()I
    .registers 2

    .line 186
    iget v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    return v0
.end method

.method public final whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Ljava/lang/ThreadGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getParent()Ljava/lang/ThreadGroup;
    .registers 2

    .line 170
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_9

    .line 171
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 172
    :cond_9
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public final whitelist test-api interrupt()V
    .registers 5

    .line 650
    monitor-enter p0

    .line 651
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_13

    .line 653
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 655
    .end local v0    # "i":I
    :cond_13
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 656
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_22

    .line 657
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_23

    .line 659
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_22
    const/4 v1, 0x0

    .line 661
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    .line 662
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_2f

    .line 663
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 665
    .end local v2    # "i":I
    :cond_2f
    return-void

    .line 661
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public final whitelist test-api isDaemon()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    return v0
.end method

.method public declared-synchronized whitelist test-api isDestroyed()Z
    .registers 2

    monitor-enter p0

    .line 209
    :try_start_1
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->destroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 209
    .end local p0    # "this":Ljava/lang/ThreadGroup;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public whitelist test-api list()V
    .registers 3

    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    .line 1001
    return-void
.end method

.method greylist-max-o list(Ljava/io/PrintStream;I)V
    .registers 7
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "indent"    # I

    .line 1005
    monitor-enter p0

    .line 1006
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-ge v0, p2, :cond_c

    .line 1007
    :try_start_4
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1009
    .end local v0    # "j":I
    :cond_c
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1010
    add-int/lit8 p2, p2, 0x4

    .line 1011
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_2b

    .line 1012
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_17
    if-ge v1, p2, :cond_21

    .line 1013
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1015
    .end local v1    # "j":I
    :cond_21
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1017
    .end local v0    # "i":I
    :cond_2b
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 1018
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_3a

    .line 1019
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_3b

    .line 1021
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_3a
    const/4 v1, 0x0

    .line 1023
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_48

    .line 1024
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v0, :cond_47

    .line 1025
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ljava/lang/ThreadGroup;->list(Ljava/io/PrintStream;I)V

    .line 1024
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1027
    .end local v2    # "i":I
    :cond_47
    return-void

    .line 1023
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public final whitelist test-api parentOf(Ljava/lang/ThreadGroup;)Z
    .registers 3
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .line 304
    nop

    :goto_1
    if-eqz p1, :cond_a

    .line 305
    if-ne p1, p0, :cond_7

    .line 306
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_7
    iget-object p1, p1, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    goto :goto_1

    .line 309
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api resume()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 754
    monitor-enter p0

    .line 755
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 756
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-ge v0, v1, :cond_13

    .line 757
    iget-object v1, p0, Ljava/lang/ThreadGroup;->threads:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->resume()V

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 759
    .end local v0    # "i":I
    :cond_13
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 760
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_22

    .line 761
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_23

    .line 763
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_22
    const/4 v1, 0x0

    .line 765
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    .line 766
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-ge v2, v0, :cond_2f

    .line 767
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/ThreadGroup;->resume()V

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 769
    .end local v2    # "i":I
    :cond_2f
    return-void

    .line 765
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public final whitelist test-api setDaemon(Z)V
    .registers 2
    .param p1, "daemon"    # Z

    .line 231
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 232
    iput-boolean p1, p0, Ljava/lang/ThreadGroup;->daemon:Z

    .line 233
    return-void
.end method

.method public final whitelist test-api setMaxPriority(I)V
    .registers 6
    .param p1, "pri"    # I

    .line 265
    monitor-enter p0

    .line 266
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->checkAccess()V

    .line 272
    const/4 v0, 0x1

    if-ge p1, v0, :cond_8

    .line 273
    const/4 p1, 0x1

    .line 275
    :cond_8
    const/16 v0, 0xa

    if-le p1, v0, :cond_e

    .line 276
    const/16 p1, 0xa

    .line 280
    :cond_e
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    iget v0, v0, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1c

    :cond_1b
    move v0, p1

    :goto_1c
    iput v0, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    .line 281
    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    .line 282
    .local v0, "ngroupsSnapshot":I
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    if-eqz v1, :cond_2d

    .line 283
    iget-object v1, p0, Ljava/lang/ThreadGroup;->groups:[Ljava/lang/ThreadGroup;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/ThreadGroup;

    .local v1, "groupsSnapshot":[Ljava/lang/ThreadGroup;
    goto :goto_2e

    .line 285
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :cond_2d
    const/4 v1, 0x0

    .line 287
    .restart local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3b

    .line 288
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v0, :cond_3a

    .line 289
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/ThreadGroup;->setMaxPriority(I)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 291
    .end local v2    # "i":I
    :cond_3a
    return-void

    .line 287
    .end local v0    # "ngroupsSnapshot":I
    .end local v1    # "groupsSnapshot":[Ljava/lang/ThreadGroup;
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public final whitelist test-api stop()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 627
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 628
    :cond_e
    return-void
.end method

.method public final whitelist test-api suspend()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "1.2"
    .end annotation

    .line 689
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;->stopOrSuspend(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 690
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->suspend()V

    .line 691
    :cond_e
    return-void
.end method

.method greylist-max-o threadStartFailed(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .line 937
    monitor-enter p0

    .line 938
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 939
    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    .line 940
    monitor-exit p0

    .line 941
    return-void

    .line 940
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method greylist-max-r threadTerminated(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .line 955
    monitor-enter p0

    .line 956
    :try_start_1
    invoke-direct {p0, p1}, Ljava/lang/ThreadGroup;->remove(Ljava/lang/Thread;)V

    .line 958
    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_b

    .line 959
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 961
    :cond_b
    iget-boolean v0, p0, Ljava/lang/ThreadGroup;->daemon:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->nthreads:I

    if-nez v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->nUnstartedThreads:I

    if-nez v0, :cond_1e

    iget v0, p0, Ljava/lang/ThreadGroup;->ngroups:I

    if-nez v0, :cond_1e

    .line 964
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->destroy()V

    .line 966
    :cond_1e
    monitor-exit p0

    .line 967
    return-void

    .line 966
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",maxpri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/lang/ThreadGroup;->maxPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1065
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_a

    .line 1066
    iget-object v0, p0, Ljava/lang/ThreadGroup;->parent:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 1069
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 1070
    .local v0, "ueh":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_14

    .line 1071
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 1072
    :cond_14
    instance-of v1, p2, Ljava/lang/ThreadDeath;

    if-nez v1, :cond_3f

    .line 1073
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in thread \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1074
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1075
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1078
    .end local v0    # "ueh":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_3f
    :goto_3f
    return-void
.end method
