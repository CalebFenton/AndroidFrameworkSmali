.class public final enum Landroid/icu/text/LocaleDisplayNames$DialectHandling;
.super Ljava/lang/Enum;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialectHandling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/LocaleDisplayNames$DialectHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum whitelist test-api DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum whitelist test-api STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .registers 2

    .line 35
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    filled-new-array {v0, v1}, [Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    const-string v1, "STANDARD_NAMES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 45
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    const-string v1, "DIALECT_NAMES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 35
    invoke-static {}, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->$values()[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    move-result-object v0

    sput-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/LocaleDisplayNames$DialectHandling;
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
    const-class v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .registers 1

    .line 35
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-virtual {v0}, [Landroid/icu/text/LocaleDisplayNames$DialectHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method
