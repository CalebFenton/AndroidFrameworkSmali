.class public Lcom/android/internal/telephony/satellite/SatelliteNetworkInfo;
.super Ljava/lang/Object;
.source "SatelliteNetworkInfo.java"


# instance fields
.field public blacklist mAllowedServicesInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mDataPlanType:Ljava/lang/String;

.field public blacklist mPlmn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteNetworkInfo;->mPlmn:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteNetworkInfo;->mDataPlanType:Ljava/lang/String;

    if-eqz p3, :cond_f

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteNetworkInfo;->mAllowedServicesInfo:Ljava/util/Map;

    return-void
.end method
