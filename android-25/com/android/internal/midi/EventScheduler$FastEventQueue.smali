.class Lcom/android/internal/midi/EventScheduler$FastEventQueue;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastEventQueue"
.end annotation


# instance fields
.field volatile mEventsAdded:J

.field volatile mEventsRemoved:J

.field volatile mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field volatile mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field final synthetic this$0:Lcom/android/internal/midi/EventScheduler;


# direct methods
.method constructor <init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/midi/EventScheduler;
    .param p2, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->this$0:Lcom/android/internal/midi/EventScheduler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 52
    iput-object p2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@7
    .line 53
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@9
    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@b
    .line 54
    const-wide/16 v0, 0x1

    #@d
    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    #@f
    .line 55
    const-wide/16 v0, 0x0

    #@11
    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    #@13
    .line 51
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-set0(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@4
    .line 81
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@6
    invoke-static {v0, p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-set0(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@9
    .line 82
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@b
    .line 83
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    #@d
    const-wide/16 v2, 0x1

    #@f
    add-long/2addr v0, v2

    #@10
    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    #@12
    .line 79
    return-void
.end method

.method public remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 6

    #@0
    .prologue
    .line 69
    iget-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    #@2
    const-wide/16 v4, 0x1

    #@4
    add-long/2addr v2, v4

    #@5
    iput-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    #@7
    .line 70
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@9
    .line 71
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    invoke-static {v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-get0(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@f
    .line 72
    const/4 v1, 0x0

    #@10
    invoke-static {v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->-set0(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    #@13
    .line 73
    return-object v0
.end method

.method size()I
    .locals 4

    #@0
    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    #@2
    iget-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    #@4
    sub-long/2addr v0, v2

    #@5
    long-to-int v0, v0

    #@6
    return v0
.end method
