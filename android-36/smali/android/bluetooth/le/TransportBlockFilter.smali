.class public final Landroid/bluetooth/le/TransportBlockFilter;
.super Ljava/lang/Object;
.source "TransportBlockFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/TransportBlockFilter$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/TransportBlockFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist WIFI_NAN_HASH_LENGTH_BYTES:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mOrgId:I

.field private final blacklist mTdsFlags:I

.field private final blacklist mTdsFlagsMask:I

.field private final blacklist mTransportData:[B

.field private final blacklist mTransportDataMask:[B

.field private final blacklist mWifiNanHash:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 312
    new-instance v0, Landroid/bluetooth/le/TransportBlockFilter$1;

    invoke-direct {v0}, Landroid/bluetooth/le/TransportBlockFilter$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/TransportBlockFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III[B[B[B)V
    .registers 10
    .param p1, "orgId"    # I
    .param p2, "tdsFlags"    # I
    .param p3, "tdsFlagsMask"    # I
    .param p4, "transportData"    # [B
    .param p5, "transportDataMask"    # [B
    .param p6, "wifiNanHash"    # [B

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    if-lt p1, v0, :cond_69

    .line 65
    const/4 v0, -0x1

    if-eq p2, v0, :cond_61

    .line 68
    if-eq p3, v0, :cond_59

    .line 71
    const/4 v0, 0x2

    if-ne p1, v0, :cond_42

    .line 72
    if-nez p4, :cond_3a

    if-nez p5, :cond_3a

    .line 78
    if-eqz p6, :cond_44

    array-length v0, p6

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    goto :goto_44

    .line 79
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiNanHash should be WIFI_NAN_HASH_LENGTH_BYTES long, but the input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wifiNanHash should be used instead of transportData and/or transportDataMask when orgId is WIFI_ALLIANCE_NEIGHBOR_AWARENESS_NETWORKING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_42
    if-nez p6, :cond_51

    .line 91
    :cond_44
    :goto_44
    iput p1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    .line 92
    iput p2, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    .line 93
    iput p3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    .line 94
    iput-object p4, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    .line 95
    iput-object p5, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    .line 96
    iput-object p6, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    .line 97
    return-void

    .line 86
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wifiNanHash should not be used when orgId is not WIFI_ALLIANCE_NEIGHBOR_AWARENESS_NETWORKING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tdsFlagsMask is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tdsFlag is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid organization id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(III[B[B[BLandroid/bluetooth/le/TransportBlockFilter-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/bluetooth/le/TransportBlockFilter;-><init>(III[B[B[B)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 291
    instance-of v0, p1, Landroid/bluetooth/le/TransportBlockFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 292
    return v1

    .line 294
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 295
    return v0

    .line 297
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/TransportBlockFilter;

    .line 298
    .local v2, "other":Landroid/bluetooth/le/TransportBlockFilter;
    iget v3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlockFilter;->getOrgId()I

    move-result v4

    if-ne v3, v4, :cond_4b

    iget v3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    .line 299
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlockFilter;->getTdsFlags()I

    move-result v4

    if-ne v3, v4, :cond_4b

    iget v3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    .line 300
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlockFilter;->getTdsFlagsMask()I

    move-result v4

    if-ne v3, v4, :cond_4b

    iget-object v3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    .line 301
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlockFilter;->getTransportData()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    .line 302
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlockFilter;->getTransportDataMask()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    .line 303
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlockFilter;->getWifiNanHash()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4b

    move v1, v0

    goto :goto_4c

    :cond_4b
    nop

    .line 298
    :goto_4c
    return v1
.end method

.method public whitelist getOrgId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 109
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    return v0
.end method

.method public whitelist getTdsFlags()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 119
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    return v0
.end method

.method public whitelist getTdsFlagsMask()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 131
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    return v0
.end method

.method public whitelist getTransportData()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    return-object v0
.end method

.method public whitelist getTransportDataMask()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    return-object v0
.end method

.method public whitelist getWifiNanHash()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 280
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    .line 284
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    .line 285
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist matches(Landroid/bluetooth/le/ScanResult;)Z
    .registers 12
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 190
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 192
    .local v0, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getTransportDiscoveryData()Landroid/bluetooth/le/TransportDiscoveryData;

    move-result-object v1

    .line 194
    .local v1, "transportDiscoveryData":Landroid/bluetooth/le/TransportDiscoveryData;
    if-eqz v1, :cond_5a

    .line 195
    invoke-virtual {v1}, Landroid/bluetooth/le/TransportDiscoveryData;->getTransportBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/TransportBlock;

    .line 196
    .local v3, "transportBlock":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {v3}, Landroid/bluetooth/le/TransportBlock;->getOrgId()I

    move-result v4

    .line 197
    .local v4, "orgId":I
    invoke-virtual {v3}, Landroid/bluetooth/le/TransportBlock;->getTdsFlags()I

    move-result v5

    .line 198
    .local v5, "tdsFlags":I
    invoke-virtual {v3}, Landroid/bluetooth/le/TransportBlock;->getTransportDataLength()I

    move-result v6

    .line 199
    .local v6, "transportDataLength":I
    invoke-virtual {v3}, Landroid/bluetooth/le/TransportBlock;->getTransportData()[B

    move-result-object v7

    .line 201
    .local v7, "transportData":[B
    iget v8, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    if-eq v8, v4, :cond_33

    .line 202
    goto :goto_12

    .line 204
    :cond_33
    iget v8, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    iget v9, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    and-int/2addr v8, v9

    iget v9, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    and-int/2addr v9, v5

    if-eq v8, v9, :cond_3e

    .line 205
    goto :goto_12

    .line 207
    :cond_3e
    iget v8, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_58

    iget-object v8, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    if-eqz v8, :cond_58

    iget-object v8, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    if-eqz v8, :cond_58

    .line 210
    if-eqz v6, :cond_12

    .line 211
    iget-object v8, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    iget-object v9, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    invoke-static {v8, v9, v7}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v8

    if-nez v8, :cond_58

    .line 213
    goto :goto_12

    .line 219
    :cond_58
    const/4 v2, 0x1

    return v2

    .line 223
    .end local v3    # "transportBlock":Landroid/bluetooth/le/TransportBlock;
    .end local v4    # "orgId":I
    .end local v5    # "tdsFlags":I
    .end local v6    # "transportDataLength":I
    .end local v7    # "transportData":[B
    :cond_5a
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportBlockFilter [mOrgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTdsFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTdsFlagsMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    .line 270
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    .line 272
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWifiNanHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    .line 274
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 240
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mOrgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTdsFlagsMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    if-eqz v0, :cond_43

    .line 245
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 247
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    if-nez v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    :goto_31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    if-eqz v0, :cond_43

    .line 249
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mTransportDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 253
    :cond_43
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    if-nez v0, :cond_48

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    if-eqz v0, :cond_5b

    .line 255
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlockFilter;->mWifiNanHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 258
    :cond_5b
    return-void
.end method
