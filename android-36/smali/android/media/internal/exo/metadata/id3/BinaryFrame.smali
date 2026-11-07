.class public final Landroid/media/internal/exo/metadata/id3/BinaryFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "BinaryFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/BinaryFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist data:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/media/internal/exo/metadata/id3/BinaryFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/BinaryFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->data:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->data:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 45
    const-class v2, Landroid/media/internal/exo/metadata/id3/BinaryFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    .line 48
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/BinaryFrame;

    .line 49
    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->data:[B

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->data:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 55
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 56
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->data:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 62
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;->data:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
