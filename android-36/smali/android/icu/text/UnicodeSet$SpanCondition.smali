.class public final enum Landroid/icu/text/UnicodeSet$SpanCondition;
.super Ljava/lang/Enum;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpanCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSet$SpanCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum whitelist test-api CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum whitelist test-api CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum whitelist test-api NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum whitelist test-api SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/UnicodeSet$SpanCondition;
    .registers 4

    .line 4941
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/UnicodeSet$SpanCondition;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4951
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const-string v1, "NOT_CONTAINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4965
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const-string v1, "CONTAINED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4983
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const-string v1, "SIMPLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4988
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const-string v1, "CONDITION_COUNT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4941
    invoke-static {}, Landroid/icu/text/UnicodeSet$SpanCondition;->$values()[Landroid/icu/text/UnicodeSet$SpanCondition;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

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

    .line 4941
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSet$SpanCondition;
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

    .line 4941
    const-class v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/UnicodeSet$SpanCondition;
    .registers 1

    .line 4941
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSet$SpanCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSet$SpanCondition;

    return-object v0
.end method
