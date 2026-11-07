.class public Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttributeIpv6Subnet;
.super Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;
.source "IkeConfigPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigAttributeIpv6Subnet"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1108
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;-><init>(I)V

    .line 1109
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/LinkAddress;)V
    .registers 3
    .param p1, "ipv6LinkAddress"    # Landroid/net/LinkAddress;

    .line 1099
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;-><init>(ILandroid/net/LinkAddress;)V

    .line 1100
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

    .line 1114
    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;-><init>(I[B)V

    .line 1115
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

    .line 1095
    invoke-super {p0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 1095
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$TunnelModeChildConfigAttrIpv6AddrRangeBase;->hashCode()I

    move-result v0

    return v0
.end method
