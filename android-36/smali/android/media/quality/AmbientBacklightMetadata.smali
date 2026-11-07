.class public final Landroid/media/quality/AmbientBacklightMetadata;
.super Ljava/lang/Object;
.source "AmbientBacklightMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/AmbientBacklightMetadata$CompressionAlgorithm;
    }
.end annotation


# static fields
.field public static final whitelist ALGORITHM_NONE:I = 0x0

.field public static final whitelist ALGORITHM_RLE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/quality/AmbientBacklightMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mColorFormat:I

.field private final blacklist mCompressAlgorithm:I

.field private final blacklist mHorizontalZonesNumber:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mSource:I

.field private final blacklist mVerticalZonesNumber:I

.field private final blacklist mZonesColors:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/media/quality/AmbientBacklightMetadata$1;

    invoke-direct {v0}, Landroid/media/quality/AmbientBacklightMetadata$1;-><init>()V

    sput-object v0, Landroid/media/quality/AmbientBacklightMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    .line 95
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/quality/AmbientBacklightMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/quality/AmbientBacklightMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIIII[I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compressAlgorithm"    # I
    .param p3, "source"    # I
    .param p4, "colorFormat"    # I
    .param p5, "horizontalZonesNumber"    # I
    .param p6, "verticalZonesNumber"    # I
    .param p7, "zonesColors"    # [I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    .line 79
    iput p2, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    .line 80
    iput p3, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    .line 81
    iput p4, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    .line 82
    iput p5, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    .line 83
    iput p6, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    .line 84
    iput-object p7, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getColorFormat()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    return v0
.end method

.method public whitelist getCompressionAlgorithm()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    return v0
.end method

.method public whitelist getHorizontalZonesCount()I
    .registers 2

    .line 137
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSource()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    return v0
.end method

.method public whitelist getVerticalZonesCount()I
    .registers 2

    .line 148
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    return v0
.end method

.method public whitelist getZoneColors()[I
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientBacklightMetadata{packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verticalZonesNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zonesColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    .line 200
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 169
    iget-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mCompressAlgorithm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mColorFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mHorizontalZonesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mVerticalZonesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Landroid/media/quality/AmbientBacklightMetadata;->mZonesColors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 176
    return-void
.end method
