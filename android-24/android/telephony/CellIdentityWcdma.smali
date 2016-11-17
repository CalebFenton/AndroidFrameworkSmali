.class public final Landroid/telephony/CellIdentityWcdma;
.super Ljava/lang/Object;
.source "CellIdentityWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentityWcdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityWcdma"


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPsc:I

.field private final mUarfcn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    #@5
    .line 217
    sput-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@8
    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@a
    .line 52
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@c
    .line 53
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@e
    .line 54
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@10
    .line 55
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@12
    .line 49
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "psc"    # I

    #@0
    .prologue
    .line 68
    const v6, 0x7fffffff

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
    move v5, p5

    #@9
    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIIII)V

    #@c
    .line 67
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "psc"    # I
    .param p6, "uarfcn"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@5
    .line 84
    iput p2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@7
    .line 85
    iput p3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@9
    .line 86
    iput p4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@b
    .line 87
    iput p5, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@d
    .line 88
    iput p6, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@f
    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@9
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@f
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@15
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@1b
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@21
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@27
    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityWcdma;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityWcdma;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityWcdma;

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@5
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@7
    .line 93
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@9
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@b
    .line 94
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@f
    .line 95
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@11
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@13
    .line 96
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@15
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@17
    .line 97
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@1b
    .line 91
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 234
    const-string/jumbo v0, "CellIdentityWcdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 233
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    #@0
    .prologue
    .line 101
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/telephony/CellIdentityWcdma;)V

    #@5
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 189
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
    .line 155
    if-ne p0, p1, :cond_0

    #@4
    .line 156
    return v1

    #@5
    .line 159
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityWcdma;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 160
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 163
    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    #@d
    .line 164
    .local v0, "o":Landroid/telephony/CellIdentityWcdma;
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@f
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 165
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@15
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 166
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@1b
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 167
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@21
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 168
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@27
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@29
    if-ne v3, v4, :cond_3

    #@2b
    .line 169
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@2d
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@2f
    if-ne v3, v4, :cond_2

    #@31
    .line 164
    :goto_0
    return v1

    #@32
    :cond_2
    move v1, v2

    #@33
    .line 169
    goto :goto_0

    #@34
    :cond_3
    move v1, v2

    #@35
    .line 164
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 115
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@2
    return v0
.end method

.method public getPsc()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@2
    return v0
.end method

.method public getUarfcn()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 143
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x4

    #@2e
    aput-object v1, v0, v2

    #@30
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@33
    move-result v0

    #@34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CellIdentityWcdma:{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mMcc="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    .line 176
    const-string/jumbo v1, " mMnc="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    .line 177
    const-string/jumbo v1, " mLac="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    .line 178
    const-string/jumbo v1, " mCid="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    .line 179
    const-string/jumbo v1, " mPsc="

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    .line 180
    const-string/jumbo v1, " mUarfcn="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget v2, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    .line 181
    const-string/jumbo v1, "}"

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 196
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 197
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 198
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 199
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 200
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 201
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 194
    return-void
.end method
