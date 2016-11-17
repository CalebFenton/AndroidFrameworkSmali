.class Lcom/android/location/provider/FusedProvider$1;
.super Landroid/location/IFusedProvider$Stub;
.source "FusedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/FusedProvider;


# direct methods
.method constructor <init>(Lcom/android/location/provider/FusedProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/FusedProvider;

    #@0
    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/location/provider/FusedProvider$1;->this$0:Lcom/android/location/provider/FusedProvider;

    #@2
    invoke-direct {p0}, Landroid/location/IFusedProvider$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFusedLocationHardwareChange(Landroid/hardware/location/IFusedLocationHardware;)V
    .locals 2
    .param p1, "instance"    # Landroid/hardware/location/IFusedLocationHardware;

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/location/provider/FusedProvider$1;->this$0:Lcom/android/location/provider/FusedProvider;

    #@2
    new-instance v1, Lcom/android/location/provider/FusedLocationHardware;

    #@4
    invoke-direct {v1, p1}, Lcom/android/location/provider/FusedLocationHardware;-><init>(Landroid/hardware/location/IFusedLocationHardware;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedProvider;->setFusedLocationHardware(Lcom/android/location/provider/FusedLocationHardware;)V

    #@a
    .line 35
    return-void
.end method
