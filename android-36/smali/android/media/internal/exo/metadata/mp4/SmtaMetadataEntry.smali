.class public final Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;
.super Ljava/lang/Object;
.source "SmtaMetadataEntry.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist captureFrameRate:F

.field public final blacklist svcTemporalLayerCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FI)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 44
    iput p2, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry$1;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

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

    if-eqz p1, :cond_21

    .line 57
    const-class v2, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_21

    .line 60
    :cond_10
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;

    .line 61
    iget v2, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    iget v3, p1, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    iget p1, p1, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    if-ne p0, p1, :cond_21

    return v0

    :cond_21
    :goto_21
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 68
    iget v0, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    invoke-static {v0}, Landroid/media/internal/guava_common/primitives/Floats;->hashCode(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 69
    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smta: captureFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", svcTemporalLayerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 85
    iget p2, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    iget p0, p0, Landroid/media/internal/exo/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
