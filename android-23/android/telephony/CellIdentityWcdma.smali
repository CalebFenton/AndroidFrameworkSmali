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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 187
    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    #@5
    .line 186
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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@8
    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@a
    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@c
    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@e
    .line 52
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@10
    .line 47
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I
    .param p5, "psc"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@5
    .line 66
    iput p2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@7
    .line 67
    iput p3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@9
    .line 68
    iput p4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@b
    .line 69
    iput p5, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@d
    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@9
    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@f
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@15
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@1b
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@21
    .line 175
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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@5
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@7
    .line 74
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@9
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@b
    .line 75
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@f
    .line 76
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@11
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@13
    .line 77
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@15
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@17
    .line 72
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 203
    const-string/jumbo v0, "CellIdentityWcdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 202
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    #@0
    .prologue
    .line 81
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
    .line 160
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
    .line 128
    if-ne p0, p1, :cond_0

    #@4
    .line 129
    return v1

    #@5
    .line 132
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityWcdma;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 133
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 136
    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    #@d
    .line 137
    .local v0, "o":Landroid/telephony/CellIdentityWcdma;
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@f
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 138
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@15
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 139
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@1b
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 140
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@21
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 141
    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@27
    iget v4, v0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@29
    if-ne v3, v4, :cond_2

    #@2b
    .line 137
    :goto_0
    return v1

    #@2c
    :cond_2
    move v1, v2

    #@2d
    .line 141
    goto :goto_0

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 137
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 102
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 88
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@2
    return v0
.end method

.method public getPsc()I
    .locals 1

    #@0
    .prologue
    .line 118
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 123
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
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CellIdentityWcdma:{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 147
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
    .line 148
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
    .line 149
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
    .line 150
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
    .line 151
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
    .line 152
    const-string/jumbo v1, "}"

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 168
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 169
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 170
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 171
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 165
    return-void
.end method
