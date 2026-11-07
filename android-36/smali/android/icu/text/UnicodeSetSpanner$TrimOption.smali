.class public final enum Landroid/icu/text/UnicodeSetSpanner$TrimOption;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrimOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSetSpanner$TrimOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum whitelist test-api BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum whitelist test-api LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum whitelist test-api TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .registers 3

    .line 284
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    sget-object v2, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 288
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const-string v1, "LEADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 292
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const-string v1, "BOTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 296
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    const-string v1, "TRAILING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    .line 284
    invoke-static {}, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$values()[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

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

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner$TrimOption;
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

    .line 284
    const-class v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/UnicodeSetSpanner$TrimOption;
    .registers 1

    .line 284
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    return-object v0
.end method
