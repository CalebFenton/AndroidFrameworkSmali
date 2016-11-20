.class public Lcom/android/location/provider/FusedLocationHardwareSink;
.super Ljava/lang/Object;
.source "FusedLocationHardwareSink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 50
    return-void
.end method

.method public onDiagnosticDataAvailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    return-void
.end method

.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 0
    .param p1, "locations"    # [Landroid/location/Location;

    #@0
    .prologue
    .line 32
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I

    #@0
    .prologue
    .line 64
    return-void
.end method
