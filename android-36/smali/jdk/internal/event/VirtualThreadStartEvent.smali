.class public Ljdk/internal/event/VirtualThreadStartEvent;
.super Ljdk/internal/event/Event;
.source "VirtualThreadStartEvent.java"


# static fields
.field private static final blacklist EVENT:Ljdk/internal/event/VirtualThreadStartEvent;


# instance fields
.field public blacklist javaThreadId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljdk/internal/event/VirtualThreadStartEvent;

    invoke-direct {v0}, Ljdk/internal/event/VirtualThreadStartEvent;-><init>()V

    sput-object v0, Ljdk/internal/event/VirtualThreadStartEvent;->EVENT:Ljdk/internal/event/VirtualThreadStartEvent;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljdk/internal/event/Event;-><init>()V

    return-void
.end method

.method public static blacklist isTurnedOn()Z
    .registers 1

    .line 37
    sget-object v0, Ljdk/internal/event/VirtualThreadStartEvent;->EVENT:Ljdk/internal/event/VirtualThreadStartEvent;

    invoke-virtual {v0}, Ljdk/internal/event/VirtualThreadStartEvent;->isEnabled()Z

    move-result v0

    return v0
.end method
