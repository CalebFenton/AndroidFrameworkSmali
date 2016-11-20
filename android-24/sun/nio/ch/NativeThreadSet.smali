.class Lsun/nio/ch/NativeThreadSet;
.super Ljava/lang/Object;
.source "NativeThreadSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private elts:[J

.field private used:I

.field private waitingToEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/NativeThreadSet;

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
    sput-boolean v0, Lsun/nio/ch/NativeThreadSet;->-assertionsDisabled:Z

    #@b
    .line 32
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@6
    .line 39
    new-array v0, p1, [J

    #@8
    iput-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@a
    .line 38
    return-void
.end method


# virtual methods
.method add()I
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 46
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    #@5
    move-result-wide v6

    #@6
    .line 48
    .local v6, "th":J
    cmp-long v5, v6, v10

    #@8
    if-nez v5, :cond_0

    #@a
    .line 49
    const-wide/16 v6, -0x1

    #@c
    .line 50
    :cond_0
    monitor-enter p0

    #@d
    .line 51
    const/4 v4, 0x0

    #@e
    .line 52
    .local v4, "start":I
    :try_start_0
    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@10
    iget-object v8, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@12
    array-length v8, v8

    #@13
    if-lt v5, v8, :cond_1

    #@15
    .line 53
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@17
    array-length v3, v5

    #@18
    .line 54
    .local v3, "on":I
    mul-int/lit8 v2, v3, 0x2

    #@1a
    .line 55
    .local v2, "nn":I
    new-array v1, v2, [J

    #@1c
    .line 56
    .local v1, "nelts":[J
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@1e
    const/4 v8, 0x0

    #@1f
    const/4 v9, 0x0

    #@20
    invoke-static {v5, v8, v1, v9, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@23
    .line 57
    iput-object v1, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@25
    .line 58
    move v4, v3

    #@26
    .line 60
    .end local v1    # "nelts":[J
    .end local v2    # "nn":I
    .end local v3    # "on":I
    :cond_1
    move v0, v4

    #@27
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@29
    array-length v5, v5

    #@2a
    if-ge v0, v5, :cond_3

    #@2c
    .line 61
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@2e
    aget-wide v8, v5, v0

    #@30
    cmp-long v5, v8, v10

    #@32
    if-nez v5, :cond_2

    #@34
    .line 62
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@36
    aput-wide v6, v5, v0

    #@38
    .line 63
    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@3a
    add-int/lit8 v5, v5, 0x1

    #@3c
    iput v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    monitor-exit p0

    #@3f
    .line 64
    return v0

    #@40
    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@42
    goto :goto_0

    #@43
    .line 67
    :cond_3
    :try_start_1
    sget-boolean v5, Lsun/nio/ch/NativeThreadSet;->-assertionsDisabled:Z

    #@45
    if-nez v5, :cond_4

    #@47
    new-instance v5, Ljava/lang/AssertionError;

    #@49
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@4c
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 50
    .end local v0    # "i":I
    :catchall_0
    move-exception v5

    #@4e
    monitor-exit p0

    #@4f
    throw v5

    #@50
    .line 68
    .restart local v0    # "i":I
    :cond_4
    const/4 v5, -0x1

    #@51
    monitor-exit p0

    #@52
    return v5
.end method

.method remove(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 75
    monitor-enter p0

    #@1
    .line 76
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@3
    const-wide/16 v2, 0x0

    #@5
    aput-wide v2, v0, p1

    #@7
    .line 77
    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@d
    .line 78
    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@f
    if-nez v0, :cond_0

    #@11
    iget-boolean v0, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 79
    invoke-virtual {p0}, Lsun/nio/ch/NativeThreadSet;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 74
    return-void

    #@1a
    .line 75
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
.end method

.method signalAndWait()V
    .locals 10

    #@0
    .prologue
    .line 86
    monitor-enter p0

    #@1
    .line 87
    :try_start_0
    iget v6, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    #@3
    .line 88
    .local v6, "u":I
    iget-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@5
    array-length v3, v7

    #@6
    .line 89
    .local v3, "n":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@9
    .line 90
    iget-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    #@b
    aget-wide v4, v7, v1

    #@d
    .line 91
    .local v4, "th":J
    const-wide/16 v8, 0x0

    #@f
    cmp-long v7, v4, v8

    #@11
    if-nez v7, :cond_1

    #@13
    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 93
    :cond_1
    const-wide/16 v8, -0x1

    #@18
    cmp-long v7, v4, v8

    #@1a
    if-eqz v7, :cond_2

    #@1c
    .line 94
    invoke-static {v4, v5}, Lsun/nio/ch/NativeThread;->signal(J)V

    #@1f
    .line 95
    :cond_2
    add-int/lit8 v6, v6, -0x1

    #@21
    if-nez v6, :cond_0

    #@23
    .line 98
    .end local v4    # "th":J
    :cond_3
    const/4 v7, 0x1

    #@24
    iput-boolean v7, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    #@26
    .line 99
    const/4 v2, 0x0

    #@27
    .line 100
    .local v2, "interrupted":Z
    :goto_1
    iget v7, p0, Lsun/nio/ch/NativeThreadSet;->used:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    if-lez v7, :cond_4

    #@2b
    .line 102
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/NativeThreadSet;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    goto :goto_1

    #@2f
    .line 103
    :catch_0
    move-exception v0

    #@30
    .line 104
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    #@31
    goto :goto_1

    #@32
    .line 107
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    if-eqz v2, :cond_5

    #@34
    .line 108
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@37
    move-result-object v7

    #@38
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    :cond_5
    monitor-exit p0

    #@3c
    .line 85
    return-void

    #@3d
    .line 86
    .end local v1    # "i":I
    .end local v2    # "interrupted":Z
    .end local v3    # "n":I
    .end local v6    # "u":I
    :catchall_0
    move-exception v7

    #@3e
    monitor-exit p0

    #@3f
    throw v7
.end method
