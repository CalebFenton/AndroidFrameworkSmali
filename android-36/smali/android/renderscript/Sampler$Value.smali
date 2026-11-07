.class public final enum Landroid/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "Sampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Sampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Sampler$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist CLAMP:Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist NEAREST:Landroid/renderscript/Sampler$Value;

.field public static final enum whitelist WRAP:Landroid/renderscript/Sampler$Value;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/renderscript/Sampler$Value;
    .registers 7

    .line 35
    sget-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    sget-object v2, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    sget-object v3, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    sget-object v4, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    sget-object v5, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    sget-object v6, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    filled-new-array/range {v0 .. v6}, [Landroid/renderscript/Sampler$Value;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 36
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "NEAREST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    .line 37
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 38
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR_MIP_LINEAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    .line 39
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "LINEAR_MIP_NEAREST"

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/renderscript/Sampler$Value;

    .line 40
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "WRAP"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    .line 41
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "CLAMP"

    invoke-direct {v0, v1, v3, v4}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    .line 42
    new-instance v0, Landroid/renderscript/Sampler$Value;

    const-string v1, "MIRRORED_REPEAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    .line 35
    invoke-static {}, Landroid/renderscript/Sampler$Value;->$values()[Landroid/renderscript/Sampler$Value;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Landroid/renderscript/Sampler$Value;->mID:I

    .line 47
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/Sampler$Value;
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

    .line 35
    const-class v0, Landroid/renderscript/Sampler$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/Sampler$Value;
    .registers 1

    .line 35
    sget-object v0, Landroid/renderscript/Sampler$Value;->$VALUES:[Landroid/renderscript/Sampler$Value;

    invoke-virtual {v0}, [Landroid/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Sampler$Value;

    return-object v0
.end method
