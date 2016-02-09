.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
.super Ljava/lang/Object;
.source "AndroidImageFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;


# instance fields
.field private final context:Landroid/content/Context;

.field private stringIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    #@5
    .line 30
    return-void
.end method


# virtual methods
.method public createImage(II)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 52
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@2
    invoke-direct {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(II)V

    #@5
    return-object v0
.end method

.method public createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "processAlpha"    # Z

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(IIZ)V

    #@5
    return-object v0
.end method

.method public createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1
    .param p1, "imageData"    # [B
    .param p2, "imageOffset"    # I
    .param p3, "imageLength"    # I

    #@0
    .prologue
    .line 34
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>([BII)V

    #@5
    return-object v0
.end method

.method public createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 48
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    #@6
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    #@8
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    #@a
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@c
    invoke-direct {v0, v1, v2, p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;)V

    #@f
    return-object v0
.end method

.method public setStringIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p1, "stringIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    #@2
    .line 67
    return-void
.end method
