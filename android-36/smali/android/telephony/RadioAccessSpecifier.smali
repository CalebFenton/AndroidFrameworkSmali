.class public final Landroid/telephony/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mBands:[I

.field private greylist-max-o mChannels:[I

.field private greylist-max-o mRadioAccessNetwork:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/telephony/RadioAccessSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[I[I)V
    .registers 6
    .param p1, "ran"    # I
    .param p2, "bands"    # [I
    .param p3, "channels"    # [I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    .line 75
    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 76
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    goto :goto_13

    .line 78
    :cond_11
    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 80
    :goto_13
    if-eqz p3, :cond_1e

    .line 81
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    goto :goto_20

    .line 83
    :cond_1e
    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 85
    :goto_20
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 142
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/RadioAccessSpecifier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/RadioAccessSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/RadioAccessSpecifier;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_26

    .line 152
    .local v1, "ras":Landroid/telephony/RadioAccessSpecifier;
    nop

    .line 154
    if-nez p1, :cond_8

    .line 155
    return v0

    .line 158
    :cond_8
    iget v2, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    iget v3, v1, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    iget-object v3, v1, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 159
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    iget-object v3, v1, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 160
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 158
    :goto_25
    return v0

    .line 150
    .end local v1    # "ras":Landroid/telephony/RadioAccessSpecifier;
    :catch_26
    move-exception v1

    .line 151
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist getBands()[I
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_e
    return-object v0
.end method

.method public whitelist getChannels()[I
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_e
    return-object v0
.end method

.method public whitelist getRadioAccessNetwork()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 165
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 166
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 167
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x27

    add-int/2addr v0, v1

    .line 165
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioAccessSpecifier[mRadioAccessNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    .line 173
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 174
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 136
    return-void
.end method
