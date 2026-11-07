.class public final Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;
.super Ljava/lang/Object;
.source "GlonassSatelliteEphemeris.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassSatelliteEphemeris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlonassSatelliteOrbitModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mX:D

.field private final blacklist mXAccel:D

.field private final blacklist mXDot:D

.field private final blacklist mY:D

.field private final blacklist mYAccel:D

.field private final blacklist mYDot:D

.field private final blacklist mZ:D

.field private final blacklist mZAccel:D

.field private final blacklist mZDot:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 642
    new-instance v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$1;

    invoke-direct {v0}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$1;-><init>()V

    sput-object v0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmX(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x40da5e0000000000L    # 27000.0

    const-string v6, "X"

    const-wide v2, -0x3f25a20000000000L    # -27000.0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 551
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmXDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x4011333340000000L    # 4.300000190734863

    const-string v13, "XDot"

    const-wide v9, -0x3feeccccc0000000L    # -4.300000190734863

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 552
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmXAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3e3aa0f8e0000000L    # 6.20000006890109E-9

    const-string v6, "XAccel"

    const-wide v2, -0x41c55f0720000000L    # -6.20000006890109E-9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 553
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmY(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x40da5e0000000000L    # 27000.0

    const-string v13, "Y"

    const-wide v9, -0x3f25a20000000000L    # -27000.0

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 554
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmYDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x4011333340000000L    # 4.300000190734863

    const-string v6, "YDot"

    const-wide v2, -0x3feeccccc0000000L    # -4.300000190734863

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 555
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmYAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3e3aa0f8e0000000L    # 6.20000006890109E-9

    const-string v13, "YAccel"

    const-wide v9, -0x41c55f0720000000L    # -6.20000006890109E-9

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 556
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmZ(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x40da5e0000000000L    # 27000.0

    const-string v6, "Z"

    const-wide v2, -0x3f25a20000000000L    # -27000.0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 557
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmZDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x4011333340000000L    # 4.300000190734863

    const-string v13, "ZDot"

    const-wide v9, -0x3feeccccc0000000L    # -4.300000190734863

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 558
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmZAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3e3aa0f8e0000000L    # 6.20000006890109E-9

    const-string v6, "ZAccel"

    const-wide v2, -0x41c55f0720000000L    # -6.20000006890109E-9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 559
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmX(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mX:D

    .line 560
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmXDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXDot:D

    .line 561
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmXAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXAccel:D

    .line 562
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmY(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mY:D

    .line 563
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmYDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYDot:D

    .line 564
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmYAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYAccel:D

    .line 565
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmZ(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZ:D

    .line 566
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmZDot(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZDot:D

    .line 567
    invoke-static {p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;->-$$Nest$fgetmZAccel(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZAccel:D

    .line 568
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;Landroid/location/GlonassSatelliteEphemeris-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;-><init>(Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getX()D
    .registers 3

    .line 573
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mX:D

    return-wide v0
.end method

.method public blacklist getXAccel()D
    .registers 3

    .line 585
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXAccel:D

    return-wide v0
.end method

.method public blacklist getXDot()D
    .registers 3

    .line 579
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXDot:D

    return-wide v0
.end method

.method public blacklist getY()D
    .registers 3

    .line 591
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mY:D

    return-wide v0
.end method

.method public blacklist getYAccel()D
    .registers 3

    .line 603
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYAccel:D

    return-wide v0
.end method

.method public blacklist getYDot()D
    .registers 3

    .line 597
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYDot:D

    return-wide v0
.end method

.method public blacklist getZ()D
    .registers 3

    .line 609
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZ:D

    return-wide v0
.end method

.method public blacklist getZAccel()D
    .registers 3

    .line 621
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZAccel:D

    return-wide v0
.end method

.method public blacklist getZDot()D
    .registers 3

    .line 615
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZDot:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlonassSatelliteOrbitModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 670
    const-string v1, ", xDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 671
    const-string v1, ", xAccel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXAccel:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 672
    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, ", yDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 674
    const-string v1, ", yAccel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYAccel:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 675
    const-string v1, ", z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZ:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, ", zDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 677
    const-string v1, ", zAccel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZAccel:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 678
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 631
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mX:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 632
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 633
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mXAccel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 634
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mY:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 635
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 636
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mYAccel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 637
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZ:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 638
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 639
    iget-wide v0, p0, Landroid/location/GlonassSatelliteEphemeris$GlonassSatelliteOrbitModel;->mZAccel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 640
    return-void
.end method
