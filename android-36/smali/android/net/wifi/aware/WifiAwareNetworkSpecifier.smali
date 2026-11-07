.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o NETWORK_SPECIFIER_TYPE_IB:I = 0x0

.field public static final greylist-max-o NETWORK_SPECIFIER_TYPE_IB_ANY_PEER:I = 0x1

.field public static final greylist-max-o NETWORK_SPECIFIER_TYPE_MAX_VALID:I = 0x3

.field public static final greylist-max-o NETWORK_SPECIFIER_TYPE_OOB:I = 0x2

.field public static final greylist-max-o NETWORK_SPECIFIER_TYPE_OOB_ANY_PEER:I = 0x3


# instance fields
.field public final greylist-max-o clientId:I

.field private final blacklist mChannelInMhz:I

.field private final blacklist mForcedChannel:Z

.field private final blacklist mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

.field public final greylist-max-o passphrase:Ljava/lang/String;

.field public final greylist-max-o peerId:I

.field public final greylist-max-o peerMac:[B

.field public final greylist-max-o pmk:[B

.field public final blacklist port:I

.field public final greylist-max-o role:I

.field public final greylist-max-o sessionId:I

.field public final blacklist transportProtocol:I

.field public final greylist-max-o type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 242
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIII[BIIIZLandroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "role"    # I
    .param p3, "clientId"    # I
    .param p4, "sessionId"    # I
    .param p5, "peerId"    # I
    .param p6, "peerMac"    # [B
    .param p7, "port"    # I
    .param p8, "transportProtocol"    # I
    .param p9, "channel"    # I
    .param p10, "forcedChannel"    # Z
    .param p11, "securityConfig"    # Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 199
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 200
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 201
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 202
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 203
    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 204
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 205
    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 206
    iput p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    .line 207
    iput p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    .line 208
    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    .line 209
    iput-boolean p10, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    .line 210
    iput-object p11, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 211
    const/4 v0, 0x0

    if-nez p11, :cond_1e

    move-object v1, v0

    goto :goto_22

    :cond_1e
    invoke-virtual {p11}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->getPskPassphrase()Ljava/lang/String;

    move-result-object v1

    :goto_22
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 212
    if-nez p11, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {p11}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->getPmk()[B

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 213
    return-void
.end method

.method public constructor blacklist <init>(IIIII[B[BLjava/lang/String;II)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "role"    # I
    .param p3, "clientId"    # I
    .param p4, "sessionId"    # I
    .param p5, "peerId"    # I
    .param p6, "peerMac"    # [B
    .param p7, "pmk"    # [B
    .param p8, "passphrase"    # Ljava/lang/String;
    .param p9, "port"    # I
    .param p10, "transportProtocol"    # I

    .line 220
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 221
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 222
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 223
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 224
    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 225
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 226
    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 227
    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    .line 228
    iput p10, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    .line 230
    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    .line 231
    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 232
    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    if-nez p7, :cond_25

    if-eqz p8, :cond_22

    goto :goto_25

    .line 238
    :cond_22
    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    goto :goto_2d

    .line 234
    :cond_25
    :goto_25
    new-instance v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p7, v0, p8}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;-><init>(I[B[BLjava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 240
    :goto_2d
    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 301
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-eqz v0, :cond_c

    .line 302
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-virtual {v0, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z

    move-result v0

    return v0

    .line 304
    :cond_c
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 318
    return v0

    .line 321
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 322
    return v2

    .line 325
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 327
    .local v1, "lhs":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 332
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    if-ne v3, v4, :cond_58

    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 337
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_59

    :cond_58
    move v0, v2

    .line 327
    :goto_59
    return v0
.end method

.method public whitelist getChannelFrequencyMhz()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    return v0
.end method

.method public whitelist getWifiAwareDataPathSecurityConfig()Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 310
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 310
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isChannelRequired()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    return v0
.end method

.method public greylist-max-o isOutOfBand()Z
    .registers 3

    .line 274
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiAwareNetworkSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    const-string v2, ", role="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    const-string v2, ", clientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    const-string v2, ", sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string v2, ", peerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string v2, ", peerMac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    if-nez v2, :cond_50

    const-string v2, "<null>"

    goto :goto_52

    :cond_50
    const-string v2, "<non-null>"

    :goto_52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    const-string v2, ", securityConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string v2, ", transportProtocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    const-string v2, ", channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    const-string v2, ", forceChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 357
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 284
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 290
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mChannelInMhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mForcedChannel:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->mSecurityConfig:Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 295
    return-void
.end method
