.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv6DnsServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv6Dns"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1137
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;-><init>(I)V

    .line 1138
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/Inet6Address;)V
    .registers 3
    .param p1, "ipv6Address"    # Ljava/net/Inet6Address;

    .line 1128
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;-><init>(ILjava/net/Inet6Address;)V

    .line 1129
    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .registers 3
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 1141
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;-><init>(I[B)V

    .line 1142
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

    .line 1124
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getAddress()Ljava/net/Inet6Address;
    .registers 2

    .line 1145
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Dns;->address:Ljava/net/Inet6Address;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 1124
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddressBase;->hashCode()I

    move-result v0

    return v0
.end method
