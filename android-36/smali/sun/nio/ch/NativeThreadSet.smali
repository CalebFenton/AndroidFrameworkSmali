.class Lsun/nio/ch/NativeThreadSet;
.super Ljava/lang/Object;
.source "NativeThreadSet.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist elts:[J

.field private blacklist used:I

.field private blacklist waitingToEmpty:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 32
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "n"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 39
    new-array v0, p1, [J

    iput-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    .line 40
    return-void
.end method


# virtual methods
.method blacklist add()I
    .registers 11

    .line 46
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v0

    .line 48
    .local v0, "th":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    .line 49
    const-wide/16 v0, -0x1

    .line 50
    :cond_c
    monitor-enter p0

    .line 51
    const/4 v4, 0x0

    .line 52
    .local v4, "start":I
    :try_start_e
    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    iget-object v6, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v6, v6

    if-lt v5, v6, :cond_25

    .line 53
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v5, v5

    .line 54
    .local v5, "on":I
    mul-int/lit8 v6, v5, 0x2

    .line 55
    .local v6, "nn":I
    new-array v7, v6, [J

    .line 56
    .local v7, "nelts":[J
    iget-object v8, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iput-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    .line 58
    move v4, v5

    .line 60
    .end local v5    # "on":I
    .end local v6    # "nn":I
    .end local v7    # "nelts":[J
    :cond_25
    move v5, v4

    .local v5, "i":I
    :goto_26
    iget-object v6, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v6, v6

    if-ge v5, v6, :cond_42

    .line 61
    iget-object v6, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aget-wide v6, v6, v5

    cmp-long v6, v6, v2

    if-nez v6, :cond_3f

    .line 62
    iget-object v2, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aput-wide v0, v2, v5

    .line 63
    iget v2, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 64
    monitor-exit p0

    return v5

    .line 60
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 67
    .end local v5    # "i":I
    :cond_42
    nop

    .line 68
    monitor-exit p0

    const/4 v2, -0x1

    return v2

    .line 69
    .end local v4    # "start":I
    :catchall_46
    move-exception v2

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_e .. :try_end_48} :catchall_46

    throw v2
.end method

.method blacklist remove(I)V
    .registers 5
    .param p1, "i"    # I

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 77
    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 78
    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    if-eqz v0, :cond_18

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    :cond_18
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method declared-synchronized blacklist signalAndWait()V
    .registers 9

    monitor-enter p0

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "interrupted":Z
    :goto_2
    :try_start_2
    iget v1, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    if-lez v1, :cond_3e

    .line 88
    iget v1, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 89
    .local v1, "u":I
    iget-object v2, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v2, v2

    .line 90
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_2a

    .line 91
    iget-object v4, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aget-wide v4, v4, v3

    .line 92
    .local v4, "th":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_19

    .line 93
    goto :goto_27

    .line 94
    :cond_19
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_22

    .line 95
    invoke-static {v4, v5}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 96
    .end local p0    # "this":Lsun/nio/ch/NativeThreadSet;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_27

    .line 97
    goto :goto_2a

    .line 90
    .end local v4    # "th":J
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 99
    .end local v3    # "i":I
    :cond_2a
    :goto_2a
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_49

    .line 101
    const-wide/16 v3, 0x32

    const/4 v5, 0x0

    :try_start_30
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_3a
    .catchall {:try_start_30 .. :try_end_33} :catchall_36

    .line 105
    :goto_33
    :try_start_33
    iput-boolean v5, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    .line 106
    goto :goto_3d

    .line 105
    :catchall_36
    move-exception v3

    iput-boolean v5, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    .line 106
    throw v3

    .line 102
    :catch_3a
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_33

    .line 107
    .end local v1    # "u":I
    .end local v2    # "n":I
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_3d
    goto :goto_2

    .line 108
    :cond_3e
    if-eqz v0, :cond_47

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_49

    .line 110
    :cond_47
    monitor-exit p0

    return-void

    .line 85
    .end local v0    # "interrupted":Z
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method
