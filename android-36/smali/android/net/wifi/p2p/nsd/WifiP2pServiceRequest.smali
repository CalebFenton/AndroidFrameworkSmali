.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLength:I

.field private greylist-max-o mProtocolType:I

.field private greylist-max-o mQuery:Ljava/lang/String;

.field private greylist-max-o mTransId:I

.field private blacklist mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

.field private blacklist mUsdSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 359
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V
    .registers 8
    .param p1, "serviceType"    # I
    .param p2, "length"    # I
    .param p3, "transId"    # I
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "usdConfig"    # Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .param p6, "usdSessionId"    # I

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    .line 129
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    .line 130
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    .line 131
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    .line 132
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 134
    iput p6, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;ILandroid/net/wifi/p2p/nsd/WifiP2pServiceRequest-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V

    return-void
.end method

.method protected constructor greylist-max-p <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "protocolType"    # I
    .param p2, "query"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    .line 105
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->validateQuery(Ljava/lang/String;)V

    .line 107
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    .line 108
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    .line 109
    const/4 v0, 0x2

    if-eqz p2, :cond_19

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    goto :goto_1b

    .line 112
    :cond_19
    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    .line 114
    :goto_1b
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;)V
    .registers 3
    .param p1, "usdConfig"    # Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    .line 302
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 305
    const-string v0, "usdConfig cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 307
    return-void

    .line 303
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static whitelist newInstance(I)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .registers 3
    .param p0, "protocolType"    # I

    .line 287
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist newInstance(ILjava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .registers 3
    .param p0, "protocolType"    # I
    .param p1, "queryData"    # Ljava/lang/String;

    .line 272
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o validateQuery(Ljava/lang/String;)V
    .registers 8
    .param p1, "query"    # Ljava/lang/String;

    .line 233
    if-nez p1, :cond_3

    .line 234
    return-void

    .line 237
    :cond_3
    const v0, 0xffff

    .line 238
    .local v0, "UNSIGNED_SHORT_MAX":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_71

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-gt v1, v0, :cond_54

    .line 248
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 250
    .local v1, "chars":[C
    array-length v2, v1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_53

    aget-char v4, v1, v3

    .line 251
    .local v4, "c":C
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2f

    const/16 v5, 0x39

    if-le v4, v5, :cond_37

    :cond_2f
    const/16 v5, 0x61

    if-lt v4, v5, :cond_3a

    const/16 v5, 0x66

    if-gt v4, v5, :cond_3a

    .line 250
    .end local v4    # "c":C
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 253
    .restart local v4    # "c":C
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query should be hex string. query="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v4    # "c":C
    :cond_53
    return-void

    .line 243
    .end local v1    # "chars":[C
    :cond_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query size is too large. len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query size is invalid. query="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 311
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 312
    return v0

    .line 314
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 315
    return v2

    .line 318
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 324
    .local v1, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    iget v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    iget v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    .line 326
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    iget-object v4, v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 327
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 324
    :goto_2f
    return v0
.end method

.method public greylist-max-o getSupplicantQuery()Ljava/lang/String;
    .registers 5

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 173
    .local v0, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02x"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 178
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getTransactionId()I
    .registers 2

    .line 144
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    return v0
.end method

.method public blacklist getUsdSessionId()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    return v0
.end method

.method public whitelist getWifiP2pUsdBasedServiceConfig()Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .registers 2

    .line 220
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 223
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    return-object v0

    .line 221
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 332
    const/16 v0, 0x11

    .line 333
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    add-int/2addr v1, v2

    .line 334
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    add-int/2addr v0, v2

    .line 335
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    move v2, v3

    goto :goto_1b

    :cond_15
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v1, v2

    .line 336
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    if-nez v2, :cond_23

    goto :goto_29

    :cond_23
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_29
    add-int/2addr v0, v3

    .line 337
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o setTransactionId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 154
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    .line 155
    return-void
.end method

.method public blacklist setUsdSessionId(I)V
    .registers 2
    .param p1, "sessionId"    # I

    .line 203
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    .line 204
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 347
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 352
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdServiceConfig:Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mUsdSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    :cond_2a
    return-void
.end method
