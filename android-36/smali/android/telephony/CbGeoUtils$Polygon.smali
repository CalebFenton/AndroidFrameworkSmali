.class public Landroid/telephony/CbGeoUtils$Polygon;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"

# interfaces
.implements Landroid/telephony/CbGeoUtils$Geometry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Polygon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Polygon$Point;
    }
.end annotation


# static fields
.field private static final blacklist SCALE:D = 1000.0


# instance fields
.field private final blacklist mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

.field private final blacklist mScaledVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Polygon$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$lGZ1xFBE-5bi5sas7dayvOLy8kc(Landroid/telephony/CbGeoUtils$Polygon;Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->lambda$new$0(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "vertices":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$LatLng;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "idx":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, v2, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_22

    .line 181
    move v0, v1

    .line 179
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 184
    .end local v1    # "i":I
    :cond_25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CbGeoUtils$LatLng;

    iput-object v1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    .line 186
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/CbGeoUtils$Polygon;)V

    .line 187
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 188
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    .line 189
    return-void
.end method

.method private blacklist convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 12
    .param p1, "latLng"    # Landroid/telephony/CbGeoUtils$LatLng;

    .line 255
    iget-wide v0, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iget-object v2, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, v2, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v0, v2

    .line 256
    .local v0, "x":D
    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v2, v4

    .line 264
    .local v2, "y":D
    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-eqz v4, :cond_52

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    iget-wide v5, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v5, v6}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v5

    if-eq v4, v5, :cond_52

    .line 265
    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 266
    .local v4, "distCross0thMeridian":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v6

    if-lez v6, :cond_52

    .line 267
    iget-object v6, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v6, v6, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v6, v7}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v8, v4

    mul-double v2, v6, v8

    .line 270
    .end local v4    # "distCross0thMeridian":D
    :cond_52
    new-instance v4, Landroid/telephony/CbGeoUtils$Polygon$Point;

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v7, v0, v5

    mul-double/2addr v5, v2

    invoke-direct {v4, v7, v8, v5, v6}, Landroid/telephony/CbGeoUtils$Polygon$Point;-><init>(DD)V

    return-object v4
.end method

.method private static blacklist crossProduct(Landroid/telephony/CbGeoUtils$Polygon$Point;Landroid/telephony/CbGeoUtils$Polygon$Point;)D
    .registers 8
    .param p0, "a"    # Landroid/telephony/CbGeoUtils$Polygon$Point;
    .param p1, "b"    # Landroid/telephony/CbGeoUtils$Polygon$Point;

    .line 274
    iget-wide v0, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v4, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .registers 3
    .param p1, "latLng"    # Landroid/telephony/CbGeoUtils$LatLng;

    .line 187
    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist contains(Landroid/telephony/CbGeoUtils$LatLng;)Z
    .registers 16
    .param p1, "latLng"    # Landroid/telephony/CbGeoUtils$LatLng;

    .line 209
    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v0

    .line 211
    .local v0, "p":Landroid/telephony/CbGeoUtils$Polygon$Point;
    iget-object v1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 212
    .local v1, "n":I
    const/4 v2, 0x0

    .line 213
    .local v2, "windingNumber":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    const/4 v4, 0x1

    if-ge v3, v1, :cond_9b

    .line 214
    iget-object v5, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CbGeoUtils$Polygon$Point;

    .line 215
    .local v5, "a":Landroid/telephony/CbGeoUtils$Polygon$Point;
    iget-object v6, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    add-int/lit8 v7, v3, 0x1

    rem-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CbGeoUtils$Polygon$Point;

    .line 222
    .local v6, "b":Landroid/telephony/CbGeoUtils$Polygon$Point;
    invoke-virtual {v6, v5}, Landroid/telephony/CbGeoUtils$Polygon$Point;->subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v7

    invoke-virtual {v0, v5}, Landroid/telephony/CbGeoUtils$Polygon$Point;->subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/CbGeoUtils$Polygon;->crossProduct(Landroid/telephony/CbGeoUtils$Polygon$Point;Landroid/telephony/CbGeoUtils$Polygon$Point;)D

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v7

    .line 224
    .local v7, "ccw":I
    if-nez v7, :cond_6d

    .line 225
    iget-wide v8, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v10, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iget-wide v10, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_97

    iget-wide v8, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v10, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v12, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_97

    iget-wide v8, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v10, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    .line 226
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iget-wide v10, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_97

    iget-wide v8, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v10, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v12, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_97

    .line 227
    return v4

    .line 230
    :cond_6d
    iget-wide v8, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v10, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-gtz v4, :cond_88

    .line 232
    if-lez v7, :cond_97

    iget-wide v8, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v10, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-lez v4, :cond_97

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 237
    :cond_88
    if-gez v7, :cond_97

    iget-wide v8, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v10, v0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-gtz v4, :cond_97

    .line 238
    add-int/lit8 v2, v2, -0x1

    .line 213
    .end local v5    # "a":Landroid/telephony/CbGeoUtils$Polygon$Point;
    .end local v6    # "b":Landroid/telephony/CbGeoUtils$Polygon$Point;
    .end local v7    # "ccw":I
    :cond_97
    :goto_97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 243
    .end local v3    # "i":I
    :cond_9b
    if-eqz v2, :cond_9e

    goto :goto_9f

    :cond_9e
    const/4 v4, 0x0

    :goto_9f
    return v4
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 307
    return v0

    .line 310
    :cond_4
    instance-of v1, p1, Landroid/telephony/CbGeoUtils$Polygon;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 311
    return v2

    .line 314
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CbGeoUtils$Polygon;

    .line 315
    .local v1, "p":Landroid/telephony/CbGeoUtils$Polygon;
    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v1, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_1c

    .line 316
    return v2

    .line 318
    :cond_1c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 319
    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CbGeoUtils$LatLng;

    iget-object v5, v1, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/CbGeoUtils$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 320
    return v2

    .line 318
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 324
    .end local v3    # "i":I
    :cond_3d
    return v0
.end method

.method public whitelist getVertices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 294
    const-string v0, "Polygon: "

    .line 295
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_19

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_19
    return-object v0
.end method
