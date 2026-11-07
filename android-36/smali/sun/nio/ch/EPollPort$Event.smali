.class Lsun/nio/ch/EPollPort$Event;
.super Ljava/lang/Object;
.source "EPollPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/EPollPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field final blacklist channel:Lsun/nio/ch/Port$PollableChannel;

.field final blacklist events:I


# direct methods
.method constructor blacklist <init>(Lsun/nio/ch/Port$PollableChannel;I)V
    .registers 3
    .param p1, "channel"    # Lsun/nio/ch/Port$PollableChannel;
    .param p2, "events"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lsun/nio/ch/EPollPort$Event;->channel:Lsun/nio/ch/Port$PollableChannel;

    .line 70
    iput p2, p0, Lsun/nio/ch/EPollPort$Event;->events:I

    .line 71
    return-void
.end method


# virtual methods
.method blacklist channel()Lsun/nio/ch/Port$PollableChannel;
    .registers 2

    .line 73
    iget-object v0, p0, Lsun/nio/ch/EPollPort$Event;->channel:Lsun/nio/ch/Port$PollableChannel;

    return-object v0
.end method

.method blacklist events()I
    .registers 2

    .line 74
    iget v0, p0, Lsun/nio/ch/EPollPort$Event;->events:I

    return v0
.end method
