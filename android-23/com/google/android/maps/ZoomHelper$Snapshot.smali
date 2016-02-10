.class Lcom/google/android/maps/ZoomHelper$Snapshot;
.super Ljava/lang/Object;
.source "ZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/ZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snapshot"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public fixedPoint:Lcom/google/android/maps/GeoPoint;

.field public final fixedPointCoords:[F

.field public final fixedPointScreenCoords:[F

.field public zoom:Landroid/com/google/map/Zoom;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 497
    new-array v0, v1, [F

    #@6
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    #@8
    .line 498
    new-array v0, v1, [F

    #@a
    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    #@c
    .line 493
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/ZoomHelper$Snapshot;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper$Snapshot;-><init>()V

    #@3
    return-void
.end method
