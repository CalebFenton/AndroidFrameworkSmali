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
        "Ljava/lang/Enum<",
        "Landroid/renderscript/ProgramStore$BlendDstFunc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist-max-o DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist-max-o ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist-max-o ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist-max-o SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist-max-o SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public static final enum greylist ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/ProgramStore$BlendDstFunc;
    .registers 8

    .line 131
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v3, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v4, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v5, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v6, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    sget-object v7, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    filled-new-array/range {v0 .. v7}, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 132
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 134
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 136
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "SRC_COLOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 137
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE_MINUS_SRC_COLOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_COLOR:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 138
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "SRC_ALPHA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 139
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE_MINUS_SRC_ALPHA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 141
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "DST_ALPHA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 142
    new-instance v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    const-string v1, "ONE_MINUS_DST_ALPHA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/ProgramStore$BlendDstFunc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_DST_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 131
    invoke-static {}, Landroid/renderscript/ProgramStore$BlendDstFunc;->$values()[Landroid/renderscript/ProgramStore$BlendDstFunc;

    move-result-object v0

    sput-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

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

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput p3, p0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    .line 147
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/ProgramStore$BlendDstFunc;
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

    .line 131
    const-class v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/ProgramStore$BlendDstFunc;
    .registers 1

    .line 131
    sget-object v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->$VALUES:[Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0}, [Landroid/renderscript/ProgramStore$BlendDstFunc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method
