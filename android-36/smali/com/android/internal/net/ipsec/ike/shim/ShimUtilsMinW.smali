.class public Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsMinW;
.super Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsU;
.source "ShimUtilsMinW.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsU;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public blacklist suspendOnNetworkLossEnabled()Z
    .registers 2

    .line 28
    const/4 v0, 0x1

    return v0
.end method
