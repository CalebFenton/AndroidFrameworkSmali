.class public Landroid/telecom/Logging/EventManager$EventRecord;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;,
        Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;
    }
.end annotation


# instance fields
.field private final blacklist mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

.field final synthetic blacklist this$0:Landroid/telecom/Logging/EventManager;


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/Logging/EventManager;Landroid/telecom/Logging/EventManager$Loggable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telecom/Logging/EventManager;
    .param p2, "recordEntry"    # Landroid/telecom/Logging/EventManager$Loggable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    .line 187
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    .line 188
    return-void
.end method


# virtual methods
.method public blacklist addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    new-instance v1, Landroid/telecom/Logging/EventManager$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .end local p1    # "event":Ljava/lang/String;
    .end local p2    # "sessionId":Ljava/lang/String;
    .end local p3    # "data":Ljava/lang/Object;
    .local v2, "event":Ljava/lang/String;
    .local v3, "sessionId":Ljava/lang/String;
    .local v6, "data":Ljava/lang/Object;
    invoke-direct/range {v1 .. v6}, Landroid/telecom/Logging/EventManager$Event;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {p1}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v2, v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Event"

    const-string p3, "RecordEntry %s: %s, %s"

    invoke-static {p2, p3, p1}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 236
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v0}, Landroid/telecom/Logging/EventManager$Loggable;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 240
    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/EventManager$Event;

    .line 241
    .local v1, "event":Landroid/telecom/Logging/EventManager$Event;
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->timestampString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    if-eqz v2, :cond_6d

    .line 245
    const-string v2, " ("

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 248
    .local v2, "data":Ljava/lang/Object;
    instance-of v3, v2, Landroid/telecom/Logging/EventManager$Loggable;

    if-eqz v3, :cond_65

    .line 251
    iget-object v3, p0, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v3}, Landroid/telecom/Logging/EventManager;->-$$Nest$fgetmCallEventRecordMap(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Logging/EventManager$EventRecord;

    .line 252
    .local v3, "record":Landroid/telecom/Logging/EventManager$EventRecord;
    if-eqz v3, :cond_65

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecordEntry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    invoke-interface {v5}, Landroid/telecom/Logging/EventManager$Loggable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .end local v3    # "record":Landroid/telecom/Logging/EventManager$EventRecord;
    :cond_65
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 258
    const-string v3, ")"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 260
    .end local v2    # "data":Ljava/lang/Object;
    :cond_6d
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 261
    const-string v2, ":"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget-object v2, v1, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 264
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 265
    .end local v1    # "event":Landroid/telecom/Logging/EventManager$Event;
    goto :goto_14

    .line 267
    :cond_83
    const-string v0, "Timings (average for this call, milliseconds):"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 269
    invoke-virtual {p0}, Landroid/telecom/Logging/EventManager$EventRecord;->extractEventTimings()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;->averageTimings(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 270
    .local v0, "avgEventTimings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .local v1, "eventNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 272
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, "eventName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s: %.2f\n"

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 274
    .end local v3    # "eventName":Ljava/lang/String;
    goto :goto_a3

    .line 275
    :cond_bd
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 277
    return-void
.end method

.method public blacklist extractEventTimings()Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;",
            ">;"
        }
    .end annotation

    .line 204
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    if-nez v0, :cond_b

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 208
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 209
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 210
    .local v9, "pendingResponses":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;>;"
    iget-object v10, v1, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    monitor-enter v10

    .line 211
    :try_start_1a
    iget-object v0, v1, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$Event;

    move-object v12, v0

    .line 212
    .local v12, "event":Landroid/telecom/Logging/EventManager$Event;
    iget-object v0, v1, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v0}, Landroid/telecom/Logging/EventManager;->-$$Nest$fgetrequestResponsePairs(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 215
    iget-object v0, v1, Landroid/telecom/Logging/EventManager$EventRecord;->this$0:Landroid/telecom/Logging/EventManager;

    invoke-static {v0}, Landroid/telecom/Logging/EventManager;->-$$Nest$fgetrequestResponsePairs(Landroid/telecom/Logging/EventManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$TimedEventPair;

    move-object v14, v0

    .line 217
    .local v14, "p":Landroid/telecom/Logging/EventManager$TimedEventPair;
    iget-object v15, v14, Landroid/telecom/Logging/EventManager$TimedEventPair;->mResponse:Ljava/lang/String;

    new-instance v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    iget-object v2, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    iget-wide v3, v12, Landroid/telecom/Logging/EventManager$Event;->time:J

    iget-wide v5, v14, Landroid/telecom/Logging/EventManager$TimedEventPair;->mTimeoutMillis:J

    iget-object v7, v14, Landroid/telecom/Logging/EventManager$TimedEventPair;->mName:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v9, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    nop

    .end local v14    # "p":Landroid/telecom/Logging/EventManager$TimedEventPair;
    goto :goto_4d

    .line 222
    :cond_6e
    iget-object v0, v12, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;

    .line 223
    .local v0, "pendingResponse":Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
    if-eqz v0, :cond_8d

    .line 224
    iget-wide v2, v12, Landroid/telecom/Logging/EventManager$Event;->time:J

    iget-wide v4, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->requestEventTimeMillis:J

    sub-long/2addr v2, v4

    .line 225
    .local v2, "elapsedTime":J
    iget-wide v4, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->timeoutMillis:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_8d

    .line 226
    new-instance v4, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;

    iget-object v5, v0, Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;->name:Ljava/lang/String;

    invoke-direct {v4, v1, v5, v2, v3}, Landroid/telecom/Logging/EventManager$EventRecord$EventTiming;-><init>(Landroid/telecom/Logging/EventManager$EventRecord;Ljava/lang/String;J)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v0    # "pendingResponse":Landroid/telecom/Logging/EventManager$EventRecord$PendingResponse;
    .end local v2    # "elapsedTime":J
    .end local v12    # "event":Landroid/telecom/Logging/EventManager$Event;
    :cond_8d
    goto :goto_20

    .line 230
    :cond_8e
    monitor-exit v10

    .line 232
    return-object v8

    .line 230
    :catchall_90
    move-exception v0

    monitor-exit v10
    :try_end_92
    .catchall {:try_start_1a .. :try_end_92} :catchall_90

    throw v0
.end method

.method public blacklist getEvents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Logging/EventManager$Event;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mEvents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getRecordEntry()Landroid/telecom/Logging/EventManager$Loggable;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/telecom/Logging/EventManager$EventRecord;->mRecordEntry:Landroid/telecom/Logging/EventManager$Loggable;

    return-object v0
.end method
