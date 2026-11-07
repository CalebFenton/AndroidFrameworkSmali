.class public final Landroid/hardware/radio/RadioAlert$Polygon;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Polygon"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert$Polygon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCoordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Coordinate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 528
    new-instance v0, Landroid/hardware/radio/RadioAlert$Polygon$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$Polygon$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert$Polygon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    .line 525
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    sget-object v1, Landroid/hardware/radio/RadioAlert$Coordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 526
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert$Polygon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Coordinate;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p1, "coordinates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Coordinate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const-string v0, "Coordinates can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_31

    .line 516
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioAlert$Coordinate;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/radio/RadioAlert$Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 520
    iput-object p1, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    .line 521
    return-void

    .line 517
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The last and first coordinates must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coordinates must be at least 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 576
    if-ne p0, p1, :cond_4

    .line 577
    const/4 v0, 0x1

    return v0

    .line 579
    :cond_4
    instance-of v0, p1, Landroid/hardware/radio/RadioAlert$Polygon;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioAlert$Polygon;

    .line 582
    .local v0, "other":Landroid/hardware/radio/RadioAlert$Polygon;
    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    iget-object v2, v0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 580
    .end local v0    # "other":Landroid/hardware/radio/RadioAlert$Polygon;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCoordinates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Coordinate;",
            ">;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 571
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Polygon [coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 560
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$Polygon;->mCoordinates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 561
    return-void
.end method
