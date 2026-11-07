.class public interface abstract Landroid/net/connectivity/org/chromium/base/UnownedUserData;
.super Ljava/lang/Object;
.source "UnownedUserData.java"


# virtual methods
.method public blacklist informOnDetachmentFromHost()Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onDetachedFromHost(Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;)V
    .registers 2
    .param p1, "host"    # Landroid/net/connectivity/org/chromium/base/UnownedUserDataHost;

    .line 32
    return-void
.end method
