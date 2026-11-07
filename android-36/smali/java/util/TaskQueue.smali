.class Ljava/util/TaskQueue;
.super Ljava/lang/Object;
.source "Timer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o queue:[Ljava/util/TimerTask;

.field private greylist-max-o size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 648
    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    .line 663
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TaskQueue;->size:I

    return-void
.end method

.method private greylist-max-o fixDown(I)V
    .registers 8
    .param p1, "k"    # I

    .line 780
    nop

    :goto_1
    shl-int/lit8 v0, p1, 0x1

    move v1, v0

    .local v1, "j":I
    iget v2, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v2, :cond_45

    if-lez v1, :cond_45

    .line 781
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    if-ge v1, v0, :cond_22

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    iget-wide v2, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    add-int/lit8 v4, v1, 0x1

    aget-object v0, v0, v4

    iget-wide v4, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_22

    .line 783
    add-int/lit8 v1, v1, 0x1

    .line 784
    :cond_22
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, p1

    iget-wide v2, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    iget-wide v4, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_33

    .line 785
    goto :goto_45

    .line 786
    :cond_33
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, v1

    .local v0, "tmp":Ljava/util/TimerTask;
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    aput-object v3, v2, v1

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aput-object v0, v2, p1

    .line 787
    move p1, v1

    .line 788
    .end local v0    # "tmp":Ljava/util/TimerTask;
    goto :goto_1

    .line 789
    :cond_45
    :goto_45
    return-void
.end method

.method private greylist-max-o fixUp(I)V
    .registers 7
    .param p1, "k"    # I

    .line 759
    nop

    :goto_1
    const/4 v0, 0x1

    if-le p1, v0, :cond_29

    .line 760
    shr-int/lit8 v0, p1, 0x1

    .line 761
    .local v0, "j":I
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v1, v0

    iget-wide v1, v1, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    iget-wide v3, v3, Ljava/util/TimerTask;->nextExecutionTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_17

    .line 762
    goto :goto_29

    .line 763
    :cond_17
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v1, v1, v0

    .local v1, "tmp":Ljava/util/TimerTask;
    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v3, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v3, v3, p1

    aput-object v3, v2, v0

    iget-object v2, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aput-object v1, v2, p1

    .line 764
    move p1, v0

    .line 765
    .end local v0    # "j":I
    .end local v1    # "tmp":Ljava/util/TimerTask;
    goto :goto_1

    .line 766
    :cond_29
    :goto_29
    return-void
.end method


# virtual methods
.method greylist-max-o add(Ljava/util/TimerTask;)V
    .registers 4
    .param p1, "task"    # Ljava/util/TimerTask;

    .line 677
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v1, v1

    if-ne v0, v1, :cond_18

    .line 678
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/TimerTask;

    iput-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    .line 680
    :cond_18
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/TaskQueue;->size:I

    aput-object p1, v0, v1

    .line 681
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixUp(I)V

    .line 682
    return-void
.end method

.method greylist-max-o clear()V
    .registers 4

    .line 743
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/TaskQueue;->size:I

    if-gt v0, v1, :cond_d

    .line 744
    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 746
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TaskQueue;->size:I

    .line 747
    return-void
.end method

.method greylist-max-o get(I)Ljava/util/TimerTask;
    .registers 3
    .param p1, "i"    # I

    .line 698
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    aget-object v0, v0, p1

    return-object v0
.end method

.method greylist-max-o getMin()Ljava/util/TimerTask;
    .registers 3

    .line 689
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method greylist-max-o heapify()V
    .registers 3

    .line 796
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    div-int/lit8 v0, v0, 0x2

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    .line 797
    invoke-direct {p0, v0}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 796
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 798
    .end local v0    # "i":I
    :cond_d
    return-void
.end method

.method greylist-max-o isEmpty()Z
    .registers 2

    .line 735
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o quickRemove(I)V
    .registers 5
    .param p1, "i"    # I

    .line 716
    nop

    .line 718
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 719
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/TaskQueue;->size:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 720
    return-void
.end method

.method greylist-max-o removeMin()V
    .registers 5

    .line 705
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget-object v1, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v2, p0, Ljava/util/TaskQueue;->size:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 706
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    iget v1, p0, Ljava/util/TaskQueue;->size:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljava/util/TaskQueue;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 707
    invoke-direct {p0, v2}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 708
    return-void
.end method

.method greylist-max-o rescheduleMin(J)V
    .registers 5
    .param p1, "newTime"    # J

    .line 727
    iget-object v0, p0, Ljava/util/TaskQueue;->queue:[Ljava/util/TimerTask;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-wide p1, v0, Ljava/util/TimerTask;->nextExecutionTime:J

    .line 728
    invoke-direct {p0, v1}, Ljava/util/TaskQueue;->fixDown(I)V

    .line 729
    return-void
.end method

.method greylist-max-o size()I
    .registers 2

    .line 669
    iget v0, p0, Ljava/util/TaskQueue;->size:I

    return v0
.end method
