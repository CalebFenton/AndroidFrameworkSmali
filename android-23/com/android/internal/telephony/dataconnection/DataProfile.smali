.class public Lcom/android/internal/telephony/dataconnection/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"


# static fields
.field static final TYPE_3GPP:I = 0x1

.field static final TYPE_3GPP2:I = 0x2

.field static final TYPE_COMMON:I


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final enabled:Z

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final password:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final type:I

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 0
    .param p1, "profileId"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "type"    # I
    .param p8, "maxConnsTime"    # I
    .param p9, "maxConns"    # I
    .param p10, "waitTime"    # I
    .param p11, "enabled"    # Z

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    #@5
    .line 61
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    #@7
    .line 62
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    #@9
    .line 63
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    #@b
    .line 64
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    #@d
    .line 65
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    #@f
    .line 66
    iput p7, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    #@11
    .line 67
    iput p8, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    #@13
    .line 68
    iput p9, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    #@15
    .line 69
    iput p10, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    #@17
    .line 70
    iput-boolean p11, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    #@19
    .line 58
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnSetting;Z)V
    .locals 12
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "isRoaming"    # Z

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 74
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    #@3
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    #@5
    if-eqz p2, :cond_0

    #@7
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    #@9
    .line 75
    :goto_0
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    #@b
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    #@d
    iget-object v6, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    #@f
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@11
    if-nez v0, :cond_1

    #@13
    .line 77
    :goto_1
    iget v8, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    #@15
    iget v9, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    #@17
    iget v10, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    #@19
    iget-boolean v11, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    #@1b
    move-object v0, p0

    #@1c
    .line 74
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZ)V

    #@1f
    .line 73
    return-void

    #@20
    .line 74
    :cond_0
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    #@22
    goto :goto_0

    #@23
    .line 76
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    #@25
    invoke-static {v0}, Landroid/telephony/ServiceState;->hasCdma(I)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    const/4 v7, 0x2

    #@2c
    goto :goto_1

    #@2d
    :cond_2
    const/4 v7, 0x1

    #@2e
    goto :goto_1
.end method

.method public static toParcel(Landroid/os/Parcel;[Lcom/android/internal/telephony/dataconnection/DataProfile;)Landroid/os/Parcel;
    .locals 2
    .param p0, "pc"    # Landroid/os/Parcel;
    .param p1, "dps"    # [Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    if-nez p0, :cond_0

    #@3
    .line 83
    return-object v1

    #@4
    .line 86
    :cond_0
    array-length v1, p1

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 87
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 88
    aget-object v1, p1, v0

    #@e
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    #@10
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 89
    aget-object v1, p1, v0

    #@15
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    #@17
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 90
    aget-object v1, p1, v0

    #@1c
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    #@1e
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@21
    .line 91
    aget-object v1, p1, v0

    #@23
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    #@25
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 92
    aget-object v1, p1, v0

    #@2a
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    #@2c
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 93
    aget-object v1, p1, v0

    #@31
    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    #@33
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@36
    .line 94
    aget-object v1, p1, v0

    #@38
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    #@3a
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 95
    aget-object v1, p1, v0

    #@3f
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    #@41
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 96
    aget-object v1, p1, v0

    #@46
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    #@48
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 97
    aget-object v1, p1, v0

    #@4d
    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    #@4f
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    .line 98
    aget-object v1, p1, v0

    #@54
    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    #@56
    if-eqz v1, :cond_1

    #@58
    const/4 v1, 0x1

    #@59
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5c
    .line 87
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 98
    :cond_1
    const/4 v1, 0x0

    #@60
    goto :goto_1

    #@61
    .line 100
    :cond_2
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 112
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DataProfile "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->profileId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "/"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "/"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 106
    const-string/jumbo v1, "/"

    #@3c
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    #@42
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 106
    const-string/jumbo v1, "/"

    #@49
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    #@4f
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 106
    const-string/jumbo v1, "/"

    #@56
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 106
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->type:I

    #@5c
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 106
    const-string/jumbo v1, "/"

    #@63
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 106
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConnsTime:I

    #@69
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 107
    const-string/jumbo v1, "/"

    #@70
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 107
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxConns:I

    #@76
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 107
    const-string/jumbo v1, "/"

    #@7d
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 107
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->waitTime:I

    #@83
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 107
    const-string/jumbo v1, "/"

    #@8a
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 107
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfile;->enabled:Z

    #@90
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    return-object v0
.end method
