.class public final Landroid/telephony/CellIdentityTdscdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityTdscdma.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist MAX_CID:I = 0xfffffff

.field private static final blacklist MAX_CPID:I = 0x7f

.field private static final blacklist MAX_LAC:I = 0xffff

.field private static final blacklist MAX_UARFCN:I = 0xffff

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAdditionalPlmns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCid:I

.field private final greylist-max-o mCpid:I

.field private blacklist mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

.field private final greylist-max-o mLac:I

.field private final blacklist mUarfcn:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    const-class v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    .line 309
    new-instance v0, Landroid/telephony/CellIdentityTdscdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityTdscdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityTdscdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 8

    .line 64
    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const v1, 0x7fffffff

    iput v1, v0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 66
    iput v1, v0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 67
    iput v1, v0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 68
    iput v1, v0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    .line 69
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 70
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 71
    iput-object v1, v0, Landroid/telephony/CellIdentityTdscdma;->mGlobalCellId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 294
    sget-object v0, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 300
    const-class v1, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iput-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 302
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->updateGlobalCellId()V

    .line 304
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityTdscdma;)V
    .registers 13
    .param p1, "cid"    # Landroid/telephony/CellIdentityTdscdma;

    .line 110
    iget-object v1, p1, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    iget-object v2, p1, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    iget v3, p1, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    iget v4, p1, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    iget v5, p1, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    iget v6, p1, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    iget-object v7, p1, Landroid/telephony/CellIdentityTdscdma;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityTdscdma;->mAlphaShort:Ljava/lang/String;

    iget-object v9, p1, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v10, p1, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    .line 113
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V
    .registers 18
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "cpid"    # I
    .param p6, "uarfcn"    # I
    .param p7, "alphal"    # Ljava/lang/String;
    .param p8, "alphas"    # Ljava/lang/String;
    .param p10, "csgInfo"    # Landroid/telephony/ClosedSubscriberGroupInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ClosedSubscriberGroupInfo;",
            ")V"
        }
    .end annotation

    .line 94
    .local p9, "additionalPlmns":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    const v2, 0xffff

    invoke-static {p3, v1, v2}, Landroid/telephony/CellIdentityTdscdma;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    .line 96
    const v3, 0xfffffff

    invoke-static {p4, v1, v3}, Landroid/telephony/CellIdentityTdscdma;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    .line 97
    const/16 v3, 0x7f

    invoke-static {p5, v1, v3}, Landroid/telephony/CellIdentityTdscdma;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    .line 98
    invoke-static {p6, v1, v2}, Landroid/telephony/CellIdentityTdscdma;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    .line 99
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface/range {p9 .. p9}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 100
    invoke-interface/range {p9 .. p9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "plmn":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/CellIdentityTdscdma;->isValidPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 102
    iget-object v3, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v2    # "plmn":Ljava/lang/String;
    :cond_52
    goto :goto_3b

    .line 105
    :cond_53
    move-object/from16 v1, p10

    iput-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 106
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->updateGlobalCellId()V

    .line 107
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 325
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityTdscdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->asCellLocation()Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/gsm/GsmCellLocation;
    .registers 6

    .line 223
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 224
    .local v0, "cl":Landroid/telephony/gsm/GsmCellLocation;
    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_10

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    goto :goto_11

    :cond_10
    move v1, v2

    .line 225
    .local v1, "lac":I
    :goto_11
    iget v4, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    if-eq v4, v3, :cond_18

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    goto :goto_19

    :cond_18
    move v3, v2

    .line 226
    .local v3, "cid":I
    :goto_19
    invoke-virtual {v0, v1, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 228
    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityTdscdma;
    .registers 2

    .line 124
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityTdscdma;-><init>(Landroid/telephony/CellIdentityTdscdma;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 233
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 234
    return v0

    .line 237
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityTdscdma;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 238
    return v2

    .line 241
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityTdscdma;

    .line 242
    .local v1, "o":Landroid/telephony/CellIdentityTdscdma;
    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 246
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-object v4, v1, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    .line 247
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 248
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    goto :goto_41

    :cond_40
    move v0, v2

    .line 242
    :goto_41
    return v0
.end method

.method public whitelist getAdditionalPlmns()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChannelNumber()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    return v0
.end method

.method public whitelist getCid()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    return v0
.end method

.method public whitelist getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    return-object v0
.end method

.method public whitelist getCpid()I
    .registers 2

    .line 186
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    return v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    return v0
.end method

.method public whitelist getMccString()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMncString()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMobileNetworkOperator()Ljava/lang/String;
    .registers 3

    .line 162
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public whitelist getUarfcn()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 253
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    .line 254
    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 253
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityTdscdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityTdscdma;
    .registers 12

    .line 118
    new-instance v0, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/CellIdentityTdscdma;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/CellIdentityTdscdma;->mAlphaShort:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 v10, 0x0

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityTdscdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, ":{ mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 261
    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 262
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    const-string v1, " mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, " mCpid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string v1, " mUarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string v1, " mAdditionalPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string v1, " mCsgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 270
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .registers 5

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mGlobalCellId:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getPlmn()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "plmn":Ljava/lang/String;
    if-nez v0, :cond_a

    return-void

    .line 134
    :cond_a
    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_40

    iget v1, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    if-ne v1, v2, :cond_16

    goto :goto_40

    .line 136
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04x%04x"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityTdscdma;->mGlobalCellId:Ljava/lang/String;

    .line 137
    return-void

    .line 134
    :cond_40
    :goto_40
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 283
    const/4 v0, 0x5

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCpid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/telephony/CellIdentityTdscdma;->mUarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 289
    iget-object v0, p0, Landroid/telephony/CellIdentityTdscdma;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 290
    return-void
.end method
