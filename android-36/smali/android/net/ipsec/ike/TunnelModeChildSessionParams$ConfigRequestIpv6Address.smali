.class public interface abstract Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;
.super Ljava/lang/Object;
.source "TunnelModeChildSessionParams.java"

# interfaces
.implements Landroid/net/ipsec/ike/TunnelModeChildSessionParams$TunnelModeChildConfigRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/TunnelModeChildSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigRequestIpv6Address"
.end annotation


# virtual methods
.method public abstract whitelist getAddress()Ljava/net/Inet6Address;
.end method

.method public abstract whitelist getPrefixLength()I
.end method
