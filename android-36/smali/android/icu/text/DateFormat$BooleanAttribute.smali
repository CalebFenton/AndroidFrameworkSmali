.class public final enum Landroid/icu/text/DateFormat$BooleanAttribute;
.super Ljava/lang/Enum;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateFormat$BooleanAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum whitelist test-api PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum whitelist test-api PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum whitelist test-api PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum whitelist test-api PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

.field public static final enum greylist-max-o PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DateFormat$BooleanAttribute;
    .registers 5

    .line 462
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    sget-object v2, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    sget-object v3, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    sget-object v4, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/icu/text/DateFormat$BooleanAttribute;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 466
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const-string v1, "PARSE_ALLOW_WHITESPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 471
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const-string v1, "PARSE_ALLOW_NUMERIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 476
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const-string v1, "PARSE_MULTIPLE_PATTERNS_FOR_MATCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 481
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const-string v1, "PARSE_PARTIAL_LITERAL_MATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 487
    new-instance v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    const-string v1, "PARSE_PARTIAL_MATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DateFormat$BooleanAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    .line 462
    invoke-static {}, Landroid/icu/text/DateFormat$BooleanAttribute;->$values()[Landroid/icu/text/DateFormat$BooleanAttribute;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

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

    .line 462
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormat$BooleanAttribute;
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

    .line 462
    const-class v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat$BooleanAttribute;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DateFormat$BooleanAttribute;
    .registers 1

    .line 462
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->$VALUES:[Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v0}, [Landroid/icu/text/DateFormat$BooleanAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateFormat$BooleanAttribute;

    return-object v0
.end method
