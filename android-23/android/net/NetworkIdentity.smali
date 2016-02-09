.class public Landroid/net/NetworkIdentity;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/NetworkIdentity;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMBINE_SUBTYPE_ENABLED:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUBTYPE_COMBINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetworkIdentity"


# instance fields
.field final mNetworkId:Ljava/lang/String;

.field final mRoaming:Z

.field final mSubType:I

.field final mSubscriberId:Ljava/lang/String;

.field final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "subscriberId"    # Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;
    .param p5, "roaming"    # Z

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    #@5
    .line 62
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@8
    .line 63
    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@a
    .line 64
    iput-object p4, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@c
    .line 65
    iput-boolean p5, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@e
    .line 60
    return-void
.end method

.method public static buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 159
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@5
    move-result v1

    #@6
    .line 160
    .local v1, "type":I
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    #@b
    move-result v2

    #@c
    .line 162
    .local v2, "subType":I
    const/4 v3, 0x0

    #@d
    .line 163
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v4, 0x0

    #@e
    .line 164
    .local v4, "networkId":Ljava/lang/String;
    const/4 v5, 0x0

    #@f
    .line 166
    .local v5, "roaming":Z
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 167
    iget-object v0, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@17
    if-nez v0, :cond_0

    #@19
    .line 168
    const-string/jumbo v0, "NetworkIdentity"

    #@1c
    const-string/jumbo v8, "Active mobile network without subscriber!"

    #@1f
    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 171
    :cond_0
    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@24
    .line 172
    .local v3, "subscriberId":Ljava/lang/String;
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@26
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@29
    move-result v5

    #@2a
    .line 185
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v5    # "roaming":Z
    :cond_1
    :goto_0
    new-instance v0, Landroid/net/NetworkIdentity;

    #@2c
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    #@2f
    return-object v0

    #@30
    .line 174
    .local v3, "subscriberId":Ljava/lang/String;
    .restart local v4    # "networkId":Ljava/lang/String;
    .restart local v5    # "roaming":Z
    :cond_2
    const/4 v0, 0x1

    #@31
    if-ne v1, v0, :cond_1

    #@33
    .line 175
    iget-object v0, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@35
    if-eqz v0, :cond_3

    #@37
    .line 176
    iget-object v4, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@39
    .local v4, "networkId":Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 179
    .local v4, "networkId":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "wifi"

    #@3d
    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    check-cast v7, Landroid/net/wifi/WifiManager;

    #@43
    .line 180
    .local v7, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@46
    move-result-object v6

    #@47
    .line 181
    .local v6, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_4

    #@49
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    .local v4, "networkId":Ljava/lang/String;
    goto :goto_0

    #@4e
    .local v4, "networkId":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    #@4f
    goto :goto_0
.end method

.method public static scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    const-string/jumbo v0, "eng"

    #@3
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 133
    return-object p0

    #@c
    .line 134
    :cond_0
    if-eqz p0, :cond_1

    #@e
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    const/4 v2, 0x6

    #@18
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, "..."

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0

    #@31
    .line 138
    :cond_1
    const-string/jumbo v0, "null"

    #@34
    return-object v0
.end method

.method public static scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "subscriberId"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 146
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 147
    :cond_0
    array-length v2, p0

    #@5
    new-array v1, v2, [Ljava/lang/String;

    #@7
    .line 148
    .local v1, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 149
    aget-object v2, p0, v0

    #@d
    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 148
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 151
    :cond_1
    return-object v1
.end method


# virtual methods
.method public compareTo(Landroid/net/NetworkIdentity;)I
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 190
    iget v1, p0, Landroid/net/NetworkIdentity;->mType:I

    #@2
    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    #@4
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@7
    move-result v0

    #@8
    .line 191
    .local v0, "res":I
    if-nez v0, :cond_0

    #@a
    .line 192
    iget v1, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@c
    iget v2, p1, Landroid/net/NetworkIdentity;->mSubType:I

    #@e
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@11
    move-result v0

    #@12
    .line 194
    :cond_0
    if-nez v0, :cond_1

    #@14
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@16
    if-eqz v1, :cond_1

    #@18
    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 195
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1e
    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .line 197
    :cond_1
    if-nez v0, :cond_2

    #@26
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@28
    if-eqz v1, :cond_2

    #@2a
    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@2c
    if-eqz v1, :cond_2

    #@2e
    .line 198
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@30
    iget-object v2, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@35
    move-result v0

    #@36
    .line 200
    :cond_2
    if-nez v0, :cond_3

    #@38
    .line 201
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@3a
    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@3c
    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    #@3f
    move-result v0

    #@40
    .line 203
    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 189
    check-cast p1, Landroid/net/NetworkIdentity;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 75
    instance-of v2, p1, Landroid/net/NetworkIdentity;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 76
    check-cast v0, Landroid/net/NetworkIdentity;

    #@8
    .line 77
    .local v0, "ident":Landroid/net/NetworkIdentity;
    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    #@a
    iget v3, v0, Landroid/net/NetworkIdentity;->mType:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@10
    iget v3, v0, Landroid/net/NetworkIdentity;->mSubType:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@16
    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 78
    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1c
    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    .line 77
    if-eqz v2, :cond_0

    #@24
    .line 79
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@26
    iget-object v2, v0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@28
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    .line 77
    :cond_0
    return v1

    #@2d
    .line 81
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    return v1
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@2
    return v0
.end method

.method public getSubType()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@2
    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 70
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/net/NetworkIdentity;->mType:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@1c
    const/4 v2, 0x3

    #@1d
    aput-object v1, v0, v2

    #@1f
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@24
    move-result-object v1

    #@25
    const/4 v2, 0x4

    #@26
    aput-object v1, v0, v2

    #@28
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@2b
    move-result v0

    #@2c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 87
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "type="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    #@11
    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 88
    const-string/jumbo v1, ", subType="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 90
    const-string/jumbo v1, "COMBINED"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 96
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 97
    const-string/jumbo v1, ", subscriberId="

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@31
    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 99
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 100
    const-string/jumbo v1, ", networkId="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 102
    :cond_1
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 103
    const-string/jumbo v1, ", ROAMING"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 105
    :cond_2
    const-string/jumbo v1, "}"

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    return-object v1
.end method
