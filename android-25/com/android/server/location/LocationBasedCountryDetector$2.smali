.class Lcom/android/server/location/LocationBasedCountryDetector$2;
.super Ljava/util/TimerTask;
.source "LocationBasedCountryDetector.java"


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
    .line 200
    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@2
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@2
    const/4 v1, 0x0

    #@3
    iput-object v1, v0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    #@5
    .line 204
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@7
    invoke-virtual {v0}, Lcom/android/server/location/LocationBasedCountryDetector;->stop()V

    #@a
    .line 207
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@c
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    #@e
    invoke-virtual {v1}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    #@11
    move-result-object v1

    #@12
    invoke-static {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;->-wrap0(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    #@15
    .line 202
    return-void
.end method
