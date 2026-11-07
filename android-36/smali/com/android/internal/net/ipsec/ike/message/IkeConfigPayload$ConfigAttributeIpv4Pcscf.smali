.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;
.source "IkeConfigPayload.java"

# interfaces
.implements Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv4Pcscf"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 798
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;-><init>(I)V

    .line 799
    return-void
.end method

.method public constructor blacklist <init>(Ljava/net/Inet4Address;)V
    .registers 3
    .param p1, "ipv4Address"    # Ljava/net/Inet4Address;

    .line 789
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;-><init>(ILjava/net/Inet4Address;)V

    .line 790
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

    .line 804
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;-><init>(I[B)V

    .line 805
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

    .line 785
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getAddress()Ljava/net/Inet4Address;
    .registers 2

    .line 809
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv4Pcscf;->address:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 785
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttrIpv4AddressBase;->hashCode()I

    move-result v0

    return v0
.end method
