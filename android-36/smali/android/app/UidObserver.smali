.class public Landroid/app/UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "UidObserver.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 29
    return-void
.end method

.method public blacklist onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 33
    return-void
.end method

.method public blacklist onUidGone(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 37
    return-void
.end method

.method public blacklist onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 41
    return-void
.end method

.method public blacklist onUidProcAdjChanged(II)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "adj"    # I

    .line 45
    return-void
.end method

.method public blacklist onUidStateChanged(IIJI)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 49
    return-void
.end method
