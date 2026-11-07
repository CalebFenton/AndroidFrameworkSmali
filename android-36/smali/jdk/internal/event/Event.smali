.class public abstract Ljdk/internal/event/Event;
.super Ljava/lang/Object;
.source "Event.java"


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist begin()V
    .registers 1

    .line 46
    return-void
.end method

.method public blacklist commit()V
    .registers 1

    .line 64
    return-void
.end method

.method public blacklist end()V
    .registers 1

    .line 54
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public blacklist shouldCommit()Z
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method
