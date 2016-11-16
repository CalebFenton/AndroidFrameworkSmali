.class Lcom/android/location/provider/GeofenceProvider$1;
.super Landroid/location/IGeofenceProvider$Stub;
.source "GeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/GeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/GeofenceProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/GeofenceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/GeofenceProvider;

    #@0
    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    #@2
    invoke-direct {p0}, Landroid/location/IGeofenceProvider$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 2
    .param p1, "hardwareProxy"    # Landroid/hardware/location/IGeofenceHardware;

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    #@2
    new-instance v1, Landroid/hardware/location/GeofenceHardware;

    #@4
    invoke-direct {v1, p1}, Landroid/hardware/location/GeofenceHardware;-><init>(Landroid/hardware/location/IGeofenceHardware;)V

    #@7
    invoke-static {v0, v1}, Lcom/android/location/provider/GeofenceProvider;->-set0(Lcom/android/location/provider/GeofenceProvider;Landroid/hardware/location/GeofenceHardware;)Landroid/hardware/location/GeofenceHardware;

    #@a
    .line 42
    iget-object v0, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    #@c
    iget-object v1, p0, Lcom/android/location/provider/GeofenceProvider$1;->this$0:Lcom/android/location/provider/GeofenceProvider;

    #@e
    invoke-static {v1}, Lcom/android/location/provider/GeofenceProvider;->-get0(Lcom/android/location/provider/GeofenceProvider;)Landroid/hardware/location/GeofenceHardware;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Lcom/android/location/provider/GeofenceProvider;->onGeofenceHardwareChange(Landroid/hardware/location/GeofenceHardware;)V

    #@15
    .line 40
    return-void
.end method
