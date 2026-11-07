.class public final enum Landroid/icu/text/BidiTransform$Order;
.super Ljava/lang/Enum;
.source "BidiTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BidiTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/BidiTransform$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/BidiTransform$Order;

.field public static final enum greylist-max-o LOGICAL:Landroid/icu/text/BidiTransform$Order;

.field public static final enum greylist-max-o VISUAL:Landroid/icu/text/BidiTransform$Order;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/BidiTransform$Order;
    .registers 2

    .line 57
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->LOGICAL:Landroid/icu/text/BidiTransform$Order;

    sget-object v1, Landroid/icu/text/BidiTransform$Order;->VISUAL:Landroid/icu/text/BidiTransform$Order;

    filled-new-array {v0, v1}, [Landroid/icu/text/BidiTransform$Order;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/icu/text/BidiTransform$Order;

    const-string v1, "LOGICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BidiTransform$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Order;->LOGICAL:Landroid/icu/text/BidiTransform$Order;

    .line 65
    new-instance v0, Landroid/icu/text/BidiTransform$Order;

    const-string v1, "VISUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/BidiTransform$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/BidiTransform$Order;->VISUAL:Landroid/icu/text/BidiTransform$Order;

    .line 57
    invoke-static {}, Landroid/icu/text/BidiTransform$Order;->$values()[Landroid/icu/text/BidiTransform$Order;

    move-result-object v0

    sput-object v0, Landroid/icu/text/BidiTransform$Order;->$VALUES:[Landroid/icu/text/BidiTransform$Order;

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

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/BidiTransform$Order;
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

    .line 57
    const-class v0, Landroid/icu/text/BidiTransform$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BidiTransform$Order;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/BidiTransform$Order;
    .registers 1

    .line 57
    sget-object v0, Landroid/icu/text/BidiTransform$Order;->$VALUES:[Landroid/icu/text/BidiTransform$Order;

    invoke-virtual {v0}, [Landroid/icu/text/BidiTransform$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/BidiTransform$Order;

    return-object v0
.end method
