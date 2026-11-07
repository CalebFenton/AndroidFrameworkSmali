.class public final Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;
.super Ljava/lang/Object;
.source "BeidouSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BeidouSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BeidouSatelliteHealth"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSatH1:I

.field private final blacklist mSvAccur:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 459
    new-instance v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$1;

    invoke-direct {v0}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$1;-><init>()V

    sput-object v0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)V
    .registers 10
    .param p1, "builder"    # Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->-$$Nest$fgetmSatH1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)I

    move-result v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 442
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->-$$Nest$fgetmSvAccur(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)D

    move-result-wide v1

    const-wide/high16 v5, 0x40c0000000000000L    # 8192.0

    const-string v7, "SvAccur"

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 443
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->-$$Nest$fgetmSatH1(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)I

    move-result v0

    iput v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSatH1:I

    .line 444
    invoke-static {p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;->-$$Nest$fgetmSvAccur(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSvAccur:D

    .line 445
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;Landroid/location/BeidouSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;-><init>(Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSatH1()I
    .registers 2

    .line 450
    iget v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSatH1:I

    return v0
.end method

.method public blacklist getSvAccur()D
    .registers 3

    .line 456
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSvAccur:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeidouSatelliteHealth["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "satH1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSatH1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, ", svAccur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSvAccur:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 482
    iget v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSatH1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-wide v0, p0, Landroid/location/BeidouSatelliteEphemeris$BeidouSatelliteHealth;->mSvAccur:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 484
    return-void
.end method
