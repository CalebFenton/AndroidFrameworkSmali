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
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Program$ProgramParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Program$ProgramParam;

.field public static final enum greylist-max-o CONSTANT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum greylist-max-o INPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum greylist-max-o OUTPUT:Landroid/renderscript/Program$ProgramParam;

.field public static final enum greylist-max-o TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/Program$ProgramParam;
    .registers 4

    .line 63
    sget-object v0, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    sget-object v1, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    sget-object v2, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    sget-object v3, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    filled-new-array {v0, v1, v2, v3}, [Landroid/renderscript/Program$ProgramParam;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    .line 65
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "OUTPUT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    .line 66
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "CONSTANT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    .line 67
    new-instance v0, Landroid/renderscript/Program$ProgramParam;

    const-string v1, "TEXTURE_TYPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$ProgramParam;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    .line 63
    invoke-static {}, Landroid/renderscript/Program$ProgramParam;->$values()[Landroid/renderscript/Program$ProgramParam;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Landroid/renderscript/Program$ProgramParam;->mID:I

    .line 72
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/Program$ProgramParam;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    const-class v0, Landroid/renderscript/Program$ProgramParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Program$ProgramParam;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/Program$ProgramParam;
    .registers 1

    .line 63
    sget-object v0, Landroid/renderscript/Program$ProgramParam;->$VALUES:[Landroid/renderscript/Program$ProgramParam;

    invoke-virtual {v0}, [Landroid/renderscript/Program$ProgramParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Program$ProgramParam;

    return-object v0
.end method
