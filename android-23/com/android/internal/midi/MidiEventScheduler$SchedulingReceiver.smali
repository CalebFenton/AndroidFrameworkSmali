.class Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;
.super Landroid/media/midi/MidiReceiver;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SchedulingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/midi/MidiEventScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/midi/MidiEventScheduler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/midi/MidiEventScheduler;

    #@0
    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    #@2
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/midi/MidiEventScheduler;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;)V

    #@3
    return-void
.end method


# virtual methods
.method public onFlush()V
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->flush()V

    #@5
    .line 48
    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-wide v4, p4

    #@6
    invoke-static/range {v0 .. v5}, Lcom/android/internal/midi/MidiEventScheduler;->-wrap0(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    #@9
    move-result-object v6

    #@a
    .line 42
    .local v6, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    if-eqz v6, :cond_0

    #@c
    .line 43
    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;->this$0:Lcom/android/internal/midi/MidiEventScheduler;

    #@e
    invoke-virtual {v0, v6}, Lcom/android/internal/midi/MidiEventScheduler;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    #@11
    .line 40
    :cond_0
    return-void
.end method
