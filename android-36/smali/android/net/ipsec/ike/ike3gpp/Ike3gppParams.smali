.class public final Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;
.super Ljava/lang/Object;
.source "Ike3gppParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist PDU_SESSION_ID_UNSET:B


# instance fields
.field private final blacklist mDeviceIdentity:Ljava/lang/String;

.field private final blacklist mPduSessionId:B


# direct methods
.method private constructor blacklist <init>(BLjava/lang/String;)V
    .registers 3
    .param p1, "pduSessionId"    # B
    .param p2, "deviceIdentity"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-byte p1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    .line 48
    iput-object p2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mDeviceIdentity:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(BLjava/lang/String;Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;-><init>(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 89
    :cond_4
    instance-of v1, p1, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 91
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;

    .line 92
    .local v1, "that":Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;
    iget-byte v3, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    iget-byte v4, v1, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    if-ne v3, v4, :cond_1e

    iget-object v3, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mDeviceIdentity:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mDeviceIdentity:Ljava/lang/String;

    .line 93
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 92
    :goto_1f
    return v0
.end method

.method public whitelist getMobileDeviceIdentity()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mDeviceIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPduSessionId()B
    .registers 2

    .line 60
    iget-byte v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    return v0
.end method

.method public blacklist hasPduSessionId()Z
    .registers 2

    .line 69
    iget-byte v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 83
    iget-byte v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mDeviceIdentity:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, "Ike3gppParams={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string v1, "mPduSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mPduSessionId:B

    .line 101
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02X "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    const-string v1, "mDeviceIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppParams;->mDeviceIdentity:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%16s "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    return-object v0
.end method
