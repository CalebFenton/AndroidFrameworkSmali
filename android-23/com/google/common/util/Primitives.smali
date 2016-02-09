.class public Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;,
        Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;,
        Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;
    }
.end annotation


# static fields
.field private static converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->resetConverter()V

    #@3
    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    return-void
.end method

.method static resetConverter()V
    .locals 2

    #@0
    .prologue
    .line 83
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$J2meConverter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$1;)V

    #@6
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;

    #@8
    .line 84
    return-void
.end method

.method public static toInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 98
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;

    #@2
    invoke-virtual {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;->toInteger(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static toLong(J)Ljava/lang/Long;
    .locals 2
    .param p0, "l"    # J

    #@0
    .prologue
    .line 91
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->converter:Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives$PrimitiveConverter;->toLong(J)Ljava/lang/Long;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
