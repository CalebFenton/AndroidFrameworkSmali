.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6Address;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv6Address"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1069
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;-><init>(I)V

    .line 1070
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "ipv6LinkAddress"    # Landroid/net/LinkAddress;

    .line 1060
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;-><init>(ILandroid/net/LinkAddress;)V

    .line 1061
    return-void
.end method

.method constructor blacklist <init>([B)V
    .registers 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 1075
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;-><init>(I[B)V

    .line 1076
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1056
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAddress()Ljava/net/Inet6Address;
    .registers 2

    .line 1080
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;->linkAddress:Landroid/net/LinkAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    :goto_e
    return-object v0
.end method

.method public whitelist getPrefixLength()I
    .registers 2

    .line 1085
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;->linkAddress:Landroid/net/LinkAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Address;->linkAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    :goto_c
    return v0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 1056
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->hashCode()I

    move-result v0

    return v0
.end method
