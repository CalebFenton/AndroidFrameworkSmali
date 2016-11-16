.class public final enum Landroid/graphics/BlurMaskFilter$Blur;
.super Ljava/lang/Enum;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BlurMaskFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Blur"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/BlurMaskFilter$Blur;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum INNER:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum OUTER:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum SOLID:Landroid/graphics/BlurMaskFilter$Blur;


# instance fields
.field final native_int:I


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
    .line 28
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    #@6
    const-string/jumbo v1, "NORMAL"

    #@9
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    #@c
    .line 31
    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #@e
    .line 33
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    #@10
    const-string/jumbo v1, "SOLID"

    #@13
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    #@16
    .line 36
    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    #@18
    .line 38
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    #@1a
    const-string/jumbo v1, "OUTER"

    #@1d
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    #@20
    .line 41
    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    #@22
    .line 43
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    #@24
    const-string/jumbo v1, "INNER"

    #@27
    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    #@2a
    .line 46
    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    #@2c
    .line 27
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/graphics/BlurMaskFilter$Blur;

    #@2f
    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->$VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 49
    iput p3, p0, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    #@5
    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/BlurMaskFilter$Blur;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-class v0, Landroid/graphics/BlurMaskFilter$Blur;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/BlurMaskFilter$Blur;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/BlurMaskFilter$Blur;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->$VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

    #@2
    return-object v0
.end method
