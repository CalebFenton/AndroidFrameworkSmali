.class public final Landroid/telephony/SmsCbLocation;
.super Ljava/lang/Object;
.source "SmsCbLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCid:I

.field private final greylist-max-o mLac:I

.field private final greylist-max-o mPlmn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Landroid/telephony/SmsCbLocation$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbLocation$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 51
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "plmn"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 62
    iput v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    .line 75
    iput p2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    .line 76
    iput p3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    .line 77
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 125
    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    instance-of v2, p1, Landroid/telephony/SmsCbLocation;

    if-nez v2, :cond_c

    goto :goto_28

    .line 130
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/SmsCbLocation;

    .line 131
    .local v2, "other":Landroid/telephony/SmsCbLocation;
    iget-object v3, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v4, v2, Landroid/telephony/SmsCbLocation;->mLac:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v4, v2, Landroid/telephony/SmsCbLocation;->mCid:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    return v0

    .line 128
    .end local v2    # "other":Landroid/telephony/SmsCbLocation;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getCid()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    return v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    return v0
.end method

.method public whitelist getPlmn()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 116
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 117
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    add-int/2addr v1, v2

    .line 118
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    add-int/2addr v0, v2

    .line 119
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public whitelist isInLocationArea(Landroid/telephony/SmsCbLocation;)Z
    .registers 6
    .param p1, "area"    # Landroid/telephony/SmsCbLocation;

    .line 146
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    iget v3, p1, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v3, :cond_d

    .line 147
    return v1

    .line 149
    :cond_d
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_18

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    iget v2, p1, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, v2, :cond_18

    .line 150
    return v1

    .line 152
    :cond_18
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isInLocationArea(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    .line 164
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 165
    return v1

    .line 168
    :cond_a
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    if-eq v0, p2, :cond_14

    .line 169
    return v1

    .line 172
    :cond_14
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, v2, :cond_1d

    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    if-eq v0, p3, :cond_1d

    .line 173
    return v1

    .line 176
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 187
    iget-object v0, p0, Landroid/telephony/SmsCbLocation;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/telephony/SmsCbLocation;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return-void
.end method
