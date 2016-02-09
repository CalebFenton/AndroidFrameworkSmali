.class Lcom/android/location/provider/FusedLocationHardware$1;
.super Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method constructor <init>(Lcom/android/location/provider/FusedLocationHardware;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/FusedLocationHardware;

    #@0
    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCapabilities(I)V
    .locals 1
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    invoke-static {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->-wrap0(Lcom/android/location/provider/FusedLocationHardware;I)V

    #@5
    .line 57
    return-void
.end method

.method public onDiagnosticDataAvailable(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    invoke-static {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->-wrap1(Lcom/android/location/provider/FusedLocationHardware;Ljava/lang/String;)V

    #@5
    .line 52
    return-void
.end method

.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 1
    .param p1, "locations"    # [Landroid/location/Location;

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    invoke-static {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->-wrap2(Lcom/android/location/provider/FusedLocationHardware;[Landroid/location/Location;)V

    #@5
    .line 47
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 1
    .param p1, "status"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$1;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    invoke-static {v0, p1}, Lcom/android/location/provider/FusedLocationHardware;->-wrap3(Lcom/android/location/provider/FusedLocationHardware;I)V

    #@5
    .line 62
    return-void
.end method
