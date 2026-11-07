.class public Ljdk/internal/event/VirtualThreadSubmitFailedEvent;
.super Ljdk/internal/event/Event;
.source "VirtualThreadSubmitFailedEvent.java"


# instance fields
.field public blacklist exceptionMessage:Ljava/lang/String;

.field public blacklist javaThreadId:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljdk/internal/event/Event;-><init>()V

    return-void
.end method
