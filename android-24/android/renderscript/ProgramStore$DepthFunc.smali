.class public final enum Landroid/renderscript/ProgramStore$DepthFunc;
.super Ljava/lang/Enum;
.source "ProgramStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DepthFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/ProgramStore$DepthFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;


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
    .line 45
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@7
    const-string/jumbo v1, "ALWAYS"

    #@a
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@d
    .line 48
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@f
    .line 49
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@11
    const-string/jumbo v1, "LESS"

    #@14
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@17
    .line 53
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@19
    .line 54
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@1b
    const-string/jumbo v1, "LESS_OR_EQUAL"

    #@1e
    invoke-direct {v0, v1, v6, v6}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@21
    .line 58
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@23
    .line 59
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@25
    const-string/jumbo v1, "GREATER"

    #@28
    invoke-direct {v0, v1, v7, v7}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@2b
    .line 63
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    #@2d
    .line 64
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@2f
    const-string/jumbo v1, "GREATER_OR_EQUAL"

    #@32
    invoke-direct {v0, v1, v8, v8}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@35
    .line 68
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@37
    .line 69
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@39
    const-string/jumbo v1, "EQUAL"

    #@3c
    const/4 v2, 0x5

    #@3d
    .line 73
    const/4 v3, 0x5

    #@3e
    .line 69
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@41
    .line 73
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@43
    .line 74
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@45
    const-string/jumbo v1, "NOT_EQUAL"

    #@48
    const/4 v2, 0x6

    #@49
    .line 78
    const/4 v3, 0x6

    #@4a
    .line 74
    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    #@4d
    .line 78
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@4f
    .line 43
    const/4 v0, 0x7

    #@50
    new-array v0, v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    #@52
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@54
    aput-object v1, v0, v4

    #@56
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    #@58
    aput-object v1, v0, v5

    #@5a
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@5c
    aput-object v1, v0, v6

    #@5e
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    #@60
    aput-object v1, v0, v7

    #@62
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@64
    aput-object v1, v0, v8

    #@66
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@68
    const/4 v2, 0x5

    #@69
    aput-object v1, v0, v2

    #@6b
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    #@6d
    const/4 v2, 0x6

    #@6e
    aput-object v1, v0, v2

    #@70
    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    #@72
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 82
    iput p3, p0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    #@5
    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    const-class v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/ProgramStore$DepthFunc;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1

    #@0
    .prologue
    .line 43
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    #@2
    return-object v0
.end method
