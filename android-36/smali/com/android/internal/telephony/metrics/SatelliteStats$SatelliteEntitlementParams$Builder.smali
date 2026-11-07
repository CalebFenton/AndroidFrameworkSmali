.class public Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mCount:I

.field private blacklist mEntitlementDataPolicy:I

.field private blacklist mEntitlementServiceType:[I

.field private blacklist mEntitlementStatus:I

.field private blacklist mIsAllowedServiceEntitlement:Z

.field private blacklist mIsRetry:Z

.field private blacklist mResult:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCount(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntitlementDataPolicy(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementDataPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntitlementServiceType(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementServiceType:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntitlementStatus(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAllowedServiceEntitlement(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mIsAllowedServiceEntitlement:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRetry(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mIsRetry:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResult(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mResult:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 2613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2614
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mCarrierId:I

    .line 2615
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mResult:I

    .line 2616
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementStatus:I

    const/4 v1, 0x0

    .line 2617
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mIsRetry:Z

    .line 2618
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mCount:I

    .line 2619
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mIsAllowedServiceEntitlement:Z

    .line 2620
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementServiceType:[I

    .line 2621
    iput v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementDataPolicy:I

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;
    .registers 4

    .line 2702
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2629
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCount(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2665
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mCount:I

    return-object p0
.end method

.method public blacklist setEntitlementDataPolicy(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2693
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementDataPolicy:I

    return-object p0
.end method

.method public blacklist setEntitlementServiceType([I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2683
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementServiceType:[I

    .line 2684
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public blacklist setEntitlementStatus(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2647
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mEntitlementStatus:I

    return-object p0
.end method

.method public blacklist setIsAllowedServiceEntitlement(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2674
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mIsAllowedServiceEntitlement:Z

    return-object p0
.end method

.method public blacklist setIsRetry(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2656
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mIsRetry:Z

    return-object p0
.end method

.method public blacklist setResult(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;
    .registers 2

    .line 2638
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams$Builder;->mResult:I

    return-object p0
.end method
