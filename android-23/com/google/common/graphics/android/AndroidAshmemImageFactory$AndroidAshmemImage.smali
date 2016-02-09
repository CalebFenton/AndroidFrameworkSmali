.class Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
.super Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.source "AndroidAshmemImageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidAshmemImage"
.end annotation


# static fields
.field private static final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    #@2
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    #@7
    .line 49
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    #@9
    const/4 v1, 0x1

    #@a
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    #@c
    .line 54
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    #@e
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    #@10
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    #@12
    .line 55
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "imageData"    # [B
    .param p2, "imageOffset"    # I
    .param p3, "imageLength"    # I

    #@0
    .prologue
    .line 58
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    #@2
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    #@9
    .line 59
    return-void
.end method
