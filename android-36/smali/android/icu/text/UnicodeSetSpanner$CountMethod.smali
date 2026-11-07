.class public final enum Landroid/icu/text/UnicodeSetSpanner$CountMethod;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSetSpanner$CountMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

.field public static final enum whitelist test-api MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

.field public static final enum whitelist test-api WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .registers 2

    .line 89
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    filled-new-array {v0, v1}, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 94
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    const-string v1, "WHOLE_SPAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    .line 106
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    const-string v1, "MIN_ELEMENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    .line 89
    invoke-static {}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$values()[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner$CountMethod;
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
    const-class v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .registers 1

    .line 89
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    return-object v0
.end method
