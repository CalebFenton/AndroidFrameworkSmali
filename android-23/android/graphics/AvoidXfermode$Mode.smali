.class public final enum Landroid/graphics/AvoidXfermode$Mode;
.super Ljava/lang/Enum;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/AvoidXfermode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/AvoidXfermode$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/AvoidXfermode$Mode;

.field public static final enum AVOID:Landroid/graphics/AvoidXfermode$Mode;

.field public static final enum TARGET:Landroid/graphics/AvoidXfermode$Mode;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 28
    new-instance v0, Landroid/graphics/AvoidXfermode$Mode;

    #@4
    const-string/jumbo v1, "AVOID"

    #@7
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/AvoidXfermode$Mode;-><init>(Ljava/lang/String;II)V

    #@a
    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    #@c
    new-instance v0, Landroid/graphics/AvoidXfermode$Mode;

    #@e
    const-string/jumbo v1, "TARGET"

    #@11
    invoke-direct {v0, v1, v3, v3}, Landroid/graphics/AvoidXfermode$Mode;-><init>(Ljava/lang/String;II)V

    #@14
    .line 29
    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    #@16
    .line 27
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Landroid/graphics/AvoidXfermode$Mode;

    #@19
    sget-object v1, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->$VALUES:[Landroid/graphics/AvoidXfermode$Mode;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 32
    iput p3, p0, Landroid/graphics/AvoidXfermode$Mode;->nativeInt:I

    #@5
    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/AvoidXfermode$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    const-class v0, Landroid/graphics/AvoidXfermode$Mode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/AvoidXfermode$Mode;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/graphics/AvoidXfermode$Mode;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Landroid/graphics/AvoidXfermode$Mode;->$VALUES:[Landroid/graphics/AvoidXfermode$Mode;

    #@2
    return-object v0
.end method
