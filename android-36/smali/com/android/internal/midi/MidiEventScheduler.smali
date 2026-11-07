.class public Lcom/android/internal/midi/MidiEventScheduler;
.super Lcom/android/internal/midi/EventScheduler;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;,
        Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    }
.end annotation


# static fields
.field private static final blacklist POOL_EVENT_SIZE:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private blacklist mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    .line 31
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler-IA;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method


# virtual methods
.method public blacklist addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 107
    instance-of v0, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    if-eqz v0, :cond_11

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 109
    .local v0, "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_11

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 113
    .end local v0    # "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_11
    return-void
.end method

.method public blacklist createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .registers 14
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .line 85
    const/16 v0, 0x10

    if-le p3, v0, :cond_f

    .line 86
    new-instance v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .local v2, "msg":[B
    .local v3, "offset":I
    .local v4, "count":I
    .local v5, "timestamp":J
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler-IA;)V

    .local v1, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    goto :goto_2f

    .line 88
    .end local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .end local v2    # "msg":[B
    .end local v3    # "offset":I
    .end local v4    # "count":I
    .end local v5    # "timestamp":J
    .restart local p1    # "msg":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    .restart local p4    # "timestamp":J
    :cond_f
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    .end local p4    # "timestamp":J
    .restart local v2    # "msg":[B
    .restart local v3    # "offset":I
    .restart local v4    # "count":I
    .restart local v5    # "timestamp":J
    invoke-virtual {p0}, Lcom/android/internal/midi/MidiEventScheduler;->removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object p1

    check-cast p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 89
    .local p1, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez p1, :cond_23

    .line 90
    new-instance p2, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p3}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler-IA;)V

    move-object v1, p2

    .end local p1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .local p2, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    goto :goto_24

    .line 89
    .end local p2    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .restart local p1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_23
    move-object v1, p1

    .line 92
    .end local p1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .restart local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :goto_24
    iget-object p1, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    const/4 p2, 0x0

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput v4, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 94
    invoke-virtual {v1, v5, v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->setTimestamp(J)V

    .line 96
    :goto_2f
    return-object v1
.end method

.method public blacklist getReceiver()Landroid/media/midi/MidiReceiver;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-object v0
.end method
