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
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 178
    new-instance v0, Landroid/telephony/CellIdentityGsm$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellIdentityGsm$1;-><init>()V

    #@5
    .line 177
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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 46
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@8
    .line 47
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@a
    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@c
    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@e
    .line 45
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "lac"    # I
    .param p4, "cid"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput p1, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@5
    .line 62
    iput p2, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@7
    .line 63
    iput p3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@9
    .line 64
    iput p4, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@b
    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@9
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@f
    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@15
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@1b
    .line 167
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
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@5
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@7
    .line 69
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@9
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@b
    .line 70
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@f
    .line 71
    iget v0, p1, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@11
    iput v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@13
    .line 67
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "CellIdentityGsm"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 193
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityGsm;
    .locals 1

    #@0
    .prologue
    .line 75
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
    .line 153
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
    .line 123
    if-ne p0, p1, :cond_0

    #@4
    .line 124
    return v1

    #@5
    .line 127
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityGsm;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 128
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 131
    check-cast v0, Landroid/telephony/CellIdentityGsm;

    #@d
    .line 132
    .local v0, "o":Landroid/telephony/CellIdentityGsm;
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@f
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 133
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@15
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 134
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@1b
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 135
    iget v3, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@21
    iget v4, v0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 132
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    .line 135
    goto :goto_0

    #@28
    :cond_3
    move v1, v2

    #@29
    .line 132
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 89
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
    .line 113
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 118
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
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CellIdentityGsm:{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 141
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
    .line 142
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
    .line 143
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
    .line 144
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
    .line 145
    const-string/jumbo v1, "}"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 160
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMcc:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 161
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mMnc:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 162
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mLac:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 163
    iget v0, p0, Landroid/telephony/CellIdentityGsm;->mCid:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 158
    return-void
.end method
