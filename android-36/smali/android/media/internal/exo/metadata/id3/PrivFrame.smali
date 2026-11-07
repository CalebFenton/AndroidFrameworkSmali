.class public final Landroid/media/internal/exo/metadata/id3/PrivFrame;
.super Landroid/media/internal/exo/metadata/id3/Id3Frame;
.source "PrivFrame.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/id3/PrivFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist owner:Ljava/lang/String;

.field public final blacklist privateData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Landroid/media/internal/exo/metadata/id3/PrivFrame$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/PrivFrame$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 41
    const-string v0, "PRIV"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->privateData:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 4

    .line 35
    const-string v0, "PRIV"

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->privateData:[B

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

    .line 51
    const-class v2, Landroid/media/internal/exo/metadata/id3/PrivFrame;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    .line 54
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/id3/PrivFrame;

    .line 55
    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->privateData:[B

    iget-object p1, p1, Landroid/media/internal/exo/metadata/id3/PrivFrame;->privateData:[B

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

    .line 61
    iget-object v0, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 62
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->privateData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 74
    iget-object p2, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/PrivFrame;->privateData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
