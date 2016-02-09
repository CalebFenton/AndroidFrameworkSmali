.class public final enum Landroid/graphics/Canvas$EdgeType;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Canvas$EdgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Canvas$EdgeType;

.field public static final enum AA:Landroid/graphics/Canvas$EdgeType;

.field public static final enum BW:Landroid/graphics/Canvas$EdgeType;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 860
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    #@4
    const-string/jumbo v1, "BW"

    #@7
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;II)V

    #@a
    .line 863
    sput-object v0, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    #@c
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    #@e
    const-string/jumbo v1, "AA"

    #@11
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;II)V

    #@14
    .line 868
    sput-object v0, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    #@16
    .line 858
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/graphics/Canvas$EdgeType;

    #@19
    sget-object v1, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 870
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 871
    iput p3, p0, Landroid/graphics/Canvas$EdgeType;->nativeInt:I

    #@5
    .line 870
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Canvas$EdgeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 858
    const-class v0, Landroid/graphics/Canvas$EdgeType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Canvas$EdgeType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Canvas$EdgeType;
    .locals 1

    #@0
    .prologue
    .line 858
    sget-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    #@2
    return-object v0
.end method
