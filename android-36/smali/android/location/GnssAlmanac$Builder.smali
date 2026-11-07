.class public final Landroid/location/GnssAlmanac$Builder;
.super Ljava/lang/Object;
.source "GnssAlmanac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAlmanac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCompleteAlmanacProvided:Z

.field private blacklist mGnssSatelliteAlmanacs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIoda:I

.field private blacklist mIssueDateMillis:J

.field private blacklist mToaSeconds:I

.field private blacklist mWeekNumber:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCompleteAlmanacProvided(Landroid/location/GnssAlmanac$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GnssAlmanac$Builder;->mCompleteAlmanacProvided:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGnssSatelliteAlmanacs(Landroid/location/GnssAlmanac$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAlmanac$Builder;->mGnssSatelliteAlmanacs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIoda(Landroid/location/GnssAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssAlmanac$Builder;->mIoda:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIssueDateMillis(Landroid/location/GnssAlmanac$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssAlmanac$Builder;->mIssueDateMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToaSeconds(Landroid/location/GnssAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssAlmanac$Builder;->mToaSeconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeekNumber(Landroid/location/GnssAlmanac$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssAlmanac$Builder;->mWeekNumber:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GnssAlmanac;
    .registers 3

    .line 265
    new-instance v0, Landroid/location/GnssAlmanac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssAlmanac;-><init>(Landroid/location/GnssAlmanac$Builder;Landroid/location/GnssAlmanac-IA;)V

    return-object v0
.end method

.method public blacklist setCompleteAlmanacProvided(Z)Landroid/location/GnssAlmanac$Builder;
    .registers 2
    .param p1, "isCompleteAlmanacProvided"    # Z

    .line 250
    iput-boolean p1, p0, Landroid/location/GnssAlmanac$Builder;->mCompleteAlmanacProvided:Z

    .line 251
    return-object p0
.end method

.method public blacklist setGnssSatelliteAlmanacs(Ljava/util/List;)Landroid/location/GnssAlmanac$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;",
            ">;)",
            "Landroid/location/GnssAlmanac$Builder;"
        }
    .end annotation

    .line 258
    .local p1, "gnssSatelliteAlmanacs":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAlmanac$GnssSatelliteAlmanac;>;"
    iput-object p1, p0, Landroid/location/GnssAlmanac$Builder;->mGnssSatelliteAlmanacs:Ljava/util/List;

    .line 259
    return-object p0
.end method

.method public blacklist setIoda(I)Landroid/location/GnssAlmanac$Builder;
    .registers 2
    .param p1, "ioda"    # I

    .line 218
    iput p1, p0, Landroid/location/GnssAlmanac$Builder;->mIoda:I

    .line 219
    return-object p0
.end method

.method public blacklist setIssueDateMillis(J)Landroid/location/GnssAlmanac$Builder;
    .registers 3
    .param p1, "issueDateMillis"    # J

    .line 211
    iput-wide p1, p0, Landroid/location/GnssAlmanac$Builder;->mIssueDateMillis:J

    .line 212
    return-object p0
.end method

.method public blacklist setToaSeconds(I)Landroid/location/GnssAlmanac$Builder;
    .registers 2
    .param p1, "toaSeconds"    # I

    .line 240
    iput p1, p0, Landroid/location/GnssAlmanac$Builder;->mToaSeconds:I

    .line 241
    return-object p0
.end method

.method public blacklist setWeekNumber(I)Landroid/location/GnssAlmanac$Builder;
    .registers 2
    .param p1, "weekNumber"    # I

    .line 233
    iput p1, p0, Landroid/location/GnssAlmanac$Builder;->mWeekNumber:I

    .line 234
    return-object p0
.end method
