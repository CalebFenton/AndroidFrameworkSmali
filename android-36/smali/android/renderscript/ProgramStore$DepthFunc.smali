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
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramStore$DepthFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist-max-o EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist-max-o GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist-max-o GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist LESS:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist-max-o LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

.field public static final enum greylist-max-o NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/ProgramStore$DepthFunc;
    .registers 7

    .line 50
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$DepthFunc;->LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v4, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v5, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    sget-object v6, Landroid/renderscript/ProgramStore$DepthFunc;->NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    filled-new-array/range {v0 .. v6}, [Landroid/renderscript/ProgramStore$DepthFunc;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 55
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 61
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "LESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 67
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "LESS_OR_EQUAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->LESS_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 72
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "GREATER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 77
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "GREATER_OR_EQUAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->GREATER_OR_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 82
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "EQUAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 87
    new-instance v0, Landroid/renderscript/ProgramStore$DepthFunc;

    const-string v1, "NOT_EQUAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$DepthFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->NOT_EQUAL:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 50
    invoke-static {}, Landroid/renderscript/ProgramStore$DepthFunc;->$values()[Landroid/renderscript/ProgramStore$DepthFunc;

    move-result-object v0

    sput-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

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

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    .line 92
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$DepthFunc;
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

    .line 50
    const-class v0, Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/ProgramStore$DepthFunc;
    .registers 1

    .line 50
    sget-object v0, Landroid/renderscript/ProgramStore$DepthFunc;->$VALUES:[Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$DepthFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method
