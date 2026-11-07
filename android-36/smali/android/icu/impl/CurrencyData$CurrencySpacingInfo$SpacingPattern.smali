.class public final enum Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
.super Ljava/lang/Enum;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpacingPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final enum blacklist COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum blacklist CURRENCY_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum blacklist INSERT_BETWEEN:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum blacklist SURROUNDING_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .registers 4

    .line 79
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    sget-object v3, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    const-class v0, Landroid/icu/impl/CurrencyData;

    .line 80
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v1, "CURRENCY_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 81
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v1, "SURROUNDING_MATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 82
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v1, "INSERT_BETWEEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 83
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string v1, "COUNT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 79
    invoke-static {}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
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

    .line 79
    const-class v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .registers 1

    .line 79
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v0}, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-object v0
.end method
