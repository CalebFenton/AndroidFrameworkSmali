.class Lcom/android/server/location/GnssLocationProvider$10;
.super Lcom/android/server/location/GnssNavigationMessageProvider;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssNavigationMessageProvider;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method protected isAvailableInPlatform()Z
    .locals 1

    #@0
    .prologue
    .line 789
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap4()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected isGpsEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected registerWithService()Z
    .locals 1

    #@0
    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap9(Lcom/android/server/location/GnssLocationProvider;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected unregisterFromService()V
    .locals 1

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$10;->this$0:Lcom/android/server/location/GnssLocationProvider;

    #@2
    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap11(Lcom/android/server/location/GnssLocationProvider;)Z

    #@5
    .line 798
    return-void
.end method
