.class public final Landroid/media/internal/exo/drm/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist data:[B

.field private blacklist hashCode:I

.field public final blacklist licenseServerUrl:Ljava/lang/String;

.field public final blacklist mimeType:Ljava/lang/String;

.field public final blacklist uuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 377
    new-instance v0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Landroid/media/internal/exo/drm/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/exo/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-static {p1}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 287
    iput-object p2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 288
    invoke-static {p3}, Landroid/media/internal/exo/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 289
    iput-object p4, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .registers 5

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

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

    .line 336
    instance-of v0, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 342
    :cond_a
    check-cast p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;

    .line 343
    iget-object v2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 344
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 345
    invoke-static {v2, v3}, Landroid/media/internal/exo/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object p0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    iget-object p1, p1, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    .line 346
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_35

    return v0

    :cond_35
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 351
    iget v0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->hashCode:I

    if-nez v0, :cond_2b

    .line 352
    iget-object v0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-object v1, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 354
    iget-object v1, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    iget-object v1, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    iput v0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->hashCode:I

    .line 358
    :cond_2b
    iget p0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->hashCode:I

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 370
    iget-object p2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 371
    iget-object p2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    iget-object p2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object p2, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object p0, p0, Landroid/media/internal/exo/drm/DrmInitData$SchemeData;->data:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
