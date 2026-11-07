.class public Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedulableEvent"
.end annotation


# instance fields
.field private volatile blacklist mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field private blacklist mTimestamp:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "timestamp"    # J

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 101
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    .line 102
    return-void
.end method


# virtual methods
.method public blacklist getTimestamp()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 116
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    .line 117
    return-void
.end method
