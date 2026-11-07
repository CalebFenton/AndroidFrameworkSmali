.class public final enum Landroid/graphics/ColorSpace$RenderIntent;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$RenderIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist SATURATION:Landroid/graphics/ColorSpace$RenderIntent;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/ColorSpace$RenderIntent;
    .registers 4

    .line 820
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v2, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    sget-object v3, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/ColorSpace$RenderIntent;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 830
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "PERCEPTUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    .line 836
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "RELATIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 845
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "SATURATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    .line 852
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "ABSOLUTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 820
    invoke-static {}, Landroid/graphics/ColorSpace$RenderIntent;->$values()[Landroid/graphics/ColorSpace$RenderIntent;

    move-result-object v0

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 820
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$RenderIntent;
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

    .line 820
    const-class v0, Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/ColorSpace$RenderIntent;
    .registers 1

    .line 820
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$RenderIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method
