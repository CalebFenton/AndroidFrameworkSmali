.class public final enum Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
.super Ljava/lang/Enum;
.source "AndroidImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoScale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

.field public static final enum AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

.field public static final enum AUTO_SCALE_ENABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 34
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@4
    const-string/jumbo v1, "AUTO_SCALE_ENABLED"

    #@7
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_ENABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@c
    .line 35
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@e
    const-string/jumbo v1, "AUTO_SCALE_DISABLED"

    #@11
    invoke-direct {v0, v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@16
    const/4 v0, 0x2

    #@17
    .line 33
    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@19
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_ENABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->$VALUES:[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const-class v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@2
    .line 33
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@8
    return-object v0
.end method

.method public static values()[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->$VALUES:[Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    #@8
    return-object v0
.end method
