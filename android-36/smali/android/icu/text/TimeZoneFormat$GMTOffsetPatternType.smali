.class public final enum Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GMTOffsetPatternType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum whitelist test-api NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum whitelist test-api NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum whitelist test-api NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum whitelist test-api POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum whitelist test-api POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum whitelist test-api POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;


# instance fields
.field private greylist-max-o _defaultPattern:Ljava/lang/String;

.field private greylist-max-o _isPositive:Z

.field private greylist-max-o _required:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .registers 6

    .line 205
    sget-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    sget-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$mdefaultPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->defaultPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misPositive(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->isPositive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrequired(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->required()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 209
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v4, "Hm"

    const/4 v5, 0x1

    const-string v1, "POSITIVE_HM"

    const/4 v2, 0x0

    const-string v3, "+H:mm"

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 213
    new-instance v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v5, "Hms"

    const/4 v6, 0x1

    const-string v2, "POSITIVE_HMS"

    const/4 v3, 0x1

    const-string v4, "+H:mm:ss"

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 217
    new-instance v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v6, "Hm"

    const/4 v7, 0x0

    const-string v3, "NEGATIVE_HM"

    const/4 v4, 0x2

    const-string v5, "-H:mm"

    invoke-direct/range {v2 .. v7}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 221
    new-instance v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v7, "Hms"

    const/4 v8, 0x0

    const-string v4, "NEGATIVE_HMS"

    const/4 v5, 0x3

    const-string v6, "-H:mm:ss"

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 225
    new-instance v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "H"

    const/4 v9, 0x1

    const-string v5, "POSITIVE_H"

    const/4 v6, 0x4

    const-string v7, "+H"

    invoke-direct/range {v4 .. v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 229
    new-instance v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v9, "H"

    const/4 v10, 0x0

    const-string v6, "NEGATIVE_H"

    const/4 v7, 0x5

    const-string v8, "-H"

    invoke-direct/range {v5 .. v10}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 205
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p3, "defaultPattern"    # Ljava/lang/String;
    .param p4, "required"    # Ljava/lang/String;
    .param p5, "isPositive"    # Z
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 236
    iput-object p3, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    .line 237
    iput-object p4, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    .line 238
    iput-boolean p5, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    .line 239
    return-void
.end method

.method private greylist-max-o defaultPattern()Ljava/lang/String;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o isPositive()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    return v0
.end method

.method private greylist-max-o required()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
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

    .line 205
    const-class v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .registers 1

    .line 205
    sget-object v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object v0
.end method
