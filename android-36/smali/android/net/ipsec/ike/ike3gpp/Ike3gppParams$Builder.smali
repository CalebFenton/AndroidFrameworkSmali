.class public final Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;
.super Ljava/lang/Object;
.source "Ike3gppParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeviceIdentity:Ljava/lang/String;

.field private blacklist mPduSessionId:B


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mPduSessionId:B

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;
    .registers 5

    .line 160
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mDeviceIdentity:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 161
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mDeviceIdentity:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppDeviceIdentityUtils;->isValidDeviceIdentity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 162
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valid device identity should be 15 or 16 digits or set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_15
    :goto_15
    new-instance v0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    iget-byte v1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mPduSessionId:B

    iget-object v2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mDeviceIdentity:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;-><init>(BLjava/lang/String;Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams-IA;)V

    return-object v0
.end method

.method public whitelist setMobileDeviceIdentity(Ljava/lang/String;)Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;
    .registers 2
    .param p1, "deviceIdentity"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mDeviceIdentity:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public whitelist setPduSessionId(B)Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;
    .registers 2
    .param p1, "pduSessionId"    # B

    .line 130
    iput-byte p1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;->mPduSessionId:B

    .line 131
    return-object p0
.end method
