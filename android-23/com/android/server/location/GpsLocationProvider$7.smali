.class Lcom/android/server/location/GpsLocationProvider$7;
.super Lcom/android/server/location/GpsMeasurementsProvider;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsMeasurementsProvider;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public isAvailableInPlatform()Z
    .locals 1

    #@0
    .prologue
    .line 680
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->-wrap3()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected isGpsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-virtual {v0}, Lcom/android/server/location/GpsLocationProvider;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected registerWithService()Z
    .locals 1

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-wrap8(Lcom/android/server/location/GpsLocationProvider;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected unregisterFromService()V
    .locals 1

    #@0
    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$7;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->-wrap10(Lcom/android/server/location/GpsLocationProvider;)Z

    #@5
    .line 689
    return-void
.end method
