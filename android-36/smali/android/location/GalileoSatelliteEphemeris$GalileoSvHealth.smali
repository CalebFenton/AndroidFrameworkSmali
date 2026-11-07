.class public final Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;
.super Ljava/lang/Object;
.source "GalileoSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GalileoSvHealth"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;,
        Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$GalileoHealthStatus;,
        Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$GalileoDataValidityStatus;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DATA_STATUS_DATA_VALID:I = 0x0

.field public static final blacklist DATA_STATUS_WORKING_WITHOUT_GUARANTEE:I = 0x1

.field public static final blacklist HEALTH_STATUS_EXTENDED_OPERATION_MODE:I = 0x2

.field public static final blacklist HEALTH_STATUS_IN_TEST:I = 0x3

.field public static final blacklist HEALTH_STATUS_OK:I = 0x0

.field public static final blacklist HEALTH_STATUS_OUT_OF_SERVICE:I = 0x1


# instance fields
.field private blacklist mDataValidityStatusE1b:I

.field private blacklist mDataValidityStatusE5a:I

.field private blacklist mDataValidityStatusE5b:I

.field private blacklist mSignalHealthStatusE1b:I

.field private blacklist mSignalHealthStatusE5a:I

.field private blacklist mSignalHealthStatusE5b:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 365
    new-instance v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$1;

    invoke-direct {v0}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$1;-><init>()V

    sput-object v0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)V
    .registers 7
    .param p1, "builder"    # Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmDataValidityStatusE1b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    const-string v1, "DataValidityStatusE1b"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 296
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmSignalHealthStatusE1b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    const-string v1, "SignalHealthStatusE1b"

    const/4 v4, 0x3

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 301
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmDataValidityStatusE5a(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    const-string v1, "DataValidityStatusE5a"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 306
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmSignalHealthStatusE5a(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    const-string v1, "SignalHealthStatusE5a"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 311
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmDataValidityStatusE5b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    const-string v1, "DataValidityStatusE5b"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 316
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmSignalHealthStatusE5b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    const-string v1, "SignalHealthStatusE5b"

    invoke-static {v0, v2, v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 321
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmDataValidityStatusE1b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE1b:I

    .line 322
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmSignalHealthStatusE1b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE1b:I

    .line 323
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmDataValidityStatusE5a(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5a:I

    .line 324
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmSignalHealthStatusE5a(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5a:I

    .line 325
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmDataValidityStatusE5b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5b:I

    .line 326
    invoke-static {p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;->-$$Nest$fgetmSignalHealthStatusE5b(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5b:I

    .line 327
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;Landroid/location/GalileoSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;-><init>(Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataValidityStatusE1b()I
    .registers 2

    .line 332
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE1b:I

    return v0
.end method

.method public blacklist getDataValidityStatusE5a()I
    .registers 2

    .line 344
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5a:I

    return v0
.end method

.method public blacklist getDataValidityStatusE5b()I
    .registers 2

    .line 356
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5b:I

    return v0
.end method

.method public blacklist getSignalHealthStatusE1b()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE1b:I

    return v0
.end method

.method public blacklist getSignalHealthStatusE5a()I
    .registers 2

    .line 350
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5a:I

    return v0
.end method

.method public blacklist getSignalHealthStatusE5b()I
    .registers 2

    .line 362
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5b:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GalileoSvHealth["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "dataValidityStatusE1b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE1b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, ", signalHealthStatusE1b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE1b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, ", dataValidityStatusE5a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    const-string v1, ", signalHealthStatusE5a = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, ", dataValidityStatusE5b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    const-string v1, ", signalHealthStatusE5b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 393
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE1b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE1b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mDataValidityStatusE5b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Landroid/location/GalileoSatelliteEphemeris$GalileoSvHealth;->mSignalHealthStatusE5b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    return-void
.end method
