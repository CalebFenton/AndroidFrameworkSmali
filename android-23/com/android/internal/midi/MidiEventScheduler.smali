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
.field private static final POOL_EVENT_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 2
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler;->createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    #@3
    .line 31
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;)V

    #@9
    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@b
    .line 26
    return-void
.end method

.method private createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    const/4 v6, 0x0

    #@3
    .line 85
    if-le p3, v1, :cond_0

    #@5
    .line 86
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@7
    move-object v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move-wide v4, p4

    #@b
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler$MidiEvent;)V

    #@e
    .line 96
    .local v0, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :goto_0
    return-object v0

    #@f
    .line 88
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/midi/MidiEventScheduler;->removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@15
    .line 89
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-nez v0, :cond_1

    #@17
    .line 90
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@19
    .end local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    invoke-direct {v0, v1, v6}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler$MidiEvent;)V

    #@1c
    .line 92
    .restart local v0    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 93
    iput p3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    #@24
    .line 94
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->setTimestamp(J)V

    #@27
    goto :goto_0
.end method


# virtual methods
.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@0
    .prologue
    .line 107
    instance-of v1, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 108
    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@7
    .line 109
    .local v0, "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@9
    array-length v1, v1

    #@a
    const/16 v2, 0x10

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    #@11
    .line 105
    .end local v0    # "midiEvent":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :cond_0
    return-void
.end method

.method public getReceiver()Landroid/media/midi/MidiReceiver;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    #@2
    return-object v0
.end method
