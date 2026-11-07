.class public Landroid/telecom/Logging/EventManager$Event;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public blacklist data:Ljava/lang/Object;

.field public blacklist eventId:Ljava/lang/String;

.field public blacklist sessionId:Ljava/lang/String;

.field public blacklist time:J

.field public final blacklist timestampString:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .registers 8
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "data"    # Ljava/lang/Object;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/telecom/Logging/EventManager$Event;->eventId:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Landroid/telecom/Logging/EventManager$Event;->sessionId:Ljava/lang/String;

    .line 141
    iput-wide p3, p0, Landroid/telecom/Logging/EventManager$Event;->time:J

    .line 142
    nop

    .line 143
    invoke-static {p3, p4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    sget-object v1, Landroid/telecom/Logging/EventManager;->DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 144
    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Logging/EventManager$Event;->timestampString:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Landroid/telecom/Logging/EventManager$Event;->data:Ljava/lang/Object;

    .line 146
    return-void
.end method
