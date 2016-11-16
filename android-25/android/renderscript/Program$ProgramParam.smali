.class final enum Landroid/renderscript/Program$ProgramParam;
.super Ljava/lang/Enum;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProgramParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/renderscript/Program$ProgramParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/renderscript/Program$ProgramParam;

.field public static final enum CONSTANT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum INPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum OUTPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;


# instance fields
.field mID:I


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
    .line 58
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    #@6
    const-string/jumbo v1, "INPUT"

    #@9
    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    #@c
    sput-object v0, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    #@e
    .line 59
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    #@10
    const-string/jumbo v1, "OUTPUT"

    #@13
    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    #@16
    sput-object v0, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    #@18
    .line 60
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    #@1a
    const-string/jumbo v1, "CONSTANT"

    #@1d
    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    #@20
    sput-object v0, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    #@22
    .line 61
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    #@24
    const-string/jumbo v1, "TEXTURE_TYPE"

    #@27
    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    #@2a
    sput-object v0, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    #@2c
    .line 57
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/renderscript/Program$ProgramParam;

    #@2f
    sget-object v1, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 65
    iput p3, p0, Landroid/renderscript/Program$ProgramParam;->mID:I

    #@5
    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/renderscript/Program$ProgramParam;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    const-class v0, Landroid/renderscript/Program$ProgramParam;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/renderscript/Program$ProgramParam;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/renderscript/Program$ProgramParam;
    .locals 1

    #@0
    .prologue
    .line 57
    sget-object v0, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    #@2
    return-object v0
.end method
