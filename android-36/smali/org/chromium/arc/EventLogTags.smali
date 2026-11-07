.class public Lorg/chromium/arc/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist ARC_SYSTEM_EVENT:I = 0x493e0


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeArcSystemEvent(Ljava/lang/String;)V
    .registers 2
    .param p0, "event"    # Ljava/lang/String;

    .line 17
    const v0, 0x493e0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 18
    return-void
.end method
