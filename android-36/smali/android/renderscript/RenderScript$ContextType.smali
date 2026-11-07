.class public final enum Landroid/renderscript/RenderScript$ContextType;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/RenderScript$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/RenderScript$ContextType;

.field public static final enum whitelist DEBUG:Landroid/renderscript/RenderScript$ContextType;

.field public static final enum whitelist NORMAL:Landroid/renderscript/RenderScript$ContextType;

.field public static final enum whitelist PROFILE:Landroid/renderscript/RenderScript$ContextType;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/RenderScript$ContextType;
    .registers 3

    .line 185
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    sget-object v1, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    sget-object v2, Landroid/renderscript/RenderScript$ContextType;->PROFILE:Landroid/renderscript/RenderScript$ContextType;

    filled-new-array {v0, v1, v2}, [Landroid/renderscript/RenderScript$ContextType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 190
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    .line 197
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->DEBUG:Landroid/renderscript/RenderScript$ContextType;

    .line 204
    new-instance v0, Landroid/renderscript/RenderScript$ContextType;

    const-string v1, "PROFILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->PROFILE:Landroid/renderscript/RenderScript$ContextType;

    .line 185
    invoke-static {}, Landroid/renderscript/RenderScript$ContextType;->$values()[Landroid/renderscript/RenderScript$ContextType;

    move-result-object v0

    sput-object v0, Landroid/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/renderscript/RenderScript$ContextType;

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

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 208
    iput p3, p0, Landroid/renderscript/RenderScript$ContextType;->mID:I

    .line 209
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/RenderScript$ContextType;
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

    .line 185
    const-class v0, Landroid/renderscript/RenderScript$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/RenderScript$ContextType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/RenderScript$ContextType;
    .registers 1

    .line 185
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/renderscript/RenderScript$ContextType;

    invoke-virtual {v0}, [Landroid/renderscript/RenderScript$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/RenderScript$ContextType;

    return-object v0
.end method
