.class public final enum Landroid/icu/text/MeasureFormat$FormatWidth;
.super Ljava/lang/Enum;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/MeasureFormat$FormatWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum blacklist DEFAULT_CURRENCY:Landroid/icu/text/MeasureFormat$FormatWidth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist test-api NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum whitelist test-api NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum whitelist test-api SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

.field public static final enum whitelist test-api WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;


# instance fields
.field final blacklist currencyWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

.field final blacklist listWidth:Landroid/icu/text/ListFormatter$Width;

.field final blacklist unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/MeasureFormat$FormatWidth;
    .registers 5

    .line 154
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v4, Landroid/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Landroid/icu/text/MeasureFormat$FormatWidth;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 159
    new-instance v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Landroid/icu/text/ListFormatter$Width;->WIDE:Landroid/icu/text/ListFormatter$Width;

    sget-object v4, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v5, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "WIDE"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Width;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 164
    new-instance v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v4, Landroid/icu/text/ListFormatter$Width;->SHORT:Landroid/icu/text/ListFormatter$Width;

    sget-object v5, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v6, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v2, "SHORT"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Width;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 169
    new-instance v2, Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v5, Landroid/icu/text/ListFormatter$Width;->NARROW:Landroid/icu/text/ListFormatter$Width;

    sget-object v6, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v3, "NARROW"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Width;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v2, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 176
    new-instance v3, Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v6, Landroid/icu/text/ListFormatter$Width;->NARROW:Landroid/icu/text/ListFormatter$Width;

    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v8, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v4, "NUMERIC"

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Width;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 185
    new-instance v4, Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v7, Landroid/icu/text/ListFormatter$Width;->SHORT:Landroid/icu/text/ListFormatter$Width;

    sget-object v8, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v9, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v5, "DEFAULT_CURRENCY"

    const/4 v6, 0x4

    invoke-direct/range {v4 .. v9}, Landroid/icu/text/MeasureFormat$FormatWidth;-><init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Width;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/number/NumberFormatter$UnitWidth;)V

    sput-object v4, Landroid/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 154
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->$values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/text/ListFormatter$Width;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/number/NumberFormatter$UnitWidth;)V
    .registers 6
    .param p3, "listWidth"    # Landroid/icu/text/ListFormatter$Width;
    .param p4, "unitWidth"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .param p5, "currencyWidth"    # Landroid/icu/number/NumberFormatter$UnitWidth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/ListFormatter$Width;",
            "Landroid/icu/number/NumberFormatter$UnitWidth;",
            "Landroid/icu/number/NumberFormatter$UnitWidth;",
            ")V"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 206
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->listWidth:Landroid/icu/text/ListFormatter$Width;

    .line 207
    iput-object p4, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 208
    iput-object p5, p0, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 209
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/MeasureFormat$FormatWidth;
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

    .line 154
    const-class v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/MeasureFormat$FormatWidth;
    .registers 1

    .line 154
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->$VALUES:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, [Landroid/icu/text/MeasureFormat$FormatWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method
