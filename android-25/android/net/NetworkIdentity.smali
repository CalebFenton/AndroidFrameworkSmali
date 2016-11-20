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
.field final mMetered:Z

.field final mNetworkId:Ljava/lang/String;

.field final mRoaming:Z

.field final mSubType:I

.field final mSubscriberId:Ljava/lang/String;

.field final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "subscriberId"    # Ljava/lang/String;
    .param p4, "networkId"    # Ljava/lang/String;
    .param p5, "roaming"    # Z
    .param p6, "metered"    # Z

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    #@5
    .line 64
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@8
    .line 65
    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@a
    .line 66
    iput-object p4, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@c
    .line 67
    iput-boolean p5, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@e
    .line 68
    iput-boolean p6, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@10
    .line 62
    return-void
.end method

.method public static buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkState;

    #@0
    .prologue
    .line 168
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@5
    move-result v1

    #@6
    .line 169
    .local v1, "type":I
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    #@b
    move-result v2

    #@c
    .line 171
    .local v2, "subType":I
    const/4 v3, 0x0

    #@d
    .line 172
    .local v3, "subscriberId":Ljava/lang/String;
    const/4 v4, 0x0

    #@e
    .line 173
    .local v4, "networkId":Ljava/lang/String;
    const/4 v5, 0x0

    #@f
    .line 174
    .local v5, "roaming":Z
    const/4 v6, 0x0

    #@10
    .line 176
    .local v6, "metered":Z
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_3

    #@16
    .line 177
    iget-object v0, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 178
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@1f
    move-result-object v0

    #@20
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    #@22
    if-eq v0, v9, :cond_0

    #@24
    .line 179
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@26
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    #@29
    move-result-object v0

    #@2a
    sget-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    #@2c
    if-eq v0, v9, :cond_0

    #@2e
    .line 180
    const-string/jumbo v0, "NetworkIdentity"

    #@31
    new-instance v9, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v10, "Active mobile network without subscriber! ni = "

    #@39
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v9

    #@3d
    .line 181
    iget-object v10, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@3f
    .line 180
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v9

    #@43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v9

    #@47
    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 185
    :cond_0
    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    #@4c
    .line 186
    .local v3, "subscriberId":Ljava/lang/String;
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    #@4e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    #@51
    move-result v5

    #@52
    .line 188
    .local v5, "roaming":Z
    iget-object v0, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@54
    .line 189
    const/16 v9, 0xb

    #@56
    .line 188
    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_2

    #@5c
    const/4 v6, 0x0

    #@5d
    .line 202
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v5    # "roaming":Z
    :cond_1
    :goto_0
    new-instance v0, Landroid/net/NetworkIdentity;

    #@5f
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    #@62
    return-object v0

    #@63
    .line 188
    .restart local v3    # "subscriberId":Ljava/lang/String;
    .restart local v4    # "networkId":Ljava/lang/String;
    .restart local v5    # "roaming":Z
    :cond_2
    const/4 v6, 0x1

    #@64
    goto :goto_0

    #@65
    .line 191
    .local v3, "subscriberId":Ljava/lang/String;
    .local v5, "roaming":Z
    :cond_3
    const/4 v0, 0x1

    #@66
    if-ne v1, v0, :cond_1

    #@68
    .line 192
    iget-object v0, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@6a
    if-eqz v0, :cond_4

    #@6c
    .line 193
    iget-object v4, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    #@6e
    .local v4, "networkId":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 196
    .local v4, "networkId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "wifi"

    #@72
    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@75
    move-result-object v8

    #@76
    check-cast v8, Landroid/net/wifi/WifiManager;

    #@78
    .line 197
    .local v8, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@7b
    move-result-object v7

    #@7c
    .line 198
    .local v7, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_5

    #@7e
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    .local v4, "networkId":Ljava/lang/String;
    goto :goto_0

    #@83
    .local v4, "networkId":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    #@84
    goto :goto_0
.end method

.method public static scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "subscriberId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
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
    .line 142
    return-object p0

    #@c
    .line 143
    :cond_0
    if-eqz p0, :cond_1

    #@e
    .line 145
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
    .line 147
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
    .line 155
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    .line 156
    :cond_0
    array-length v2, p0

    #@5
    new-array v1, v2, [Ljava/lang/String;

    #@7
    .line 157
    .local v1, "res":[Ljava/lang/String;
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_1

    #@b
    .line 158
    aget-object v2, p0, v0

    #@d
    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v1, v0

    #@13
    .line 157
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 160
    :cond_1
    return-object v1
.end method


# virtual methods
.method public compareTo(Landroid/net/NetworkIdentity;)I
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkIdentity;

    #@0
    .prologue
    .line 207
    iget v1, p0, Landroid/net/NetworkIdentity;->mType:I

    #@2
    iget v2, p1, Landroid/net/NetworkIdentity;->mType:I

    #@4
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@7
    move-result v0

    #@8
    .line 208
    .local v0, "res":I
    if-nez v0, :cond_0

    #@a
    .line 209
    iget v1, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@c
    iget v2, p1, Landroid/net/NetworkIdentity;->mSubType:I

    #@e
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@11
    move-result v0

    #@12
    .line 211
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
    .line 212
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1e
    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .line 214
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
    .line 215
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@30
    iget-object v2, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@35
    move-result v0

    #@36
    .line 217
    :cond_2
    if-nez v0, :cond_3

    #@38
    .line 218
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@3a
    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@3c
    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    #@3f
    move-result v0

    #@40
    .line 220
    :cond_3
    if-nez v0, :cond_4

    #@42
    .line 221
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@44
    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    #@46
    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    #@49
    move-result v0

    #@4a
    .line 223
    :cond_4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 206
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
    .line 78
    instance-of v2, p1, Landroid/net/NetworkIdentity;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 79
    check-cast v0, Landroid/net/NetworkIdentity;

    #@8
    .line 80
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
    .line 81
    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1c
    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@1e
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v2

    #@22
    .line 80
    if-eqz v2, :cond_0

    #@24
    .line 82
    iget-object v2, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@26
    iget-object v3, v0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@28
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    .line 80
    if-eqz v2, :cond_0

    #@2e
    .line 83
    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@30
    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@32
    if-ne v2, v3, :cond_0

    #@34
    const/4 v1, 0x1

    #@35
    .line 80
    :cond_0
    return v1

    #@36
    .line 85
    .end local v0    # "ident":Landroid/net/NetworkIdentity;
    :cond_1
    return v1
.end method

.method public getMetered()Z
    .locals 1

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@2
    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRoaming()Z
    .locals 1

    #@0
    .prologue
    .line 130
    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@2
    return v0
.end method

.method public getSubType()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    #@2
    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 73
    const/4 v0, 0x6

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
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 91
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
    .line 92
    const-string/jumbo v1, ", subType="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 94
    const-string/jumbo v1, "COMBINED"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 100
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 101
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
    .line 103
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    #@3a
    if-eqz v1, :cond_1

    #@3c
    .line 104
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
    .line 106
    :cond_1
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    #@4a
    if-eqz v1, :cond_2

    #@4c
    .line 107
    const-string/jumbo v1, ", ROAMING"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 109
    :cond_2
    const-string/jumbo v1, ", metered="

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5e
    .line 110
    const-string/jumbo v1, "}"

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    return-object v1
.end method
