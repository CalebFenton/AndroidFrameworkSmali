.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv6Pcscf"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1163
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;-><init>(I)V

    .line 1164
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/Inet6Address;)V
    .registers 3
    .param p1, "ipv6Address"    # Ljava/net/Inet6Address;

    .line 1154
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;-><init>(ILjava/net/Inet6Address;)V

    .line 1155
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

    .line 1167
    const/16 v0, 0x15

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;-><init>(I[B)V

    .line 1168
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

    .line 1150
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAddress()Ljava/net/Inet6Address;
    .registers 2

    .line 1172
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Pcscf;->address:Ljava/net/Inet6Address;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 1150
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv6AddressBase;->hashCode()I

    move-result v0

    return v0
.end method
