.class public final enum Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
.super Ljava/lang/Enum;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

.field public static final enum whitelist test-api ABBREVIATED:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

.field private static blacklist COUNT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist test-api NARROW:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

.field public static final enum whitelist test-api WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;


# instance fields
.field private final blacklist cldrKey:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
    .registers 3

    .line 1276
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    sget-object v2, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$mcldrKey(Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->cldrKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCOUNT()I
    .registers 1

    sget v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->COUNT:I

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1280
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "WIDE"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1285
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    const/4 v1, 0x1

    const-string v2, "-short"

    const-string v3, "ABBREVIATED"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1290
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    const/4 v1, 0x2

    const-string v2, "-narrow"

    const-string v3, "NARROW"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1276
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->$values()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1297
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->values()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v0

    array-length v0, v0

    sput v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->COUNT:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "cldrKey"    # Ljava/lang/String;
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1300
    iput-object p3, p0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->cldrKey:Ljava/lang/String;

    .line 1301
    return-void
.end method

.method private blacklist cldrKey()Ljava/lang/String;
    .registers 2

    .line 1303
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->cldrKey:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
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

    .line 1276
    const-class v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;
    .registers 1

    .line 1276
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {v0}, [Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateTimePatternGenerator$DisplayWidth;

    return-object v0
.end method
