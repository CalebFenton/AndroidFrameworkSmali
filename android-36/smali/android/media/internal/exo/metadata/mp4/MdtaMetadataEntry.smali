.class public final Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist key:Ljava/lang/String;

.field public final blacklist localeIndicator:I

.field public final blacklist typeIndicator:I

.field public final blacklist value:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BII)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 47
    iput p3, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 48
    iput p4, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    .line 63
    const-class v2, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_33

    .line 66
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;

    .line 67
    iget-object v2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 68
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_33

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    if-ne p0, p1, :cond_33

    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 76
    iget-object v0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 77
    iget-object v0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 78
    iget v0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 79
    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdta: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget-object p2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    iget p2, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
