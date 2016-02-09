.class public Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
.super Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiEvent"
.end annotation


# instance fields
.field public count:I

.field public data:[B


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "count"    # I

    #@0
    .prologue
    .line 58
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    #@5
    .line 54
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    #@8
    .line 59
    new-array v0, p1, [B

    #@a
    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@c
    .line 57
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/internal/midi/MidiEventScheduler$MidiEvent;)V
    .locals 0
    .param p1, "count"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(I)V

    #@3
    return-void
.end method

.method private constructor <init>([BIIJ)V
    .locals 2
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0, p4, p5}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    #@4
    .line 54
    iput v1, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    #@6
    .line 64
    new-array v0, p3, [B

    #@8
    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@a
    .line 65
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@c
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 66
    iput p3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    #@11
    .line 62
    return-void
.end method

.method synthetic constructor <init>([BIIJLcom/android/internal/midi/MidiEventScheduler$MidiEvent;)V
    .locals 0
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJ)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 71
    const-string/jumbo v1, "Event: "

    #@3
    .line 72
    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    iget-object v3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    #@13
    aget-byte v3, v3, v0

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, ", "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 72
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 75
    :cond_0
    return-object v1
.end method
