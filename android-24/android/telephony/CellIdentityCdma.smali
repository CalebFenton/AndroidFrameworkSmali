.class public final Landroid/telephony/CellIdentityCdma;
.super Ljava/lang/Object;
.source "CellIdentityCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentityCdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private final mBasestationId:I

.field private final mLatitude:I

.field private final mLongitude:I

.field private final mNetworkId:I

.field private final mSystemId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 206
    new-instance v0, Landroid/telephony/CellIdentityCdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma$1;-><init>()V

    #@5
    .line 205
    sput-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 58
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@8
    .line 59
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@a
    .line 60
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@c
    .line 61
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@e
    .line 62
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@10
    .line 57
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "nid"    # I
    .param p2, "sid"    # I
    .param p3, "bid"    # I
    .param p4, "lon"    # I
    .param p5, "lat"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput p1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@5
    .line 79
    iput p2, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@7
    .line 80
    iput p3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@9
    .line 81
    iput p4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@b
    .line 82
    iput p5, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@d
    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@9
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@f
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@15
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@1b
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@21
    .line 194
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityCdma;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityCdma;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@5
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@7
    .line 87
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@9
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@b
    .line 88
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@f
    .line 89
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@11
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@13
    .line 90
    iget v0, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@15
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@17
    .line 85
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    const-string/jumbo v0, "CellSignalStrengthCdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 221
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityCdma;
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/telephony/CellIdentityCdma;)V

    #@5
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 179
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
    .line 147
    if-ne p0, p1, :cond_0

    #@4
    .line 148
    return v1

    #@5
    .line 151
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityCdma;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 152
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 155
    check-cast v0, Landroid/telephony/CellIdentityCdma;

    #@d
    .line 156
    .local v0, "o":Landroid/telephony/CellIdentityCdma;
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@f
    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 157
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@15
    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 158
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@1b
    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 159
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@21
    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 160
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@27
    iget v4, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@29
    if-ne v3, v4, :cond_2

    #@2b
    .line 156
    :goto_0
    return v1

    #@2c
    :cond_2
    move v1, v2

    #@2d
    .line 160
    goto :goto_0

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 156
    goto :goto_0
.end method

.method public getBasestationId()I
    .locals 1

    #@0
    .prologue
    .line 115
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@2
    return v0
.end method

.method public getLatitude()I
    .locals 1

    #@0
    .prologue
    .line 137
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@2
    return v0
.end method

.method public getLongitude()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@2
    return v0
.end method

.method public getNetworkId()I
    .locals 1

    #@0
    .prologue
    .line 101
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@2
    return v0
.end method

.method public getSystemId()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 142
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

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
    .locals 2

    #@0
    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CellIdentityCdma:{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 166
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mNetworkId="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    .line 167
    const-string/jumbo v1, " mSystemId="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    .line 168
    const-string/jumbo v1, " mBasestationId="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 169
    const-string/jumbo v1, " mLongitude="

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    .line 170
    const-string/jumbo v1, " mLatitude="

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    .line 171
    const-string/jumbo v1, "}"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 187
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 188
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 189
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 190
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 184
    return-void
.end method
