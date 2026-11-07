.class public final Landroid/location/GpsSatelliteEphemeris$GpsL2Params;
.super Ljava/lang/Object;
.source "GpsSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GpsL2Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsSatelliteEphemeris$GpsL2Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mL2Code:I

.field private final blacklist mL2Flag:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 383
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$1;

    invoke-direct {v0}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$1;-><init>()V

    sput-object v0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)V
    .registers 6
    .param p1, "builder"    # Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->-$$Nest$fgetmL2Code(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "L2 code"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 378
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->-$$Nest$fgetmL2Flag(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "L2 flag"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 379
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->-$$Nest$fgetmL2Code(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Code:I

    .line 380
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;->-$$Nest$fgetmL2Flag(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Flag:I

    .line 381
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;-><init>(Landroid/location/GpsSatelliteEphemeris$GpsL2Params$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getL2Code()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Code:I

    return v0
.end method

.method public blacklist getL2Flag()I
    .registers 2

    .line 373
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Flag:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsL2Params["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "l2Code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    const-string v1, ", l2Flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 406
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsL2Params;->mL2Flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    return-void
.end method
