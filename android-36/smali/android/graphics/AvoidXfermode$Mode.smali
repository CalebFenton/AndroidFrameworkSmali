.class public final enum Landroid/graphics/AvoidXfermode$Mode;
.super Ljava/lang/Enum;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/AvoidXfermode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/AvoidXfermode$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/AvoidXfermode$Mode;

.field public static final enum greylist AVOID:Landroid/graphics/AvoidXfermode$Mode;

.field public static final enum greylist TARGET:Landroid/graphics/AvoidXfermode$Mode;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/AvoidXfermode$Mode;
    .registers 2

    .line 30
    sget-object v0, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    sget-object v1, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    filled-new-array {v0, v1}, [Landroid/graphics/AvoidXfermode$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Landroid/graphics/AvoidXfermode$Mode;

    const-string v1, "AVOID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/AvoidXfermode$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    .line 32
    new-instance v0, Landroid/graphics/AvoidXfermode$Mode;

    const-string v1, "TARGET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/AvoidXfermode$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    .line 30
    invoke-static {}, Landroid/graphics/AvoidXfermode$Mode;->$values()[Landroid/graphics/AvoidXfermode$Mode;

    move-result-object v0

    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->$VALUES:[Landroid/graphics/AvoidXfermode$Mode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "nativeInt"    # I
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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Landroid/graphics/AvoidXfermode$Mode;->nativeInt:I

    .line 36
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/graphics/AvoidXfermode$Mode;
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

    .line 30
    const-class v0, Landroid/graphics/AvoidXfermode$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/AvoidXfermode$Mode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/graphics/AvoidXfermode$Mode;
    .registers 1

    .line 30
    sget-object v0, Landroid/graphics/AvoidXfermode$Mode;->$VALUES:[Landroid/graphics/AvoidXfermode$Mode;

    invoke-virtual {v0}, [Landroid/graphics/AvoidXfermode$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/AvoidXfermode$Mode;

    return-object v0
.end method
