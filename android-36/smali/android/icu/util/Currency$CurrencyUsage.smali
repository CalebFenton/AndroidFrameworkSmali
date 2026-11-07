.class public final enum Landroid/icu/util/Currency$CurrencyUsage;
.super Ljava/lang/Enum;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CurrencyUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/Currency$CurrencyUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/Currency$CurrencyUsage;

.field public static final enum whitelist test-api CASH:Landroid/icu/util/Currency$CurrencyUsage;

.field public static final enum whitelist test-api STANDARD:Landroid/icu/util/Currency$CurrencyUsage;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/Currency$CurrencyUsage;
    .registers 2

    .line 117
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    filled-new-array {v0, v1}, [Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 122
    new-instance v0, Landroid/icu/util/Currency$CurrencyUsage;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    .line 128
    new-instance v0, Landroid/icu/util/Currency$CurrencyUsage;

    const-string v1, "CASH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Currency$CurrencyUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    .line 117
    invoke-static {}, Landroid/icu/util/Currency$CurrencyUsage;->$values()[Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Currency$CurrencyUsage;->$VALUES:[Landroid/icu/util/Currency$CurrencyUsage;

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

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/util/Currency$CurrencyUsage;
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

    .line 117
    const-class v0, Landroid/icu/util/Currency$CurrencyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/util/Currency$CurrencyUsage;
    .registers 1

    .line 117
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->$VALUES:[Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v0}, [Landroid/icu/util/Currency$CurrencyUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method
