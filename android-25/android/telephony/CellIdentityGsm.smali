.class public final Landroid/telephony/CellIdentityGsm;
.super Ljava/lang/Object;
.source "CellIdentityGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentityGsm$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityGsm"


# instance fields
.field private final mArfcn:I

.field private final mBsic:I

.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 231
    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    #@5
    .line 230
    sput-object v0, Landroid/telephony/CellIdentityGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@8
    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@a
    .line 52
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@c
    .line 53
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@e
    .line 54
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@10
    .line 55
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@12
    .line 49
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I

    #@0
    .prologue
    const v5, 0x7fffffff

    #@3
    move-object v0, p0

    #@4
    move v1, p1

    #@5
    move v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move v6, v5

    #@9
    .line 67
    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentityGsm;-><init>(IIIIII)V

    #@c
    .line 66
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "arfcn"    # I
    .param p6, "bsic"    # I

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 82
    iput p1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@5
    .line 83
    iput p2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@7
    .line 84
    iput p3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@9
    .line 85
    iput p4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@b
    .line 86
    iput p5, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@d
    .line 87
    iput p6, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@f
    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@9
    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@f
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v1

    #@13
    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@15
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@1b
    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@21
    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    .line 222
    .local v0, "bsic":I
    const/16 v1, 0xff

    #@27
    if-ne v0, v1, :cond_0

    #@29
    const v0, 0x7fffffff

    #@2c
    .line 223
    :cond_0
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@2e
    .line 213
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityGsm;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityGsm;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityGsm;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@5
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@7
    .line 92
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@9
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@b
    .line 93
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@f
    .line 94
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@11
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@13
    .line 95
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@15
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@17
    .line 96
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@1b
    .line 90
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    const-string/jumbo v0, "CellIdentityGsm"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 246
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityGsm;
    .locals 1

    #@0
    .prologue
    .line 100
    new-instance v0, Landroid/telephony/CellIdentityGsm;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityGsm;-><init>(Landroid/telephony/CellIdentityGsm;)V

    #@5
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 163
    if-ne p0, p1, :cond_0

    #@4
    .line 164
    return v1

    #@5
    .line 167
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityGsm;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 168
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 171
    check-cast v0, Landroid/telephony/CellIdentityGsm;

    #@d
    .line 172
    .local v0, "o":Landroid/telephony/CellIdentityGsm;
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@f
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 173
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@15
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 174
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@1b
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 175
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@21
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 176
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@27
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@29
    if-ne v3, v4, :cond_3

    #@2b
    .line 177
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@2d
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@2f
    if-ne v3, v4, :cond_2

    #@31
    .line 172
    :goto_0
    return v1

    #@32
    :cond_2
    move v1, v2

    #@33
    .line 177
    goto :goto_0

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 172
    goto :goto_0
.end method

.method public getArfcn()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@2
    return v0
.end method

.method public getBsic()I
    .locals 1

    #@0
    .prologue
    .line 144
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@2
    return v0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@2
    return v0
.end method

.method public getPsc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 153
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 158
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget v1, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@2a
    move-result v0

    #@2b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CellIdentityGsm:{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mMcc="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 184
    const-string/jumbo v1, " mMnc="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 185
    const-string/jumbo v1, " mLac="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 186
    const-string/jumbo v1, " mCid="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    .line 187
    const-string/jumbo v1, " mArfcn="

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    .line 188
    const-string/jumbo v1, " mBsic="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    const-string/jumbo v2, "0x"

    #@4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    iget v2, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@54
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 189
    const-string/jumbo v1, "}"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 204
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 205
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 206
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 207
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 208
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mArfcn:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 209
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mBsic:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 202
    return-void
.end method
