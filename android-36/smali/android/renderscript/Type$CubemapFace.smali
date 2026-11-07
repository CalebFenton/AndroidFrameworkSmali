.class public final enum Landroid/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CubemapFace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Type$CubemapFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

.field public static final enum whitelist POSITVE_X:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist POSITVE_Y:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist POSITVE_Z:Landroid/renderscript/Type$CubemapFace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/Type$CubemapFace;
    .registers 9

    .line 64
    sget-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    sget-object v1, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    sget-object v2, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    sget-object v3, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    sget-object v4, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    sget-object v5, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    sget-object v6, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    sget-object v7, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    sget-object v8, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    filled-new-array/range {v0 .. v8}, [Landroid/renderscript/Type$CubemapFace;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 65
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 66
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_X"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 67
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_Y"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 68
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Y"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 69
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITIVE_Z"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 70
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "NEGATIVE_Z"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v5}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 71
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITVE_X"

    const/4 v5, 0x6

    invoke-direct {v0, v1, v5, v2}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_X:Landroid/renderscript/Type$CubemapFace;

    .line 73
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITVE_Y"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_Y:Landroid/renderscript/Type$CubemapFace;

    .line 75
    new-instance v0, Landroid/renderscript/Type$CubemapFace;

    const-string v1, "POSITVE_Z"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Landroid/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->POSITVE_Z:Landroid/renderscript/Type$CubemapFace;

    .line 64
    invoke-static {}, Landroid/renderscript/Type$CubemapFace;->$values()[Landroid/renderscript/Type$CubemapFace;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 81
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/Type$CubemapFace;
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

    .line 64
    const-class v0, Landroid/renderscript/Type$CubemapFace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Type$CubemapFace;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/Type$CubemapFace;
    .registers 1

    .line 64
    sget-object v0, Landroid/renderscript/Type$CubemapFace;->$VALUES:[Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v0}, [Landroid/renderscript/Type$CubemapFace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Type$CubemapFace;

    return-object v0
.end method
