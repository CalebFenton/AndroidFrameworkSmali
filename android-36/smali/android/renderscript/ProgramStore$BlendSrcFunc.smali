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
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramStore$BlendSrcFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public static final enum greylist-max-o ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .registers 9

    .line 103
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v4, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v5, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v6, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v7, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v8, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    filled-new-array/range {v0 .. v8}, [Landroid/renderscript/ProgramStore$BlendSrcFunc;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 104
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 105
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 107
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "DST_COLOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 108
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE_MINUS_DST_COLOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_COLOR:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 109
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "SRC_ALPHA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 111
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE_MINUS_SRC_ALPHA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 112
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "DST_ALPHA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 113
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "ONE_MINUS_DST_ALPHA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 114
    new-instance v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    const-string v1, "SRC_ALPHA_SATURATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendSrcFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA_SATURATE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 103
    invoke-static {}, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$values()[Landroid/renderscript/ProgramStore$BlendSrcFunc;

    move-result-object v0

    sput-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

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

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    .line 119
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendSrcFunc;
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

    .line 103
    const-class v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .registers 1

    .line 103
    sget-object v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendSrcFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$BlendSrcFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method
