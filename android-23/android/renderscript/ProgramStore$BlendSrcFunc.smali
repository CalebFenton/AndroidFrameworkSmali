.class public final enum Landroid/renderscript/ProgramStore$BlendSrcFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendSrcFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$BlendSrcFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 95
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@7
    const-string/jumbo v1, "ZERO"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@f
    .line 96
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@11
    const-string/jumbo v1, "ONE"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@19
    .line 97
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@1b
    const-string/jumbo v1, "DST_COLOR"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@21
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@23
    .line 98
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@25
    const-string/jumbo v1, "ONE_MINUS_DST_COLOR"

    #@28
    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@2b
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@2d
    .line 99
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@2f
    const-string/jumbo v1, "SRC_ALPHA"

    #@32
    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@35
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@37
    .line 100
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@39
    const-string/jumbo v1, "ONE_MINUS_SRC_ALPHA"

    #@3c
    const/4 v2, 0x5

    #@3d
    const/4 v3, 0x5

    #@3e
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@41
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@43
    .line 101
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@45
    const-string/jumbo v1, "DST_ALPHA"

    #@48
    const/4 v2, 0x6

    #@49
    const/4 v3, 0x6

    #@4a
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@4d
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@4f
    .line 102
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@51
    const-string/jumbo v1, "ONE_MINUS_DST_ALPHA"

    #@54
    const/4 v2, 0x7

    #@55
    const/4 v3, 0x7

    #@56
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@59
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@5b
    .line 103
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@5d
    const-string/jumbo v1, "SRC_ALPHA_SATURATE"

    #@60
    const/16 v2, 0x8

    #@62
    const/16 v3, 0x8

    #@64
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    #@67
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@69
    .line 94
    const/16 v0, 0x9

    #@6b
    new-array v0, v0, [Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@6d
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@6f
    aput-object v1, v0, v4

    #@71
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@73
    aput-object v1, v0, v5

    #@75
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@77
    aput-object v1, v0, v6

    #@79
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@7b
    aput-object v1, v0, v7

    #@7d
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@7f
    aput-object v1, v0, v8

    #@81
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@83
    const/4 v2, 0x5

    #@84
    aput-object v1, v0, v2

    #@86
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@88
    const/4 v2, 0x6

    #@89
    aput-object v1, v0, v2

    #@8b
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@8d
    const/4 v2, 0x7

    #@8e
    aput-object v1, v0, v2

    #@90
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@92
    const/16 v2, 0x8

    #@94
    aput-object v1, v0, v2

    #@96
    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@98
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 107
    iput p3, p0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    #@5
    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    const-class v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1

    #@0
    .prologue
    .line 94
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

    #@2
    return-object v0
.end method
