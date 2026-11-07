.class public final Landroid/net/util/KeepaliveUtils;
.super Ljava/lang/Object;
.source "KeepaliveUtils.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "KeepaliveUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSupportedKeepalives(Landroid/content/Context;)[I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getSupportedKeepalives()[I

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSupportedKeepalivesForNetworkCapabilities([ILandroid/net/NetworkCapabilities;)I
    .registers 8
    .param p0, "supportedKeepalives"    # [I
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 59
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 60
    .local v0, "transports":[I
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    .line 61
    :cond_9
    aget v1, v0, v2

    aget v1, p0, v1

    .line 63
    .local v1, "supportedCount":I
    array-length v3, v0

    :goto_e
    if-ge v2, v3, :cond_1b

    aget v4, v0, v2

    .line 64
    .local v4, "transport":I
    aget v5, p0, v4

    if-le v1, v5, :cond_18

    .line 65
    aget v1, p0, v4

    .line 63
    .end local v4    # "transport":I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 68
    :cond_1b
    return v1
.end method
