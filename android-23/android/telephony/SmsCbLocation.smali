.class public Landroid/telephony/SmsCbLocation;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbLocation$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mPlmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 180
    new-instance v0, Landroid/telephony/SmsCbLocation$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/SmsCbLocation$1;-><init>()V

    #@5
    .line 179
    sput-object v0, Landroid/telephony/SmsCbLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 43
    const-string/jumbo v0, ""

    #@7
    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@9
    .line 44
    iput v1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@b
    .line 45
    iput v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@d
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@9
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@f
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@15
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 53
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@6
    .line 54
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@8
    .line 55
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@a
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@5
    .line 64
    iput p2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@7
    .line 65
    iput p3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@9
    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 111
    if-ne p1, p0, :cond_0

    #@4
    .line 112
    return v1

    #@5
    .line 114
    :cond_0
    if-eqz p1, :cond_1

    #@7
    instance-of v3, p1, Landroid/telephony/SmsCbLocation;

    #@9
    if-eqz v3, :cond_1

    #@b
    move-object v0, p1

    #@c
    .line 117
    check-cast v0, Landroid/telephony/SmsCbLocation;

    #@e
    .line 118
    .local v0, "other":Landroid/telephony/SmsCbLocation;
    iget-object v3, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@10
    iget-object v4, v0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    iget v3, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@1a
    iget v4, v0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@1c
    if-ne v3, v4, :cond_2

    #@1e
    iget v3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@20
    iget v4, v0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@22
    if-ne v3, v4, :cond_2

    #@24
    :goto_0
    return v1

    #@25
    .line 115
    .end local v0    # "other":Landroid/telephony/SmsCbLocation;
    :cond_1
    return v2

    #@26
    .restart local v0    # "other":Landroid/telephony/SmsCbLocation;
    :cond_2
    move v1, v2

    #@27
    .line 118
    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@2
    return v0
.end method

.method public getLac()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@2
    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 103
    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 104
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@a
    add-int v0, v1, v2

    #@c
    .line 105
    mul-int/lit8 v1, v0, 0x1f

    #@e
    iget v2, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@10
    add-int v0, v1, v2

    #@12
    .line 106
    return v0
.end method

.method public isInLocationArea(Landroid/telephony/SmsCbLocation;)Z
    .locals 4
    .param p1, "area"    # Landroid/telephony/SmsCbLocation;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 133
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@4
    if-eq v0, v2, :cond_0

    #@6
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@8
    iget v1, p1, Landroid/telephony/SmsCbLocation;->mCid:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 134
    return v3

    #@d
    .line 136
    :cond_0
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@f
    if-eq v0, v2, :cond_1

    #@11
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@13
    iget v1, p1, Landroid/telephony/SmsCbLocation;->mLac:I

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 137
    return v3

    #@18
    .line 139
    :cond_1
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@1a
    iget-object v1, p1, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    return v0
.end method

.method public isInLocationArea(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 151
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 152
    return v1

    #@b
    .line 155
    :cond_0
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@d
    if-eq v0, v2, :cond_1

    #@f
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@11
    if-eq v0, p2, :cond_1

    #@13
    .line 156
    return v1

    #@14
    .line 159
    :cond_1
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@16
    if-eq v0, v2, :cond_2

    #@18
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@1a
    if-eq v0, p3, :cond_2

    #@1c
    .line 160
    return v1

    #@1d
    .line 163
    :cond_2
    const/4 v0, 0x1

    #@1e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x2c

    #@2
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const/16 v1, 0x5b

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const/16 v1, 0x5d

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 175
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 176
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 173
    return-void
.end method
