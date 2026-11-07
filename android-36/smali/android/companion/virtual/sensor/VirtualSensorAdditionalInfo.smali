.class public final Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
.super Ljava/lang/Object;
.source "VirtualSensorAdditionalInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Builder;,
        Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$Type;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 211
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[F>;)V"
        }
    .end annotation

    .line 60
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<[F>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    .line 62
    iput-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/List;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "valuesLength":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v0, :cond_23

    .line 70
    iget-object v2, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 72
    .end local v1    # "i":I
    :cond_23
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    return v0
.end method

.method public blacklist getValues()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 76
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 79
    iget-object v1, p0, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->mValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 81
    .end local v0    # "i":I
    :cond_25
    return-void
.end method
