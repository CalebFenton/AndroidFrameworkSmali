.class final Landroid/telephony/CbGeoUtils$Polygon$Point;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils$Polygon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Point"
.end annotation


# instance fields
.field public final blacklist x:D

.field public final blacklist y:D


# direct methods
.method constructor blacklist <init>(DD)V
    .registers 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-wide p1, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    .line 284
    iput-wide p3, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    .line 285
    return-void
.end method


# virtual methods
.method public blacklist subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 9
    .param p1, "p"    # Landroid/telephony/CbGeoUtils$Polygon$Point;

    .line 288
    new-instance v0, Landroid/telephony/CbGeoUtils$Polygon$Point;

    iget-wide v1, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v3, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v5, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/CbGeoUtils$Polygon$Point;-><init>(DD)V

    return-object v0
.end method
