.class public final Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
.super Ljava/lang/Object;
.source "SipDelegateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDelegateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpSecConfiguration"
.end annotation


# instance fields
.field private final blacklist mLastLocalTxPort:I

.field private final blacklist mLastRemoteTxPort:I

.field private final blacklist mLocalRxPort:I

.field private final blacklist mLocalTxPort:I

.field private final blacklist mRemoteRxPort:I

.field private final blacklist mRemoteTxPort:I

.field private final blacklist mSecurityHeader:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(IIIIIILjava/lang/String;)V
    .registers 8
    .param p1, "localTxPort"    # I
    .param p2, "localRxPort"    # I
    .param p3, "lastLocalTxPort"    # I
    .param p4, "remoteTxPort"    # I
    .param p5, "remoteRxPort"    # I
    .param p6, "lastRemoteTxPort"    # I
    .param p7, "securityHeader"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    .line 116
    iput p2, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    .line 117
    iput p3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    .line 118
    iput p4, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    .line 119
    iput p5, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    .line 120
    iput p6, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    .line 121
    iput-object p7, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public static blacklist fromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    .registers 9
    .param p0, "source"    # Landroid/os/Parcel;

    .line 193
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 193
    return-object v0
.end method


# virtual methods
.method public blacklist addToParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 179
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 208
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 209
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    .line 210
    .local v2, "that":Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    iget v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    .line 216
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 210
    :goto_45
    return v0

    .line 208
    .end local v2    # "that":Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;
    :cond_46
    :goto_46
    return v1
.end method

.method public whitelist getLastLocalTxPort()I
    .registers 2

    .line 142
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    return v0
.end method

.method public whitelist getLastRemoteTxPort()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    return v0
.end method

.method public whitelist getLocalRxPort()I
    .registers 2

    .line 135
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    return v0
.end method

.method public whitelist getLocalTxPort()I
    .registers 2

    .line 128
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    return v0
.end method

.method public whitelist getRemoteRxPort()I
    .registers 2

    .line 156
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    return v0
.end method

.method public whitelist getRemoteTxPort()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    return v0
.end method

.method public whitelist getSipSecurityVerifyHeader()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 221
    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpSecConfiguration{localTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLocalRxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastLocalTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastLocalTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mRemoteRxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRemoteTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mLastRemoteTxPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", securityHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;->mSecurityHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
