.class public Landroid/telecom/Logging/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$TimedEventPair;,
        Landroid/telecom/Logging/EventManager$EventRecord;,
        Landroid/telecom/Logging/EventManager$Loggable;,
        Landroid/telecom/Logging/EventManager$Event;,
        Landroid/telecom/Logging/EventManager$EventListener;
    }
.end annotation


# static fields
.field public static final blacklist DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final blacklist DEFAULT_EVENTS_TO_CACHE:I = 0xa

.field public static final blacklist TAG:Ljava/lang/String; = "Logging.Events"

.field private static final blacklist mSync:Ljava/lang/Object;


# instance fields
.field private final blacklist mCallEventRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

.field private final blacklist requestResponsePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$TimedEventPair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$0-glLXSZQ7HFnDUgHQGbv9oBNM0(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$EventRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Logging/EventManager;->lambda$changeEventCacheSize$1(Landroid/telecom/Logging/EventManager$EventRecord;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallEventRecordMap(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetrequestResponsePairs(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    nop

    .line 56
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/telecom/Logging/EventManager;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;)V
    .registers 4
    .param p1, "l"    # Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    .line 281
    iput-object p1, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    .line 282
    return-void
.end method

.method private blacklist addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .registers 6
    .param p1, "newRecord"    # Landroid/telecom/Logging/EventManager$EventRecord;

    .line 405
    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v0

    .line 408
    .local v0, "recordEntry":Landroid/telecom/Logging/EventManager$Loggable;
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_1f

    .line 409
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 410
    .local v1, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-eqz v1, :cond_1f

    .line 411
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v1    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_1f
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_2c
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$EventListener;

    .line 420
    .local v3, "l":Landroid/telecom/Logging/EventManager$EventListener;
    invoke-interface {v3, p1}, Landroid/telecom/Logging/EventManager$EventListener;->eventRecordAdded(Landroid/telecom/Logging/EventManager$EventRecord;)V

    .line 421
    .end local v3    # "l":Landroid/telecom/Logging/EventManager$EventListener;
    goto :goto_32

    .line 422
    :cond_42
    monitor-exit v1

    .line 423
    return-void

    .line 422
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_44

    throw v2
.end method

.method private synthetic blacklist lambda$changeEventCacheSize$1(Landroid/telecom/Logging/EventManager$EventRecord;)V
    .registers 6
    .param p1, "newRecord"    # Landroid/telecom/Logging/EventManager$EventRecord;

    .line 368
    invoke-virtual {p1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v0

    .line 371
    .local v0, "recordEntry":Landroid/telecom/Logging/EventManager$Loggable;
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remainingCapacity()I

    move-result v1

    if-nez v1, :cond_1f

    .line 372
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 373
    .local v1, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-eqz v1, :cond_1f

    .line 374
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v1    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_1f
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void
.end method

.method static synthetic blacklist lambda$dumpEventsTimeline$0(Landroid/util/Pair;)J
    .registers 3
    .param p0, "e"    # Landroid/util/Pair;

    .line 344
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/EventManager$Event;

    iget-wide v0, v0, Landroid/telecom/Logging/EventManager$Event;->time:J

    return-wide v0
.end method


# virtual methods
.method public blacklist addRequestResponsePair(Landroid/telecom/Logging/EventManager$TimedEventPair;)V
    .registers 5
    .param p1, "p"    # Landroid/telecom/Logging/EventManager$TimedEventPair;

    .line 120
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v1, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 121
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v1, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 123
    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/Logging/EventManager$TimedEventPair;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->requestResponsePairs:Ljava/util/Map;

    iget-object v2, p1, Landroid/telecom/Logging/EventManager$TimedEventPair;->mRequest:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v0    # "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/Logging/EventManager$TimedEventPair;>;"
    :goto_27
    return-void
.end method

.method public blacklist changeEventCacheSize(I)V
    .registers 4
    .param p1, "newSize"    # I

    .line 363
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 364
    .local v0, "oldEventLog":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Landroid/telecom/Logging/EventManager$EventRecord;>;"
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 365
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 367
    new-instance v1, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Logging/EventManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->forEach(Ljava/util/function/Consumer;)V

    .line 384
    return-void
.end method

.method public blacklist dumpEvents(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 317
    const-string v0, "Historical Events:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 319
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 320
    .local v1, "eventRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-virtual {v1, p1}, Landroid/telecom/Logging/EventManager$EventRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 321
    .end local v1    # "eventRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    goto :goto_e

    .line 322
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 323
    return-void
.end method

.method public blacklist dumpEventsTimeline(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 331
    const-string v0, "Historical Events (sorted by time):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;>;"
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 336
    .local v2, "er":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    .line 337
    .local v4, "ev":Landroid/telecom/Logging/EventManager$Event;
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/telecom/Logging/EventManager$EventRecord;->getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v4    # "ev":Landroid/telecom/Logging/EventManager$Event;
    goto :goto_24

    .line 339
    .end local v2    # "er":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_3d
    goto :goto_10

    .line 343
    :cond_3e
    new-instance v1, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telecom/Logging/EventManager$$ExternalSyntheticLambda0;-><init>()V

    .line 344
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 345
    .local v1, "byEventTime":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 347
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 349
    .local v3, "event":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->timestampString:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    const-string v4, ","

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 351
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v5}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/Logging/EventManager$Event;

    iget-object v5, v5, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 355
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/Logging/EventManager$Event;

    iget-object v4, v4, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 356
    .end local v3    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/telecom/Logging/EventManager$Loggable;Landroid/telecom/Logging/EventManager$Event;>;"
    goto :goto_51

    .line 357
    :cond_8f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 358
    return-void
.end method

.method public blacklist event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mSessionIdHandler:Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "currentSessionID":Ljava/lang/String;
    if-nez p1, :cond_14

    .line 288
    const-string v1, "Logging.Events"

    const-string v2, "Non-call EVENT: %s, %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    return-void

    .line 291
    :cond_14
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 292
    :try_start_17
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 293
    new-instance v2, Landroid/telecom/Logging/EventManager$EventRecord;

    invoke-direct {v2, p0, p1}, Landroid/telecom/Logging/EventManager$EventRecord;-><init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V

    .line 294
    .local v2, "newRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-direct {p0, v2}, Landroid/telecom/Logging/EventManager;->addEventRecord(Landroid/telecom/Logging/EventManager$EventRecord;)V

    .line 297
    .end local v2    # "newRecord":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_27
    iget-object v2, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 298
    .local v2, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    invoke-virtual {v2, p2, v0, p3}, Landroid/telecom/Logging/EventManager$EventRecord;->addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    .end local v2    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_34

    throw v2
.end method

.method public varargs blacklist event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .param p1, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 305
    if-eqz p4, :cond_30

    :try_start_2
    array-length v0, p4

    if-nez v0, :cond_6

    goto :goto_30

    .line 306
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/util/IllegalFormatException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_31

    .line 307
    :catch_d
    move-exception v0

    .line 308
    .local v0, "ife":Ljava/util/IllegalFormatException;
    array-length v1, p4

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 308
    const-string v2, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (An error occurred while formatting the message.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    goto :goto_33

    .line 305
    .end local v0    # "ife":Ljava/util/IllegalFormatException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_30
    :goto_30
    move-object v0, p3

    .line 306
    :goto_31
    move-object v1, v0

    .line 311
    .restart local v1    # "msg":Ljava/lang/String;
    nop

    .line 313
    :goto_33
    invoke-virtual {p0, p1, p2, v1}, Landroid/telecom/Logging/EventManager;->event(Landroid/telecom/Logging/EventManager$Loggable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public blacklist getCallEventRecordMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/telecom/Logging/EventManager$Loggable;",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mCallEventRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getEventRecords()Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/telecom/Logging/EventManager$EventRecord;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroid/telecom/Logging/EventManager;->mEventRecords:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public blacklist registerEventListener(Landroid/telecom/Logging/EventManager$EventListener;)V
    .registers 4
    .param p1, "e"    # Landroid/telecom/Logging/EventManager$EventListener;

    .line 387
    if-eqz p1, :cond_f

    .line 388
    sget-object v0, Landroid/telecom/Logging/EventManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_5
    iget-object v1, p0, Landroid/telecom/Logging/EventManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 392
    :cond_f
    :goto_f
    return-void
.end method
