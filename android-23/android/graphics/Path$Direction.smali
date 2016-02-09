.class public final enum Landroid/graphics/Path$Direction;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Path$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$Direction;

.field public static final enum CCW:Landroid/graphics/Path$Direction;

.field public static final enum CW:Landroid/graphics/Path$Direction;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 488
    new-instance v0, Landroid/graphics/Path$Direction;

    #@5
    const-string/jumbo v1, "CW"

    #@8
    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    #@b
    .line 489
    sput-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@d
    new-instance v0, Landroid/graphics/Path$Direction;

    #@f
    const-string/jumbo v1, "CCW"

    #@12
    invoke-direct {v0, v1, v2, v4}, Landroid/graphics/Path$Direction;-><init>(Ljava/lang/String;II)V

    #@15
    .line 491
    sput-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@17
    .line 487
    new-array v0, v4, [Landroid/graphics/Path$Direction;

    #@19
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@1b
    aput-object v1, v0, v3

    #@1d
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    #@1f
    aput-object v1, v0, v2

    #@21
    sput-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I

    #@0
    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 494
    iput p3, p0, Landroid/graphics/Path$Direction;->nativeInt:I

    #@5
    .line 493
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 487
    const-class v0, Landroid/graphics/Path$Direction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Path$Direction;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$Direction;
    .locals 1

    #@0
    .prologue
    .line 487
    sget-object v0, Landroid/graphics/Path$Direction;->$VALUES:[Landroid/graphics/Path$Direction;

    #@2
    return-object v0
.end method
