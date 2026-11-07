.class public interface abstract Landroid/net/TransportInfo;
.super Ljava/lang/Object;
.source "TransportInfo.java"


# virtual methods
.method public blacklist getApplicableRedactions()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist makeCopy(J)Landroid/net/TransportInfo;
    .registers 3
    .param p1, "redactions"    # J
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 60
    return-object p0
.end method
