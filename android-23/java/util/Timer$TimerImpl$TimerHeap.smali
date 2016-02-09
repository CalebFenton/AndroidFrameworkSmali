.class final Ljava/util/Timer$TimerImpl$TimerHeap;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer$TimerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimerHeap"
.end annotation


# instance fields
.field private DEFAULT_HEAP_SIZE:I

.field private deletedCancelledNumber:I

.field private size:I

.field private timers:[Ljava/util/TimerTask;


# direct methods
.method static synthetic -get0(Ljava/util/Timer$TimerImpl$TimerHeap;)I
    .locals 1

    #@0
    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    #@2
    return v0
.end method

.method static synthetic -set0(Ljava/util/Timer$TimerImpl$TimerHeap;I)I
    .locals 0

    #@0
    iput p1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Ljava/util/Timer$TimerImpl$TimerHeap;Ljava/util/TimerTask;)I
    .locals 1
    .param p1, "task"    # Ljava/util/TimerTask;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->getTask(Ljava/util/TimerTask;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    const/16 v0, 0x100

    #@6
    iput v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    #@8
    .line 59
    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    #@a
    new-array v0, v0, [Ljava/util/TimerTask;

    #@c
    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@e
    .line 61
    iput v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@10
    .line 63
    iput v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    #@12
    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Timer$TimerImpl$TimerHeap;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/Timer$TimerImpl$TimerHeap;-><init>()V

    #@3
    return-void
.end method

.method private downHeap(I)V
    .locals 8
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 109
    move v1, p1

    #@1
    .line 110
    .local v1, "current":I
    mul-int/lit8 v3, v1, 0x2

    #@3
    add-int/lit8 v0, v3, 0x1

    #@5
    .line 112
    .local v0, "child":I
    :goto_0
    iget v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@7
    if-ge v0, v3, :cond_1

    #@9
    iget v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@b
    if-lez v3, :cond_1

    #@d
    .line 114
    add-int/lit8 v3, v0, 0x1

    #@f
    iget v4, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@11
    if-ge v3, v4, :cond_0

    #@13
    .line 115
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@15
    add-int/lit8 v4, v0, 0x1

    #@17
    aget-object v3, v3, v4

    #@19
    iget-wide v4, v3, Ljava/util/TimerTask;->when:J

    #@1b
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@1d
    aget-object v3, v3, v0

    #@1f
    iget-wide v6, v3, Ljava/util/TimerTask;->when:J

    #@21
    cmp-long v3, v4, v6

    #@23
    if-gez v3, :cond_0

    #@25
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@27
    .line 120
    :cond_0
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@29
    aget-object v3, v3, v1

    #@2b
    iget-wide v4, v3, Ljava/util/TimerTask;->when:J

    #@2d
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@2f
    aget-object v3, v3, v0

    #@31
    iget-wide v6, v3, Ljava/util/TimerTask;->when:J

    #@33
    cmp-long v3, v4, v6

    #@35
    if-gez v3, :cond_2

    #@37
    .line 108
    :cond_1
    return-void

    #@38
    .line 125
    :cond_2
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@3a
    aget-object v2, v3, v1

    #@3c
    .line 126
    .local v2, "tmp":Ljava/util/TimerTask;
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@3e
    iget-object v4, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@40
    aget-object v4, v4, v0

    #@42
    aput-object v4, v3, v1

    #@44
    .line 127
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@46
    aput-object v2, v3, v0

    #@48
    .line 130
    move v1, v0

    #@49
    .line 131
    mul-int/lit8 v3, v1, 0x2

    #@4b
    add-int/lit8 v0, v3, 0x1

    #@4d
    goto :goto_0
.end method

.method private getTask(Ljava/util/TimerTask;)I
    .locals 2
    .param p1, "task"    # Ljava/util/TimerTask;

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 157
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@8
    aget-object v1, v1, v0

    #@a
    if-ne v1, p1, :cond_0

    #@c
    .line 158
    return v0

    #@d
    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 161
    :cond_1
    const/4 v1, -0x1

    #@11
    return v1
.end method

.method private upHeap()V
    .locals 8

    #@0
    .prologue
    .line 93
    iget v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@2
    add-int/lit8 v0, v3, -0x1

    #@4
    .line 94
    .local v0, "current":I
    add-int/lit8 v3, v0, -0x1

    #@6
    div-int/lit8 v1, v3, 0x2

    #@8
    .line 96
    .local v1, "parent":I
    :goto_0
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@a
    aget-object v3, v3, v0

    #@c
    iget-wide v4, v3, Ljava/util/TimerTask;->when:J

    #@e
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@10
    aget-object v3, v3, v1

    #@12
    iget-wide v6, v3, Ljava/util/TimerTask;->when:J

    #@14
    cmp-long v3, v4, v6

    #@16
    if-gez v3, :cond_0

    #@18
    .line 98
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@1a
    aget-object v2, v3, v0

    #@1c
    .line 99
    .local v2, "tmp":Ljava/util/TimerTask;
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@1e
    iget-object v4, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@20
    aget-object v4, v4, v1

    #@22
    aput-object v4, v3, v0

    #@24
    .line 100
    iget-object v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@26
    aput-object v2, v3, v1

    #@28
    .line 103
    move v0, v1

    #@29
    .line 104
    add-int/lit8 v3, v0, -0x1

    #@2b
    div-int/lit8 v1, v3, 0x2

    #@2d
    goto :goto_0

    #@2e
    .line 92
    .end local v2    # "tmp":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustMinimum()V
    .locals 1

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->downHeap(I)V

    #@4
    .line 140
    return-void
.end method

.method public delete(I)V
    .locals 3
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 85
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 86
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@8
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@a
    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@c
    add-int/lit8 v2, v2, -0x1

    #@e
    iput v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@10
    aget-object v1, v1, v2

    #@12
    aput-object v1, v0, p1

    #@14
    .line 87
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@16
    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@18
    const/4 v2, 0x0

    #@19
    aput-object v2, v0, v1

    #@1b
    .line 88
    invoke-direct {p0, p1}, Ljava/util/Timer$TimerImpl$TimerHeap;->downHeap(I)V

    #@1e
    .line 83
    :cond_0
    return-void
.end method

.method public deleteIfCancelled()V
    .locals 2

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 146
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@7
    aget-object v1, v1, v0

    #@9
    iget-boolean v1, v1, Ljava/util/TimerTask;->cancelled:Z

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 147
    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->deletedCancelledNumber:I

    #@13
    .line 148
    invoke-virtual {p0, v0}, Ljava/util/Timer$TimerImpl$TimerHeap;->delete(I)V

    #@16
    .line 150
    add-int/lit8 v0, v0, -0x1

    #@18
    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 144
    :cond_1
    return-void
.end method

.method public insert(Ljava/util/TimerTask;)V
    .locals 4
    .param p1, "task"    # Ljava/util/TimerTask;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 74
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@3
    array-length v1, v1

    #@4
    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 75
    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@a
    mul-int/lit8 v1, v1, 0x2

    #@c
    new-array v0, v1, [Ljava/util/TimerTask;

    #@e
    .line 76
    .local v0, "appendedTimers":[Ljava/util/TimerTask;
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@10
    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@12
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    .line 77
    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@17
    .line 79
    .end local v0    # "appendedTimers":[Ljava/util/TimerTask;
    :cond_0
    iget-object v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@19
    iget v2, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    iput v3, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@1f
    aput-object p1, v1, v2

    #@21
    .line 80
    invoke-direct {p0}, Ljava/util/Timer$TimerImpl$TimerHeap;->upHeap()V

    #@24
    .line 73
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 70
    iget v1, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public minimum()Ljava/util/TimerTask;
    .locals 2

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->DEFAULT_HEAP_SIZE:I

    #@2
    new-array v0, v0, [Ljava/util/TimerTask;

    #@4
    iput-object v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->timers:[Ljava/util/TimerTask;

    #@6
    .line 137
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/util/Timer$TimerImpl$TimerHeap;->size:I

    #@9
    .line 135
    return-void
.end method
