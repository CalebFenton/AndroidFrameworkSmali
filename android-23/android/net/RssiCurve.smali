.class public Landroid/net/RssiCurve;
.super Ljava/lang/Object;
.source "RssiCurve.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/RssiCurve$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/RssiCurve;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ACTIVE_NETWORK_RSSI_BOOST:I = 0x19


# instance fields
.field public final activeNetworkRssiBoost:I

.field public final bucketWidth:I

.field public final rssiBuckets:[B

.field public final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 213
    new-instance v0, Landroid/net/RssiCurve$1;

    #@2
    invoke-direct {v0}, Landroid/net/RssiCurve$1;-><init>()V

    #@5
    .line 212
    sput-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 54
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B

    #@0
    .prologue
    .line 83
    const/16 v0, 0x19

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RssiCurve;-><init>(II[BI)V

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(II[BI)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "bucketWidth"    # I
    .param p3, "rssiBuckets"    # [B
    .param p4, "activeNetworkRssiBoost"    # I

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput p1, p0, Landroid/net/RssiCurve;->start:I

    #@5
    .line 96
    iput p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@7
    .line 97
    if-eqz p3, :cond_0

    #@9
    array-length v0, p3

    #@a
    if-nez v0, :cond_1

    #@c
    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "rssiBuckets must be at least one element large."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 100
    :cond_1
    iput-object p3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@17
    .line 101
    iput p4, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@19
    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/net/RssiCurve;->start:I

    #@9
    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@f
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    .line 108
    .local v0, "bucketCount":I
    new-array v1, v0, [B

    #@15
    iput-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@17
    .line 109
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    #@1c
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@22
    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/RssiCurve;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/RssiCurve;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 115
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
    .line 174
    if-ne p0, p1, :cond_0

    #@4
    return v1

    #@5
    .line 175
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/net/RssiCurve;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 177
    check-cast v0, Landroid/net/RssiCurve;

    #@15
    .line 179
    .local v0, "rssiCurve":Landroid/net/RssiCurve;
    iget v3, p0, Landroid/net/RssiCurve;->start:I

    #@17
    iget v4, v0, Landroid/net/RssiCurve;->start:I

    #@19
    if-ne v3, v4, :cond_4

    #@1b
    .line 180
    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@1d
    iget v4, v0, Landroid/net/RssiCurve;->bucketWidth:I

    #@1f
    if-ne v3, v4, :cond_4

    #@21
    .line 181
    iget-object v3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@23
    iget-object v4, v0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@25
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    #@28
    move-result v3

    #@29
    .line 179
    if-eqz v3, :cond_4

    #@2b
    .line 182
    iget v3, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@2d
    iget v4, v0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@2f
    if-ne v3, v4, :cond_3

    #@31
    .line 179
    :goto_0
    return v1

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 182
    goto :goto_0

    #@34
    :cond_4
    move v1, v2

    #@35
    .line 179
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 187
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/net/RssiCurve;->start:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    iget v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v1

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@26
    move-result v0

    #@27
    return v0
.end method

.method public lookupScore(I)B
    .locals 1
    .param p1, "rssi"    # I

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public lookupScore(IZ)B
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "isActiveNetwork"    # Z

    #@0
    .prologue
    .line 149
    if-eqz p2, :cond_0

    #@2
    .line 150
    iget v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@4
    add-int/2addr p1, v1

    #@5
    .line 153
    :cond_0
    iget v1, p0, Landroid/net/RssiCurve;->start:I

    #@7
    sub-int v1, p1, v1

    #@9
    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@b
    div-int v0, v1, v2

    #@d
    .line 156
    .local v0, "index":I
    if-gez v0, :cond_2

    #@f
    .line 157
    const/4 v0, 0x0

    #@10
    .line 162
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@12
    aget-byte v1, v1, v0

    #@14
    return v1

    #@15
    .line 158
    :cond_2
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@17
    array-length v1, v1

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    if-le v0, v1, :cond_1

    #@1c
    .line 159
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@1e
    array-length v1, v1

    #@1f
    add-int/lit8 v0, v1, -0x1

    #@21
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 193
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "RssiCurve[start="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    .line 194
    iget v3, p0, Landroid/net/RssiCurve;->start:I

    #@e
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    .line 195
    const-string/jumbo v3, ",bucketWidth="

    #@15
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 196
    iget v3, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@1b
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 197
    const-string/jumbo v3, ",activeNetworkRssiBoost="

    #@22
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 198
    iget v3, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@28
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    .line 200
    const-string/jumbo v2, ",buckets="

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 201
    const/4 v0, 0x0

    #@32
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@34
    array-length v2, v2

    #@35
    if-ge v0, v2, :cond_1

    #@37
    .line 202
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@39
    aget-byte v2, v2, v0

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    .line 203
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@40
    array-length v2, v2

    #@41
    add-int/lit8 v2, v2, -0x1

    #@43
    if-ge v0, v2, :cond_0

    #@45
    .line 204
    const-string/jumbo v2, ","

    #@48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 207
    :cond_1
    const-string/jumbo v2, "]"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 120
    iget v0, p0, Landroid/net/RssiCurve;->start:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 121
    iget v0, p0, Landroid/net/RssiCurve;->bucketWidth:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 122
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@c
    array-length v0, v0

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 123
    iget-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@15
    .line 124
    iget v0, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 119
    return-void
.end method
