.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$Style;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field private static final greylist-max-o INDEX_COUNT:I = 0x3

.field public static final enum whitelist test-api LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum whitelist test-api NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field public static final enum whitelist test-api SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .registers 3

    .line 89
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v2, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 94
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const-string v1, "LONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 99
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const-string v1, "SHORT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 104
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const-string v1, "NARROW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 89
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

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

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
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

    .line 89
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .registers 1

    .line 89
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method
