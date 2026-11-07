.class public final enum Landroid/icu/number/NumberFormatter$GroupingStrategy;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$GroupingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum whitelist test-api AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum whitelist test-api MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum whitelist test-api OFF:Landroid/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum whitelist test-api ON_ALIGNED:Landroid/icu/number/NumberFormatter$GroupingStrategy;

.field public static final enum whitelist test-api THOUSANDS:Landroid/icu/number/NumberFormatter$GroupingStrategy;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberFormatter$GroupingStrategy;
    .registers 5

    .line 258
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->OFF:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    sget-object v1, Landroid/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    sget-object v2, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    sget-object v3, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    sget-object v4, Landroid/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 264
    new-instance v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->OFF:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 280
    new-instance v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    const-string v1, "MIN2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 295
    new-instance v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 311
    new-instance v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    const-string v1, "ON_ALIGNED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 319
    new-instance v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    const-string v1, "THOUSANDS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$GroupingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    .line 258
    invoke-static {}, Landroid/icu/number/NumberFormatter$GroupingStrategy;->$values()[Landroid/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->$VALUES:[Landroid/icu/number/NumberFormatter$GroupingStrategy;

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

    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$GroupingStrategy;
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

    .line 258
    const-class v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberFormatter$GroupingStrategy;
    .registers 1

    .line 258
    sget-object v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;->$VALUES:[Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$GroupingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$GroupingStrategy;

    return-object v0
.end method
