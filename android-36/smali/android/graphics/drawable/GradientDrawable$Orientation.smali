.class public final enum Landroid/graphics/drawable/GradientDrawable$Orientation;
.super Ljava/lang/Enum;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public static final enum whitelist TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 8

    .line 224
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array/range {v0 .. v7}, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 226
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TOP_BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 228
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TR_BL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 230
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "RIGHT_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 232
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "BR_TL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 234
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "BOTTOM_TOP"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 236
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "BL_TR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 238
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "LEFT_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 240
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v1, "TL_BR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 224
    invoke-static {}, Landroid/graphics/drawable/GradientDrawable$Orientation;->$values()[Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

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

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;
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

    .line 224
    const-class v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 1

    .line 224
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->$VALUES:[Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0}, [Landroid/graphics/drawable/GradientDrawable$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method
