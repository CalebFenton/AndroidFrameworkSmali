.class public final Landroid/hardware/radio/RadioAlert$AlertArea;
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
    name = "AlertArea"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGeocodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Geocode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPolygons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Polygon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 611
    new-instance v0, Landroid/hardware/radio/RadioAlert$AlertArea$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$AlertArea$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert$AlertArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    .line 607
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    sget-object v1, Landroid/hardware/radio/RadioAlert$Polygon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 608
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    sget-object v1, Landroid/hardware/radio/RadioAlert$Geocode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 609
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert$AlertArea;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Polygon;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Geocode;",
            ">;)V"
        }
    .end annotation

    .line 599
    .local p1, "polygons":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Polygon;>;"
    .local p2, "geocodes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/radio/RadioAlert$Geocode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const-string v0, "Polygons can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    .line 601
    const-string v0, "Geocodes can not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    .line 602
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 669
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 670
    return v0

    .line 672
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert$AlertArea;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioAlert$AlertArea;

    .line 676
    .local v1, "other":Landroid/hardware/radio/RadioAlert$AlertArea;
    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    iget-object v4, v1, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 673
    .end local v1    # "other":Landroid/hardware/radio/RadioAlert$AlertArea;
    :cond_23
    return v2
.end method

.method public whitelist getGeocodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Geocode;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPolygons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$Polygon;",
            ">;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 664
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlertArea [polygons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geocodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

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

    .line 652
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mPolygons:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 653
    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertArea;->mGeocodes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 654
    return-void
.end method
