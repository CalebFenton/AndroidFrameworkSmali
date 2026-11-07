.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/TunnelModeChildSessionParams$ConfigRequestIpv4Netmask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv4Netmask"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 594
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;-><init>(I)V

    .line 595
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 600
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;-><init>(I[B)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->address:Ljava/net/Inet4Address;

    if-nez v0, :cond_9

    return-void

    .line 604
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->address:Ljava/net/Inet4Address;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->netmaskToPrefixLen(Ljava/net/Inet4Address;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_10

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :catch_10
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "Invalid attribute value"

    invoke-direct {v1, v2, v0}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    .line 586
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getPrefixLen()I
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->address:Ljava/net/Inet4Address;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Netmask;->netmaskToPrefixLen(Ljava/net/Inet4Address;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 586
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv4AddressBase;->hashCode()I

    move-result v0

    return v0
.end method
