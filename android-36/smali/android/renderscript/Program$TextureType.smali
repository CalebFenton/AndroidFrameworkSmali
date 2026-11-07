.class public final enum Landroid/renderscript/Program$TextureType;
.super Ljava/lang/Enum;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Program;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Program$TextureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Program$TextureType;

.field public static final enum greylist TEXTURE_2D:Landroid/renderscript/Program$TextureType;

.field public static final enum greylist-max-o TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/Program$TextureType;
    .registers 2

    .line 52
    sget-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    filled-new-array {v0, v1}, [Landroid/renderscript/Program$TextureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 53
    new-instance v0, Landroid/renderscript/Program$TextureType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    .line 55
    new-instance v0, Landroid/renderscript/Program$TextureType;

    const-string v1, "TEXTURE_CUBE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Program$TextureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    .line 52
    invoke-static {}, Landroid/renderscript/Program$TextureType;->$values()[Landroid/renderscript/Program$TextureType;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

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

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Landroid/renderscript/Program$TextureType;->mID:I

    .line 60
    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/renderscript/Program$TextureType;
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

    .line 52
    const-class v0, Landroid/renderscript/Program$TextureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Program$TextureType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/renderscript/Program$TextureType;
    .registers 1

    .line 52
    sget-object v0, Landroid/renderscript/Program$TextureType;->$VALUES:[Landroid/renderscript/Program$TextureType;

    invoke-virtual {v0}, [Landroid/renderscript/Program$TextureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Program$TextureType;

    return-object v0
.end method
