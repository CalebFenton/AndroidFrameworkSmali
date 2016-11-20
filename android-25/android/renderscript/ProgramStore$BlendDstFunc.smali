.class public final enum Landroid/renderscript/ProgramStore$BlendDstFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendDstFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$BlendDstFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;


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
    .line 121
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@7
    const-string/jumbo v1, "ZERO"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@d
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@f
    .line 122
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@11
    const-string/jumbo v1, "ONE"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@17
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@19
    .line 123
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@1b
    const-string/jumbo v1, "SRC_COLOR"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@21
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@23
    .line 124
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@25
    const-string/jumbo v1, "ONE_MINUS_SRC_COLOR"

    #@28
    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@2b
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@2d
    .line 125
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@2f
    const-string/jumbo v1, "SRC_ALPHA"

    #@32
    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@35
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@37
    .line 126
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@39
    const-string/jumbo v1, "ONE_MINUS_SRC_ALPHA"

    #@3c
    const/4 v2, 0x5

    #@3d
    const/4 v3, 0x5

    #@3e
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@41
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@43
    .line 127
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@45
    const-string/jumbo v1, "DST_ALPHA"

    #@48
    const/4 v2, 0x6

    #@49
    const/4 v3, 0x6

    #@4a
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@4d
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@4f
    .line 128
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@51
    const-string/jumbo v1, "ONE_MINUS_DST_ALPHA"

    #@54
    const/4 v2, 0x7

    #@55
    const/4 v3, 0x7

    #@56
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    #@59
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@5b
    .line 120
    const/16 v0, 0x8

    #@5d
    new-array v0, v0, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@5f
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@61
    aput-object v1, v0, v4

    #@63
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@65
    aput-object v1, v0, v5

    #@67
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@69
    aput-object v1, v0, v6

    #@6b
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@6d
    aput-object v1, v0, v7

    #@6f
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@71
    aput-object v1, v0, v8

    #@73
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@75
    const/4 v2, 0x5

    #@76
    aput-object v1, v0, v2

    #@78
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@7a
    const/4 v2, 0x6

    #@7b
    aput-object v1, v0, v2

    #@7d
    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@7f
    const/4 v2, 0x7

    #@80
    aput-object v1, v0, v2

    #@82
    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 132
    iput p3, p0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    #@5
    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    const-class v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1

    #@0
    .prologue
    .line 120
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

    #@2
    return-object v0
.end method
