.class public final enum Landroid/renderscript/Font$Style;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Font$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Font$Style;

.field public static final enum BOLD:Landroid/renderscript/Font$Style;

.field public static final enum BOLD_ITALIC:Landroid/renderscript/Font$Style;

.field public static final enum ITALIC:Landroid/renderscript/Font$Style;

.field public static final enum NORMAL:Landroid/renderscript/Font$Style;


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
    .line 77
    new-instance v0, Landroid/renderscript/Font$Style;

    #@6
    const-string/jumbo v1, "NORMAL"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    #@c
    .line 80
    sput-object v0, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    #@e
    .line 81
    new-instance v0, Landroid/renderscript/Font$Style;

    #@10
    const-string/jumbo v1, "BOLD"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    #@16
    .line 84
    sput-object v0, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    #@18
    .line 85
    new-instance v0, Landroid/renderscript/Font$Style;

    #@1a
    const-string/jumbo v1, "ITALIC"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    #@20
    .line 88
    sput-object v0, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    #@22
    .line 89
    new-instance v0, Landroid/renderscript/Font$Style;

    #@24
    const-string/jumbo v1, "BOLD_ITALIC"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/renderscript/Font$Style;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 92
    sput-object v0, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    #@2c
    .line 76
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/renderscript/Font$Style;

    #@2f
    sget-object v1, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/renderscript/Font$Style;->$VALUES:[Landroid/renderscript/Font$Style;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Font$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    const-class v0, Landroid/renderscript/Font$Style;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Font$Style;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Font$Style;
    .locals 1

    #@0
    .prologue
    .line 76
    sget-object v0, Landroid/renderscript/Font$Style;->$VALUES:[Landroid/renderscript/Font$Style;

    #@2
    return-object v0
.end method
