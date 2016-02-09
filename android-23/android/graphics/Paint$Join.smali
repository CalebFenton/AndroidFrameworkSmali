.class public final enum Landroid/graphics/Paint$Join;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Join"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/Paint$Join;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/Paint$Join;

.field public static final enum BEVEL:Landroid/graphics/Paint$Join;

.field public static final enum MITER:Landroid/graphics/Paint$Join;

.field public static final enum ROUND:Landroid/graphics/Paint$Join;


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
    .line 373
    new-instance v0, Landroid/graphics/Paint$Join;

    #@5
    const-string/jumbo v1, "MITER"

    #@8
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    #@b
    .line 376
    sput-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@d
    .line 377
    new-instance v0, Landroid/graphics/Paint$Join;

    #@f
    const-string/jumbo v1, "ROUND"

    #@12
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    #@15
    .line 380
    sput-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@17
    .line 381
    new-instance v0, Landroid/graphics/Paint$Join;

    #@19
    const-string/jumbo v1, "BEVEL"

    #@1c
    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    #@1f
    .line 384
    sput-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    #@21
    .line 372
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Landroid/graphics/Paint$Join;

    #@24
    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 387
    iput p3, p0, Landroid/graphics/Paint$Join;->nativeInt:I

    #@5
    .line 386
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 372
    const-class v0, Landroid/graphics/Paint$Join;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Paint$Join;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/Paint$Join;
    .locals 1

    #@0
    .prologue
    .line 372
    sget-object v0, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

    #@2
    return-object v0
.end method
