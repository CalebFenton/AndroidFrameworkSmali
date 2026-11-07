.class public Landroid/service/carrier/CarrierIdentifier;
.super Ljava/lang/Object;
.source "CarrierIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierIdentifier$MatchType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCarrierId:I

.field private greylist-max-o mGid1:Ljava/lang/String;

.field private greylist-max-o mGid2:Ljava/lang/String;

.field private greylist-max-o mImsi:Ljava/lang/String;

.field private greylist-max-o mMcc:Ljava/lang/String;

.field private greylist-max-o mMnc:Ljava/lang/String;

.field private blacklist mSpecificCarrierId:I

.field private greylist-max-o mSpn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/service/carrier/CarrierIdentifier$1;

    invoke-direct {v0}, Landroid/service/carrier/CarrierIdentifier$1;-><init>()V

    sput-object v0, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    .line 59
    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    .line 120
    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierIdentifier;->readFromParcel(Landroid/os/Parcel;)V

    .line 121
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;

    .line 63
    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "mcc":Ljava/lang/String;
    .end local p2    # "mnc":Ljava/lang/String;
    .end local p3    # "spn":Ljava/lang/String;
    .end local p4    # "imsi":Ljava/lang/String;
    .end local p5    # "gid1":Ljava/lang/String;
    .end local p6    # "gid2":Ljava/lang/String;
    .local v1, "mcc":Ljava/lang/String;
    .local v2, "mnc":Ljava/lang/String;
    .local v3, "spn":Ljava/lang/String;
    .local v4, "imsi":Ljava/lang/String;
    .local v5, "gid1":Ljava/lang/String;
    .local v6, "gid2":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/service/carrier/CarrierIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "carrierid"    # I
    .param p8, "specificCarrierId"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    .line 59
    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    .line 82
    iput-object p1, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 88
    iput p7, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    .line 89
    iput p8, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    .line 90
    return-void
.end method

.method public constructor whitelist <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "mccMnc"    # [B
    .param p2, "gid1"    # Ljava/lang/String;
    .param p3, "gid2"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    .line 59
    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    .line 101
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_73

    .line 105
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "hex":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    new-array v8, v1, [C

    aput-char v4, v8, v5

    aput-char v6, v8, v3

    const/4 v4, 0x2

    aput-char v7, v8, v4

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x46

    const/4 v7, 0x4

    const/4 v8, 0x5

    if-ne v2, v6, :cond_4e

    .line 108
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    new-array v4, v4, [C

    aput-char v2, v4, v5

    aput-char v6, v4, v3

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    goto :goto_69

    .line 110
    :cond_4e
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    new-array v1, v1, [C

    aput-char v6, v1, v5

    aput-char v7, v1, v3

    aput-char v8, v1, v4

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 112
    :goto_69
    iput-object p2, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 116
    return-void

    .line 102
    .end local v0    # "hex":Ljava/lang/String;
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCC & MNC must be set by a 3-byte array: byte["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 182
    return v0

    .line 184
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_78

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_78

    .line 188
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/carrier/CarrierIdentifier;

    .line 189
    .local v2, "that":Landroid/service/carrier/CarrierIdentifier;
    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 190
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 191
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 192
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 193
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 194
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget v3, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    iget v3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    goto :goto_77

    :cond_76
    move v0, v1

    .line 189
    :goto_77
    return v0

    .line 185
    .end local v2    # "that":Landroid/service/carrier/CarrierIdentifier;
    :cond_78
    :goto_78
    return v1
.end method

.method public whitelist getCarrierId()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    return v0
.end method

.method public whitelist getGid1()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getGid2()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImsi()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMcc()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSpecificCarrierId()I
    .registers 2

    .line 176
    iget v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    return v0
.end method

.method public whitelist getSpn()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 201
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    iget-object v5, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    iget v6, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    .line 245
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierIdentifier{mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    .line 227
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",gid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",carrierid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",specificCarrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Landroid/service/carrier/CarrierIdentifier;->mCarrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpecificCarrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return-void
.end method
