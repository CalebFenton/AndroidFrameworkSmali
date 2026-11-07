.class public final enum Landroid/graphics/BlurMaskFilter$Blur;
.super Ljava/lang/Enum;
.source "BlurMaskFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BlurMaskFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Blur"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlurMaskFilter$Blur;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist INNER:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist OUTER:Landroid/graphics/BlurMaskFilter$Blur;

.field public static final enum whitelist SOLID:Landroid/graphics/BlurMaskFilter$Blur;


# instance fields
.field final greylist-max-o native_int:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/BlurMaskFilter$Blur;
    .registers 4

    .line 28
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    filled-new-array {v0, v1, v2, v3}, [Landroid/graphics/BlurMaskFilter$Blur;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 37
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v1, "SOLID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    .line 42
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v1, "OUTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 47
    new-instance v0, Landroid/graphics/BlurMaskFilter$Blur;

    const-string v1, "INNER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlurMaskFilter$Blur;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 28
    invoke-static {}, Landroid/graphics/BlurMaskFilter$Blur;->$values()[Landroid/graphics/BlurMaskFilter$Blur;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlurMaskFilter$Blur;->$VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Landroid/graphics/BlurMaskFilter$Blur;->native_int:I

    .line 51
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/BlurMaskFilter$Blur;
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

    .line 28
    const-class v0, Landroid/graphics/BlurMaskFilter$Blur;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlurMaskFilter$Blur;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/BlurMaskFilter$Blur;
    .registers 1

    .line 28
    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->$VALUES:[Landroid/graphics/BlurMaskFilter$Blur;

    invoke-virtual {v0}, [Landroid/graphics/BlurMaskFilter$Blur;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlurMaskFilter$Blur;

    return-object v0
.end method
