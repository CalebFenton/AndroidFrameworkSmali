.class public final enum Landroid/graphics/Paint$Style;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Paint$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Paint$Style;

.field public static final enum whitelist FILL:Landroid/graphics/Paint$Style;

.field public static final enum whitelist FILL_AND_STROKE:Landroid/graphics/Paint$Style;

.field public static final enum whitelist STROKE:Landroid/graphics/Paint$Style;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Paint$Style;
    .registers 3

    .line 571
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    filled-new-array {v0, v1, v2}, [Landroid/graphics/Paint$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 576
    new-instance v0, Landroid/graphics/Paint$Style;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 581
    new-instance v0, Landroid/graphics/Paint$Style;

    const-string v1, "STROKE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 589
    new-instance v0, Landroid/graphics/Paint$Style;

    const-string v1, "FILL_AND_STROKE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 571
    invoke-static {}, Landroid/graphics/Paint$Style;->$values()[Landroid/graphics/Paint$Style;

    move-result-object v0

    sput-object v0, Landroid/graphics/Paint$Style;->$VALUES:[Landroid/graphics/Paint$Style;

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

    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 592
    iput p3, p0, Landroid/graphics/Paint$Style;->nativeInt:I

    .line 593
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Style;
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

    .line 571
    const-class v0, Landroid/graphics/Paint$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Paint$Style;
    .registers 1

    .line 571
    sget-object v0, Landroid/graphics/Paint$Style;->$VALUES:[Landroid/graphics/Paint$Style;

    invoke-virtual {v0}, [Landroid/graphics/Paint$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint$Style;

    return-object v0
.end method
