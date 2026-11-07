.class Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;
.super Ljava/lang/Object;
.source "TelephonyCountryDetector.java"

# interfaces
.implements Landroid/location/Geocoder$GeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyCountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyGeocodeListener"
.end annotation


# instance fields
.field private blacklist mLocationUpdatedTime:J

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyCountryDetector;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide p2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;->mLocationUpdatedTime:J

    return-void
.end method


# virtual methods
.method public whitelist onError(Ljava/lang/String;)V
    .registers 3

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GeocodeListener.onError="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onGeocode(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2a

    .line 152
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 153
    const-string v0, "onGeocode: addresses is available"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$TelephonyGeocodeListener;->mLocationUpdatedTime:J

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x2

    .line 155
    invoke-static {v0, p0, v1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/TelephonyCountryDetector;ILjava/lang/Object;)V

    return-void

    .line 158
    :cond_2a
    const-string p0, "onGeocode: addresses is not available"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void
.end method
