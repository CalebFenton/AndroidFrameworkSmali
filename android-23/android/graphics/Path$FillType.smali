.class public final enum Landroid/graphics/Path$FillType;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Path$FillType;

.field public static final enum EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum INVERSE_WINDING:Landroid/graphics/Path$FillType;

.field public static final enum WINDING:Landroid/graphics/Path$FillType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 189
    new-instance v0, Landroid/graphics/Path$FillType;

    #@6
    const-string/jumbo v1, "WINDING"

    #@9
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    #@c
    .line 194
    sput-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@e
    .line 195
    new-instance v0, Landroid/graphics/Path$FillType;

    #@10
    const-string/jumbo v1, "EVEN_ODD"

    #@13
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    #@16
    .line 199
    sput-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@18
    .line 200
    new-instance v0, Landroid/graphics/Path$FillType;

    #@1a
    const-string/jumbo v1, "INVERSE_WINDING"

    #@1d
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    #@20
    .line 203
    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@22
    .line 204
    new-instance v0, Landroid/graphics/Path$FillType;

    #@24
    const-string/jumbo v1, "INVERSE_EVEN_ODD"

    #@27
    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    #@2a
    .line 207
    sput-object v0, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    #@2c
    .line 188
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/graphics/Path$FillType;

    #@2f
    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I

    #@0
    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 210
    iput p3, p0, Landroid/graphics/Path$FillType;->nativeInt:I

    #@5
    .line 209
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Path$FillType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    const-class v0, Landroid/graphics/Path$FillType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Path$FillType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Path$FillType;
    .locals 1

    #@0
    .prologue
    .line 188
    sget-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    #@2
    return-object v0
.end method
