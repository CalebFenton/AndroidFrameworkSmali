.class Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;
.super Lcom/android/internal/midi/MidiEventScheduler;
.source "MidiEventMultiScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventMultiScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiLockMidiEventScheduler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/midi/MidiEventMultiScheduler;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/midi/MidiEventMultiScheduler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->this$0:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-direct {p0}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/midi/MidiEventMultiScheduler;Lcom/android/internal/midi/MidiEventMultiScheduler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;-><init>(Lcom/android/internal/midi/MidiEventMultiScheduler;)V

    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 4

    .line 32
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->this$0:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-static {v0}, Lcom/android/internal/midi/MidiEventMultiScheduler;->-$$Nest$fgetmMultiLock(Lcom/android/internal/midi/MidiEventMultiScheduler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 33
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->this$0:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-static {v1}, Lcom/android/internal/midi/MidiEventMultiScheduler;->-$$Nest$fgetmNumClosedSchedulers(Lcom/android/internal/midi/MidiEventMultiScheduler;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/midi/MidiEventMultiScheduler;->-$$Nest$fputmNumClosedSchedulers(Lcom/android/internal/midi/MidiEventMultiScheduler;I)V

    .line 34
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    .line 35
    invoke-super {p0}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 36
    return-void

    .line 34
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected blacklist getLock()Ljava/lang/Object;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->this$0:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-static {v0}, Lcom/android/internal/midi/MidiEventMultiScheduler;->-$$Nest$fgetmMultiLock(Lcom/android/internal/midi/MidiEventMultiScheduler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLowestTimeLocked()J
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isEventBufferEmptyLocked()Z
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method
