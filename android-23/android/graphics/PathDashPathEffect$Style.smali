.class public final enum Landroid/graphics/PathDashPathEffect$Style;
.super Ljava/lang/Enum;
.source "PathDashPathEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PathDashPathEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/PathDashPathEffect$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/PathDashPathEffect$Style;

.field public static final enum MORPH:Landroid/graphics/PathDashPathEffect$Style;

.field public static final enum ROTATE:Landroid/graphics/PathDashPathEffect$Style;

.field public static final enum TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;


# instance fields
.field native_style:I


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
    .line 22
    new-instance v0, Landroid/graphics/PathDashPathEffect$Style;

    #@5
    const-string/jumbo v1, "TRANSLATE"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/PathDashPathEffect$Style;-><init>(Ljava/lang/String;II)V

    #@b
    sput-object v0, Landroid/graphics/PathDashPathEffect$Style;->TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;

    #@d
    new-instance v0, Landroid/graphics/PathDashPathEffect$Style;

    #@f
    const-string/jumbo v1, "ROTATE"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/PathDashPathEffect$Style;-><init>(Ljava/lang/String;II)V

    #@15
    .line 23
    sput-object v0, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    #@17
    new-instance v0, Landroid/graphics/PathDashPathEffect$Style;

    #@19
    const-string/jumbo v1, "MORPH"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/PathDashPathEffect$Style;-><init>(Ljava/lang/String;II)V

    #@1f
    .line 24
    sput-object v0, Landroid/graphics/PathDashPathEffect$Style;->MORPH:Landroid/graphics/PathDashPathEffect$Style;

    #@21
    .line 21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/graphics/PathDashPathEffect$Style;

    #@24
    sget-object v1, Landroid/graphics/PathDashPathEffect$Style;->TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/graphics/PathDashPathEffect$Style;->MORPH:Landroid/graphics/PathDashPathEffect$Style;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/graphics/PathDashPathEffect$Style;->$VALUES:[Landroid/graphics/PathDashPathEffect$Style;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 27
    iput p3, p0, Landroid/graphics/PathDashPathEffect$Style;->native_style:I

    #@5
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/PathDashPathEffect$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 21
    const-class v0, Landroid/graphics/PathDashPathEffect$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/PathDashPathEffect$Style;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/PathDashPathEffect$Style;
    .locals 1

    #@0
    .prologue
    .line 21
    sget-object v0, Landroid/graphics/PathDashPathEffect$Style;->$VALUES:[Landroid/graphics/PathDashPathEffect$Style;

    #@2
    return-object v0
.end method
