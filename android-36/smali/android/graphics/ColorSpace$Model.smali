.class public final enum Landroid/graphics/ColorSpace$Model;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist CMYK:Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist LAB:Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist RGB:Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist XYZ:Landroid/graphics/ColorSpace$Model;


# instance fields
.field private final greylist-max-o mComponentCount:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/ColorSpace$Model;
    .registers 4

    .line 934
    sget-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    sget-object v1, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    sget-object v2, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    sget-object v3, Landroid/graphics/ColorSpace$Model;->CMYK:Landroid/graphics/ColorSpace$Model;

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 940
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "RGB"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 946
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "XYZ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    .line 952
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "LAB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    .line 959
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "CMYK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->CMYK:Landroid/graphics/ColorSpace$Model;

    .line 934
    invoke-static {}, Landroid/graphics/ColorSpace$Model;->$values()[Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sput-object v0, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "componentCount"    # I
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

    .line 963
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 964
    iput p3, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    .line 965
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Model;
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

    .line 934
    const-class v0, Landroid/graphics/ColorSpace$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/ColorSpace$Model;
    .registers 1

    .line 934
    sget-object v0, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method


# virtual methods
.method public whitelist getComponentCount()I
    .registers 2

    .line 974
    iget v0, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    return v0
.end method
