.class public final Landroid/location/AuxiliaryInformation$Builder;
.super Ljava/lang/Object;
.source "AuxiliaryInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/AuxiliaryInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAvailableSignalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrequencyChannelNumber:I

.field private blacklist mSatType:I

.field private blacklist mSvid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailableSignalTypes(Landroid/location/AuxiliaryInformation$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/AuxiliaryInformation$Builder;->mAvailableSignalTypes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyChannelNumber(Landroid/location/AuxiliaryInformation$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/AuxiliaryInformation$Builder;->mFrequencyChannelNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatType(Landroid/location/AuxiliaryInformation$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/AuxiliaryInformation$Builder;->mSatType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvid(Landroid/location/AuxiliaryInformation$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/AuxiliaryInformation$Builder;->mSvid:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/AuxiliaryInformation;
    .registers 3

    .line 271
    new-instance v0, Landroid/location/AuxiliaryInformation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/AuxiliaryInformation;-><init>(Landroid/location/AuxiliaryInformation$Builder;Landroid/location/AuxiliaryInformation-IA;)V

    return-object v0
.end method

.method public blacklist setAvailableSignalTypes(Ljava/util/List;)Landroid/location/AuxiliaryInformation$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;)",
            "Landroid/location/AuxiliaryInformation$Builder;"
        }
    .end annotation

    .line 249
    .local p1, "availableSignalTypes":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssSignalType;>;"
    iput-object p1, p0, Landroid/location/AuxiliaryInformation$Builder;->mAvailableSignalTypes:Ljava/util/List;

    .line 250
    return-object p0
.end method

.method public blacklist setFrequencyChannelNumber(I)Landroid/location/AuxiliaryInformation$Builder;
    .registers 2
    .param p1, "frequencyChannelNumber"    # I

    .line 257
    iput p1, p0, Landroid/location/AuxiliaryInformation$Builder;->mFrequencyChannelNumber:I

    .line 258
    return-object p0
.end method

.method public blacklist setSatType(I)Landroid/location/AuxiliaryInformation$Builder;
    .registers 2
    .param p1, "satType"    # I

    .line 264
    iput p1, p0, Landroid/location/AuxiliaryInformation$Builder;->mSatType:I

    .line 265
    return-object p0
.end method

.method public blacklist setSvid(I)Landroid/location/AuxiliaryInformation$Builder;
    .registers 2
    .param p1, "svid"    # I

    .line 238
    iput p1, p0, Landroid/location/AuxiliaryInformation$Builder;->mSvid:I

    .line 239
    return-object p0
.end method
