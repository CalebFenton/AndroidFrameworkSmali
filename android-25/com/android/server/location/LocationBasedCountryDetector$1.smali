.class Lcom/android/server/location/LocationBasedCountryDetector$1;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/LocationBasedCountryDetector;

    #@0
    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    #@0
    .prologue
    .line 179
    if-eqz p1, :cond_0

    #@2
    .line 180
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@4
    invoke-virtual {v0}, Lcom/android/server/location/LocationBasedCountryDetector;->stop()V

    #@7
    .line 181
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@9
    invoke-static {v0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->-wrap0(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    #@c
    .line 178
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 185
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 191
    return-void
.end method
