.class public final enum Lcom/google/android/maps/MapView$ReticleDrawMode;
.super Ljava/lang/Enum;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReticleDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/MapView$ReticleDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

.field public static final enum DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 123
    new-instance v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@5
    const-string/jumbo v1, "DRAW_RETICLE_OVER"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    #@b
    .line 124
    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@d
    .line 126
    new-instance v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@f
    const-string/jumbo v1, "DRAW_RETICLE_UNDER"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    #@15
    .line 127
    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@17
    .line 129
    new-instance v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@19
    const-string/jumbo v1, "DRAW_RETICLE_NEVER"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/MapView$ReticleDrawMode;-><init>(Ljava/lang/String;I)V

    #@1f
    .line 130
    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@21
    .line 121
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@24
    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_OVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_UNDER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/google/android/maps/MapView$ReticleDrawMode;->DRAW_RETICLE_NEVER:Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->$VALUES:[Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/MapView$ReticleDrawMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    const-class v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/MapView$ReticleDrawMode;
    .locals 1

    #@0
    .prologue
    .line 121
    sget-object v0, Lcom/google/android/maps/MapView$ReticleDrawMode;->$VALUES:[Lcom/google/android/maps/MapView$ReticleDrawMode;

    #@2
    return-object v0
.end method
