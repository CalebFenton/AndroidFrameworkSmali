.class Ljava/util/TaskQueue;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private queue:[Ljava/util/TimerTask;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/TaskQueue;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/TaskQueue;->-assertionsDisabled:Z

    #@b
    .line 569
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 578
    const/16 v0, 0x80

    #@5
    new-array v0, v0, [Ljava/util/TimerTask;

    #@7
    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@9
    .line 584
    const/4 v0, 0x0

    #@a
    iput v0, p0, Ljava/util/TaskQueue;->size:I

    #@c
    .line 569
    return-void
.end method

.method private fixDown(I)V
    .locals 6
    .param p1, "k"    # I

    #@0
    .prologue
    .line 701
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    #@2
    .local v0, "j":I
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    #@4
    if-gt v0, v2, :cond_1

    #@6
    if-lez v0, :cond_1

    #@8
    .line 702
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 703
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@e
    aget-object v2, v2, v0

    #@10
    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    #@12
    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@14
    add-int/lit8 v5, v0, 0x1

    #@16
    aget-object v4, v4, v5

    #@18
    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    #@1a
    cmp-long v2, v2, v4

    #@1c
    if-lez v2, :cond_0

    #@1e
    .line 704
    add-int/lit8 v0, v0, 0x1

    #@20
    .line 705
    :cond_0
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@22
    aget-object v2, v2, p1

    #@24
    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    #@26
    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@28
    aget-object v4, v4, v0

    #@2a
    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    #@2c
    cmp-long v2, v2, v4

    #@2e
    if-gtz v2, :cond_2

    #@30
    .line 699
    :cond_1
    return-void

    #@31
    .line 707
    :cond_2
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@33
    aget-object v1, v2, v0

    #@35
    .local v1, "tmp":Ljava/util/TimerTask;
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@37
    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@39
    aget-object v3, v3, p1

    #@3b
    aput-object v3, v2, v0

    #@3d
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@3f
    aput-object v1, v2, p1

    #@41
    .line 708
    move p1, v0

    #@42
    goto :goto_0
.end method

.method private fixUp(I)V
    .locals 6
    .param p1, "k"    # I

    #@0
    .prologue
    .line 680
    :goto_0
    const/4 v2, 0x1

    #@1
    if-le p1, v2, :cond_0

    #@3
    .line 681
    shr-int/lit8 v0, p1, 0x1

    #@5
    .line 682
    .local v0, "j":I
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@7
    aget-object v2, v2, v0

    #@9
    iget-wide v2, v2, Ljava/util/TimerTask;->nextExecutionTime:J

    #@b
    iget-object v4, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@d
    aget-object v4, v4, p1

    #@f
    iget-wide v4, v4, Ljava/util/TimerTask;->nextExecutionTime:J

    #@11
    cmp-long v2, v2, v4

    #@13
    if-gtz v2, :cond_1

    #@15
    .line 679
    .end local v0    # "j":I
    :cond_0
    return-void

    #@16
    .line 684
    .restart local v0    # "j":I
    :cond_1
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@18
    aget-object v1, v2, v0

    #@1a
    .local v1, "tmp":Ljava/util/TimerTask;
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@1c
    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@1e
    aget-object v3, v3, p1

    #@20
    aput-object v3, v2, v0

    #@22
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@24
    aput-object v1, v2, p1

    #@26
    .line 685
    move p1, v0

    #@27
    goto :goto_0
.end method


# virtual methods
.method add(Ljava/util/TimerTask;)V
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;

    #@0
    .prologue
    .line 598
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@6
    array-length v1, v1

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 599
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@b
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@d
    array-length v1, v1

    #@e
    mul-int/lit8 v1, v1, 0x2

    #@10
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, [Ljava/util/TimerTask;

    #@16
    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@18
    .line 601
    :cond_0
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@1a
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    iput v1, p0, Ljava/util/TaskQueue;->size:I

    #@20
    aput-object p1, v0, v1

    #@22
    .line 602
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    #@24
    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixUp(I)V

    #@27
    .line 596
    return-void
.end method

.method clear()V
    .locals 3

    #@0
    .prologue
    .line 664
    const/4 v0, 0x1

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    #@3
    if-gt v0, v1, :cond_0

    #@5
    .line 665
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v2, v1, v0

    #@a
    .line 664
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 667
    :cond_0
    const/4 v1, 0x0

    #@e
    iput v1, p0, Ljava/util/TaskQueue;->size:I

    #@10
    .line 662
    return-void
.end method

.method get(I)Ljava/util/TimerTask;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 619
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method getMin()Ljava/util/TimerTask;
    .locals 2

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@2
    const/4 v1, 0x1

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method heapify()V
    .locals 2

    #@0
    .prologue
    .line 717
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    #@2
    div-int/lit8 v0, v1, 0x2

    #@4
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 718
    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixDown(I)V

    #@a
    .line 717
    add-int/lit8 v0, v0, -0x1

    #@c
    goto :goto_0

    #@d
    .line 716
    :cond_0
    return-void
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 656
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method quickRemove(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 637
    sget-boolean v0, Ljava/util/TaskQueue;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    #@6
    if-gt p1, v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 639
    :cond_1
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@15
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@17
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    #@19
    aget-object v1, v1, v2

    #@1b
    aput-object v1, v0, p1

    #@1d
    .line 640
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@1f
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    #@21
    add-int/lit8 v2, v1, -0x1

    #@23
    iput v2, p0, Ljava/util/TaskQueue;->size:I

    #@25
    const/4 v2, 0x0

    #@26
    aput-object v2, v0, v1

    #@28
    .line 636
    return-void
.end method

.method removeMin()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 626
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@3
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@5
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    #@7
    aget-object v1, v1, v2

    #@9
    aput-object v1, v0, v3

    #@b
    .line 627
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@d
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    #@f
    add-int/lit8 v2, v1, -0x1

    #@11
    iput v2, p0, Ljava/util/TaskQueue;->size:I

    #@13
    const/4 v2, 0x0

    #@14
    aput-object v2, v0, v1

    #@16
    .line 628
    invoke-direct {p0, v3}, Ljava/util/TaskQueue;->fixDown(I)V

    #@19
    .line 625
    return-void
.end method

.method rescheduleMin(J)V
    .locals 3
    .param p1, "newTime"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 648
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    #@3
    aget-object v0, v0, v1

    #@5
    iput-wide p1, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    #@7
    .line 649
    invoke-direct {p0, v1}, Ljava/util/TaskQueue;->fixDown(I)V

    #@a
    .line 647
    return-void
.end method

.method size()I
    .locals 1

    #@0
    .prologue
    .line 590
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    #@2
    return v0
.end method
