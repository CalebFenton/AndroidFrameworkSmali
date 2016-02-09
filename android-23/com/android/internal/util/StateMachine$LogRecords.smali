.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 577
    new-instance v0, Ljava/util/Vector;

    #@6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@b
    .line 578
    const/16 v0, 0x14

    #@d
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    #@f
    .line 579
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@11
    .line 580
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    #@13
    .line 581
    iput-boolean v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    #@15
    .line 586
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$LogRecords;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .locals 8
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "messageInfo"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 660
    :try_start_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    #@7
    .line 661
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@9
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@c
    move-result v1

    #@d
    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    #@f
    if-ge v1, v2, :cond_0

    #@11
    .line 662
    iget-object v7, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@13
    new-instance v0, Lcom/android/internal/util/StateMachine$LogRec;

    #@15
    move-object v1, p1

    #@16
    move-object v2, p2

    #@17
    move-object v3, p3

    #@18
    move-object v4, p4

    #@19
    move-object v5, p5

    #@1a
    move-object v6, p6

    #@1b
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    #@1e
    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :goto_0
    monitor-exit p0

    #@22
    .line 659
    return-void

    #@23
    .line 664
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@25
    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@27
    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    #@2d
    .line 665
    .local v0, "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@2f
    add-int/lit8 v1, v1, 0x1

    #@31
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@33
    .line 666
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@35
    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    #@37
    if-lt v1, v2, :cond_1

    #@39
    .line 667
    const/4 v1, 0x0

    #@3a
    iput v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@3c
    :cond_1
    move-object v1, p1

    #@3d
    move-object v2, p2

    #@3e
    move-object v3, p3

    #@3f
    move-object v4, p4

    #@40
    move-object v5, p5

    #@41
    move-object v6, p6

    #@42
    .line 669
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .end local v0    # "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit p0

    #@48
    throw v1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@3
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 625
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 619
    :try_start_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I
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

.method declared-synchronized get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 635
    :try_start_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    #@3
    add-int v0, v1, p1

    #@5
    .line 636
    .local v0, "nextIndex":I
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    #@7
    if-lt v0, v1, :cond_0

    #@9
    .line 637
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    #@b
    sub-int/2addr v0, v1

    #@c
    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result v1

    #@10
    if-lt v0, v1, :cond_1

    #@12
    .line 640
    const/4 v1, 0x0

    #@13
    monitor-exit p0

    #@14
    return-object v1

    #@15
    .line 642
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    return-object v1

    #@1f
    .end local v0    # "nextIndex":I
    :catchall_0
    move-exception v1

    #@20
    monitor-exit p0

    #@21
    throw v1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 605
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
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

.method declared-synchronized setLogOnlyTransitions(Z)V
    .locals 1
    .param p1, "enable"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 601
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 600
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized setSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 595
    :try_start_0
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    #@3
    .line 596
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    #@6
    .line 597
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 594
    return-void

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    #@3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
