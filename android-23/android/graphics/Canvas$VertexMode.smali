.class public final enum Landroid/graphics/Canvas$VertexMode;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Canvas$VertexMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Canvas$VertexMode;

.field public static final enum TRIANGLES:Landroid/graphics/Canvas$VertexMode;

.field public static final enum TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

.field public static final enum TRIANGLE_STRIP:Landroid/graphics/Canvas$VertexMode;


# instance fields
.field public final nativeInt:I


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
    .line 1561
    new-instance v0, Landroid/graphics/Canvas$VertexMode;

    #@5
    const-string/jumbo v1, "TRIANGLES"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Canvas$VertexMode;-><init>(Ljava/lang/String;II)V

    #@b
    sput-object v0, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    #@d
    .line 1562
    new-instance v0, Landroid/graphics/Canvas$VertexMode;

    #@f
    const-string/jumbo v1, "TRIANGLE_STRIP"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Canvas$VertexMode;-><init>(Ljava/lang/String;II)V

    #@15
    sput-object v0, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_STRIP:Landroid/graphics/Canvas$VertexMode;

    #@17
    .line 1563
    new-instance v0, Landroid/graphics/Canvas$VertexMode;

    #@19
    const-string/jumbo v1, "TRIANGLE_FAN"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Canvas$VertexMode;-><init>(Ljava/lang/String;II)V

    #@1f
    sput-object v0, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

    #@21
    .line 1560
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/graphics/Canvas$VertexMode;

    #@24
    sget-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_STRIP:Landroid/graphics/Canvas$VertexMode;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/graphics/Canvas$VertexMode;->$VALUES:[Landroid/graphics/Canvas$VertexMode;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 1565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 1566
    iput p3, p0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    #@5
    .line 1565
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Canvas$VertexMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1560
    const-class v0, Landroid/graphics/Canvas$VertexMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Canvas$VertexMode;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Canvas$VertexMode;
    .locals 1

    #@0
    .prologue
    .line 1560
    sget-object v0, Landroid/graphics/Canvas$VertexMode;->$VALUES:[Landroid/graphics/Canvas$VertexMode;

    #@2
    return-object v0
.end method
