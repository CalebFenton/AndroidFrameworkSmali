.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;
.super Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
.source "AndroidAshmemImageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;-><init>(Landroid/content/Context;)V

    #@3
    .line 31
    return-void
.end method


# virtual methods
.method public createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1
    .param p1, "imageData"    # [B
    .param p2, "imageOffset"    # I
    .param p3, "imageLength"    # I

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;-><init>([BII)V

    #@5
    return-object v0
.end method
