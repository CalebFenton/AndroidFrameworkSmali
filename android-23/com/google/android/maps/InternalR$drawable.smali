.class final Lcom/google/android/maps/InternalR$drawable;
.super Ljava/lang/Object;
.source "InternalR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/InternalR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "drawable"
.end annotation


# static fields
.field public static final compass_arrow:I

.field public static final compass_base:I

.field public static final ic_maps_indicator_current_position_anim:I

.field public static final loading_tile_android:I

.field public static final maps_google_logo:I

.field public static final no_tile_256:I

.field public static final reticle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 115
    const-string/jumbo v0, "compass_arrow"

    #@3
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    sput v0, Lcom/google/android/maps/InternalR$drawable;->compass_arrow:I

    #@9
    .line 116
    const-string/jumbo v0, "compass_base"

    #@c
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@f
    move-result v0

    #@10
    sput v0, Lcom/google/android/maps/InternalR$drawable;->compass_base:I

    #@12
    .line 118
    const-string/jumbo v0, "ic_maps_indicator_current_position_anim"

    #@15
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    .line 117
    sput v0, Lcom/google/android/maps/InternalR$drawable;->ic_maps_indicator_current_position_anim:I

    #@1b
    .line 119
    const-string/jumbo v0, "loading_tile_android"

    #@1e
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@21
    move-result v0

    #@22
    sput v0, Lcom/google/android/maps/InternalR$drawable;->loading_tile_android:I

    #@24
    .line 120
    const-string/jumbo v0, "maps_google_logo"

    #@27
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@2a
    move-result v0

    #@2b
    sput v0, Lcom/google/android/maps/InternalR$drawable;->maps_google_logo:I

    #@2d
    .line 121
    const-string/jumbo v0, "no_tile_256"

    #@30
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@33
    move-result v0

    #@34
    sput v0, Lcom/google/android/maps/InternalR$drawable;->no_tile_256:I

    #@36
    .line 122
    const-string/jumbo v0, "reticle"

    #@39
    invoke-static {v0}, Lcom/google/android/maps/InternalR$drawable;->get(Ljava/lang/String;)I

    #@3c
    move-result v0

    #@3d
    sput v0, Lcom/google/android/maps/InternalR$drawable;->reticle:I

    #@3f
    .line 110
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static get(Ljava/lang/String;)I
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    const-class v0, Lcom/android/internal/R$drawable;

    #@2
    invoke-static {v0, p0}, Lcom/google/android/maps/InternalR;->-wrap0(Ljava/lang/Class;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
