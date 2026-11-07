.class public final enum Landroid/icu/number/NumberFormatter$UnitWidth;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnitWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$UnitWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api FORMAL:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

.field public static final enum whitelist test-api VARIANT:Landroid/icu/number/NumberFormatter$UnitWidth;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberFormatter$UnitWidth;
    .registers 7

    .line 145
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v2, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v4, Landroid/icu/number/NumberFormatter$UnitWidth;->FORMAL:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v5, Landroid/icu/number/NumberFormatter$UnitWidth;->VARIANT:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v6, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/number/NumberFormatter$UnitWidth;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 158
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "NARROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->NARROW:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 174
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "SHORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 185
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "FULL_NAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 198
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "ISO_CODE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 209
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "FORMAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->FORMAL:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 220
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "VARIANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->VARIANT:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 229
    new-instance v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    const-string v1, "HIDDEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$UnitWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 145
    invoke-static {}, Landroid/icu/number/NumberFormatter$UnitWidth;->$values()[Landroid/icu/number/NumberFormatter$UnitWidth;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->$VALUES:[Landroid/icu/number/NumberFormatter$UnitWidth;

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

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$UnitWidth;
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

    .line 145
    const-class v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberFormatter$UnitWidth;
    .registers 1

    .line 145
    sget-object v0, Landroid/icu/number/NumberFormatter$UnitWidth;->$VALUES:[Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$UnitWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$UnitWidth;

    return-object v0
.end method
