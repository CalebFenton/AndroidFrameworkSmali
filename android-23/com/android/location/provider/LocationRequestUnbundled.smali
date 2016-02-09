.class public final Lcom/android/location/provider/LocationRequestUnbundled;
.super Ljava/lang/Object;
.source "LocationRequestUnbundled.java"


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private final delegate:Landroid/location/LocationRequest;


# direct methods
.method constructor <init>(Landroid/location/LocationRequest;)V
    .locals 0
    .param p1, "delegate"    # Landroid/location/LocationRequest;

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    #@5
    .line 80
    return-void
.end method


# virtual methods
.method public getFastestInterval()J
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    #@2
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getInterval()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    #@2
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getQuality()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    #@2
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    #@2
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/location/provider/LocationRequestUnbundled;->delegate:Landroid/location/LocationRequest;

    #@2
    invoke-virtual {v0}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
