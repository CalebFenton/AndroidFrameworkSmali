.class public final Landroid/location/RealTimeIntegrityModel$Builder;
.super Ljava/lang/Object;
.source "RealTimeIntegrityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/RealTimeIntegrityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdvisoryNumber:Ljava/lang/String;

.field private blacklist mAdvisoryType:Ljava/lang/String;

.field private blacklist mBadSignalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBadSvid:I

.field private blacklist mEndDateSeconds:J

.field private blacklist mPublishDateSeconds:J

.field private blacklist mStartDateSeconds:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdvisoryNumber(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mAdvisoryNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAdvisoryType(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mAdvisoryType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBadSignalTypes(Landroid/location/RealTimeIntegrityModel$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mBadSignalTypes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBadSvid(Landroid/location/RealTimeIntegrityModel$Builder;)I
    .registers 1

    iget p0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mBadSvid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEndDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mEndDateSeconds:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPublishDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mPublishDateSeconds:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartDateSeconds(Landroid/location/RealTimeIntegrityModel$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mStartDateSeconds:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/RealTimeIntegrityModel;
    .registers 3

    .line 302
    new-instance v0, Landroid/location/RealTimeIntegrityModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/RealTimeIntegrityModel;-><init>(Landroid/location/RealTimeIntegrityModel$Builder;Landroid/location/RealTimeIntegrityModel-IA;)V

    return-object v0
.end method

.method public blacklist setAdvisoryNumber(Ljava/lang/String;)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 2
    .param p1, "advisoryNumber"    # Ljava/lang/String;

    .line 295
    iput-object p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mAdvisoryNumber:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public blacklist setAdvisoryType(Ljava/lang/String;)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 2
    .param p1, "advisoryType"    # Ljava/lang/String;

    .line 288
    iput-object p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mAdvisoryType:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public blacklist setBadSignalTypes(Ljava/util/List;)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;)",
            "Landroid/location/RealTimeIntegrityModel$Builder;"
        }
    .end annotation

    .line 260
    .local p1, "badSignalTypes":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssSignalType;>;"
    iput-object p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mBadSignalTypes:Ljava/util/List;

    .line 261
    return-object p0
.end method

.method public blacklist setBadSvid(I)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 2
    .param p1, "badSvid"    # I

    .line 249
    iput p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mBadSvid:I

    .line 250
    return-object p0
.end method

.method public blacklist setEndDateSeconds(J)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 3
    .param p1, "endDateSeconds"    # J

    .line 281
    iput-wide p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mEndDateSeconds:J

    .line 282
    return-object p0
.end method

.method public blacklist setPublishDateSeconds(J)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 3
    .param p1, "publishDateSeconds"    # J

    .line 267
    iput-wide p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mPublishDateSeconds:J

    .line 268
    return-object p0
.end method

.method public blacklist setStartDateSeconds(J)Landroid/location/RealTimeIntegrityModel$Builder;
    .registers 3
    .param p1, "startDateSeconds"    # J

    .line 274
    iput-wide p1, p0, Landroid/location/RealTimeIntegrityModel$Builder;->mStartDateSeconds:J

    .line 275
    return-object p0
.end method
