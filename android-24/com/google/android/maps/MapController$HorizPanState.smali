.class final enum Lcom/google/android/maps/MapController$HorizPanState;
.super Ljava/lang/Enum;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HorizPanState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/MapController$HorizPanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/MapController$HorizPanState;

.field public static final enum LEFT:Lcom/google/android/maps/MapController$HorizPanState;

.field public static final enum NONE:Lcom/google/android/maps/MapController$HorizPanState;

.field public static final enum RIGHT:Lcom/google/android/maps/MapController$HorizPanState;


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
    .line 40
    new-instance v0, Lcom/google/android/maps/MapController$HorizPanState;

    #@5
    const-string/jumbo v1, "LEFT"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/MapController$HorizPanState;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    #@d
    new-instance v0, Lcom/google/android/maps/MapController$HorizPanState;

    #@f
    const-string/jumbo v1, "RIGHT"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/MapController$HorizPanState;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    #@17
    new-instance v0, Lcom/google/android/maps/MapController$HorizPanState;

    #@19
    const-string/jumbo v1, "NONE"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/MapController$HorizPanState;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/google/android/maps/MapController$HorizPanState;

    #@24
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->$VALUES:[Lcom/google/android/maps/MapController$HorizPanState;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/MapController$HorizPanState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    const-class v0, Lcom/google/android/maps/MapController$HorizPanState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/maps/MapController$HorizPanState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/MapController$HorizPanState;
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->$VALUES:[Lcom/google/android/maps/MapController$HorizPanState;

    #@2
    return-object v0
.end method
