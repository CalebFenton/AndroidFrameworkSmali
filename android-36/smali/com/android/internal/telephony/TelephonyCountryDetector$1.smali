.class Lcom/android/internal/telephony/TelephonyCountryDetector$1;
.super Ljava/lang/Object;
.source "TelephonyCountryDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyCountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyCountryDetector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$1;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLocationChanged(Landroid/location/Location;)V
    .registers 5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    if-eqz p1, :cond_21

    .line 123
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyCountryDetector$1;->this$0:Lcom/android/internal/telephony/TelephonyCountryDetector;

    invoke-static {p0, v1, p1}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/TelephonyCountryDetector;ILjava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public whitelist onProviderDisabled(Ljava/lang/String;)V
    .registers 3

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProviderDisabled: provider="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onProviderEnabled(Ljava/lang/String;)V
    .registers 3

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProviderEnabled: provider="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStatusChanged: provider="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extras="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCountryDetector;->-$$Nest$smlogd(Ljava/lang/String;)V

    return-void
.end method
