.class public final enum Landroid/graphics/Matrix$ScaleToFit;
.super Ljava/lang/Enum;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleToFit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Matrix$ScaleToFit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum CENTER:Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum END:Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum FILL:Landroid/graphics/Matrix$ScaleToFit;

.field public static final enum START:Landroid/graphics/Matrix$ScaleToFit;


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
    .line 528
    new-instance v0, Landroid/graphics/Matrix$ScaleToFit;

    #@6
    const-string/jumbo v1, "FILL"

    #@9
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    #@c
    .line 532
    sput-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    #@e
    .line 533
    new-instance v0, Landroid/graphics/Matrix$ScaleToFit;

    #@10
    const-string/jumbo v1, "START"

    #@13
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    #@16
    .line 539
    sput-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    #@18
    .line 540
    new-instance v0, Landroid/graphics/Matrix$ScaleToFit;

    #@1a
    const-string/jumbo v1, "CENTER"

    #@1d
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    #@20
    .line 545
    sput-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #@22
    .line 546
    new-instance v0, Landroid/graphics/Matrix$ScaleToFit;

    #@24
    const-string/jumbo v1, "END"

    #@27
    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/Matrix$ScaleToFit;-><init>(Ljava/lang/String;II)V

    #@2a
    .line 552
    sput-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    #@2c
    .line 527
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/graphics/Matrix$ScaleToFit;

    #@2f
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/graphics/Matrix$ScaleToFit;->$VALUES:[Landroid/graphics/Matrix$ScaleToFit;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 555
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 556
    iput p3, p0, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    #@5
    .line 555
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 527
    const-class v0, Landroid/graphics/Matrix$ScaleToFit;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Matrix$ScaleToFit;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Matrix$ScaleToFit;
    .locals 1

    #@0
    .prologue
    .line 527
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->$VALUES:[Landroid/graphics/Matrix$ScaleToFit;

    #@2
    return-object v0
.end method
