.class public final enum Landroid/graphics/Paint$Style;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Paint$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Paint$Style;

.field public static final enum FILL:Landroid/graphics/Paint$Style;

.field public static final enum FILL_AND_STROKE:Landroid/graphics/Paint$Style;

.field public static final enum STROKE:Landroid/graphics/Paint$Style;


# instance fields
.field final nativeInt:I


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
    .line 317
    new-instance v0, Landroid/graphics/Paint$Style;

    #@5
    const-string/jumbo v1, "FILL"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    #@b
    .line 321
    sput-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@d
    .line 322
    new-instance v0, Landroid/graphics/Paint$Style;

    #@f
    const-string/jumbo v1, "STROKE"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    #@15
    .line 326
    sput-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@17
    .line 327
    new-instance v0, Landroid/graphics/Paint$Style;

    #@19
    const-string/jumbo v1, "FILL_AND_STROKE"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    #@1f
    .line 334
    sput-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@21
    .line 316
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/graphics/Paint$Style;

    #@24
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/graphics/Paint$Style;->$VALUES:[Landroid/graphics/Paint$Style;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 337
    iput p3, p0, Landroid/graphics/Paint$Style;->nativeInt:I

    #@5
    .line 336
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    const-class v0, Landroid/graphics/Paint$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Paint$Style;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Paint$Style;
    .locals 1

    #@0
    .prologue
    .line 316
    sget-object v0, Landroid/graphics/Paint$Style;->$VALUES:[Landroid/graphics/Paint$Style;

    #@2
    return-object v0
.end method
