.class public final Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;
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
    name = "GpsSatelliteHealth"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFitInt:D

.field private final blacklist mSvAccur:D

.field private final blacklist mSvHealth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 279
    new-instance v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$1;

    invoke-direct {v0}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$1;-><init>()V

    sput-object v0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)V
    .registers 12
    .param p1, "builder"    # Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->-$$Nest$fgetmSvHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 272
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->-$$Nest$fgetmSvAccur(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)D

    move-result-wide v3

    const-wide/high16 v7, 0x40c0000000000000L    # 8192.0

    const-string v9, "SvAccur"

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 273
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->-$$Nest$fgetmFitInt(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 274
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->-$$Nest$fgetmSvHealth(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvHealth:I

    .line 275
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->-$$Nest$fgetmSvAccur(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvAccur:D

    .line 276
    invoke-static {p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;->-$$Nest$fgetmFitInt(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mFitInt:D

    .line 277
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;Landroid/location/GpsSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;-><init>(Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFitInt()D
    .registers 3

    .line 266
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mFitInt:D

    return-wide v0
.end method

.method public blacklist getSvAccur()D
    .registers 3

    .line 260
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvAccur:D

    return-wide v0
.end method

.method public blacklist getSvHealth()I
    .registers 2

    .line 254
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvHealth:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsSatelliteHealth["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "svHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", svAccur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvAccur:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ", fitInt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mFitInt:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 305
    iget v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mSvAccur:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 307
    iget-wide v0, p0, Landroid/location/GpsSatelliteEphemeris$GpsSatelliteHealth;->mFitInt:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 308
    return-void
.end method
