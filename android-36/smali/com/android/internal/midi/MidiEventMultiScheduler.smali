.class public Lcom/android/internal/midi/MidiEventMultiScheduler;
.super Ljava/lang/Object;
.source "MidiEventMultiScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;
    }
.end annotation


# instance fields
.field private blacklist mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

.field private final blacklist mMultiLock:Ljava/lang/Object;

.field private blacklist mNumClosedSchedulers:I

.field private blacklist mNumEventSchedulers:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMultiLock(Lcom/android/internal/midi/MidiEventMultiScheduler;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumClosedSchedulers(Lcom/android/internal/midi/MidiEventMultiScheduler;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumClosedSchedulers(Lcom/android/internal/midi/MidiEventMultiScheduler;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 6
    .param p1, "numSchedulers"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    .line 58
    iput p1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumEventSchedulers:I

    .line 59
    new-array v0, p1, [Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, p1, :cond_23

    .line 61
    iget-object v1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    new-instance v2, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;-><init>(Lcom/android/internal/midi/MidiEventMultiScheduler;Lcom/android/internal/midi/MidiEventMultiScheduler-IA;)V

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 63
    .end local v0    # "i":I
    :cond_23
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 125
    .local v3, "eventScheduler":Lcom/android/internal/midi/MidiEventScheduler;
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 124
    .end local v3    # "eventScheduler":Lcom/android/internal/midi/MidiEventScheduler;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 127
    :cond_e
    return-void
.end method

.method public blacklist getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;
    .registers 3
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getNumEventSchedulers()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumEventSchedulers:I

    return v0
.end method

.method public blacklist waitNextEvent()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :goto_3
    :try_start_3
    iget v1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    iget v2, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumEventSchedulers:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_c

    .line 75
    monitor-exit v0

    return v3

    .line 77
    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    .line 78
    .local v1, "lowestTime":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 79
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    array-length v7, v6

    :goto_18
    if-ge v3, v7, :cond_2f

    aget-object v8, v6, v3

    .line 80
    .local v8, "eventScheduler":Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;
    invoke-virtual {v8}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->isEventBufferEmptyLocked()Z

    move-result v9

    if-nez v9, :cond_2c

    .line 81
    nop

    .line 82
    invoke-virtual {v8}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->getLowestTimeLocked()J

    move-result-wide v9

    .line 81
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v1, v9

    .line 79
    .end local v8    # "eventScheduler":Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 85
    :cond_2f
    cmp-long v3, v1, v4

    if-gtz v3, :cond_36

    .line 86
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 88
    :cond_36
    sub-long v6, v1, v4

    .line 91
    .local v6, "nanosToWait":J
    const-wide/32 v8, 0xf4240

    div-long v8, v6, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    .line 93
    .local v8, "millisToWait":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-lez v3, :cond_4a

    .line 94
    const-wide/32 v8, 0x7fffffff

    .line 96
    :cond_4a
    iget-object v3, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 97
    .end local v1    # "lowestTime":J
    .end local v4    # "now":J
    .end local v6    # "nanosToWait":J
    .end local v8    # "millisToWait":J
    goto :goto_3

    .line 98
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v1
.end method
