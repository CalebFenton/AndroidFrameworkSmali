.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccessControlType:I

.field private blacklist mCarrierId:I

.field private blacklist mConfigDataSource:I

.field private blacklist mCountryCodes:[Ljava/lang/String;

.field private blacklist mIsAllowed:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsNtnOnlyCarrier:Z

.field private blacklist mLocationQueryTimeMillis:J

.field private blacklist mOnDeviceLookupTimeMillis:J

.field private blacklist mResultCode:I

.field private blacklist mTotalCheckingTimeMillis:J

.field private blacklist mTriggeringEvent:I


# direct methods
.method public static synthetic blacklist $r8$lambda$Ax19GOk1HIviIUmcXecr-7C1gx0(I)[Ljava/lang/String;
    .registers 1

    .line 2967
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccessControlType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mAccessControlType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mConfigDataSource:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountryCodes(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCountryCodes:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAllowed(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEmergency(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsEmergency:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnOnlyCarrier(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsNtnOnlyCarrier:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationQueryTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mLocationQueryTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDeviceLookupTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mOnDeviceLookupTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mResultCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalCheckingTimeMillis(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTotalCheckingTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggeringEvent(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTriggeringEvent:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2913
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCarrierId:I

    const/4 v0, 0x0

    .line 2914
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTriggeringEvent:I

    .line 2916
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsNtnOnlyCarrier:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
    .registers 4

    .line 3005
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setAccessControlType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2924
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mAccessControlType:I

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2980
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setConfigDatasource(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2974
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mConfigDataSource:I

    return-object p0
.end method

.method public blacklist setCountryCodes([Ljava/lang/String;)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 3

    .line 2967
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mCountryCodes:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIsAllowed(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2948
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsAllowed:Z

    return-object p0
.end method

.method public blacklist setIsEmergency(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2954
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsEmergency:Z

    return-object p0
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2996
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mIsNtnOnlyCarrier:Z

    return-object p0
.end method

.method public blacklist setLocationQueryTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 3

    .line 2930
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mLocationQueryTimeMillis:J

    return-object p0
.end method

.method public blacklist setOnDeviceLookupTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 3

    .line 2936
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mOnDeviceLookupTimeMillis:J

    return-object p0
.end method

.method public blacklist setResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2961
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mResultCode:I

    return-object p0
.end method

.method public blacklist setTotalCheckingTime(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 3

    .line 2942
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTotalCheckingTimeMillis:J

    return-object p0
.end method

.method public blacklist setTriggeringEvent(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;
    .registers 2

    .line 2987
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams$Builder;->mTriggeringEvent:I

    return-object p0
.end method
