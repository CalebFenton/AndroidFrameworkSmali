.class public final enum Landroid/icu/text/TimeZoneFormat$ParseOption;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$ParseOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum whitelist test-api ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

.field public static final enum whitelist test-api TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/TimeZoneFormat$ParseOption;
    .registers 2

    .line 276
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    filled-new-array {v0, v1}, [Landroid/icu/text/TimeZoneFormat$ParseOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 282
    new-instance v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    const-string v1, "ALL_STYLES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    .line 289
    new-instance v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    const-string v1, "TZ_DATABASE_ABBREVIATIONS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$ParseOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    .line 276
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$ParseOption;->$values()[Landroid/icu/text/TimeZoneFormat$ParseOption;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

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

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$ParseOption;
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

    .line 276
    const-class v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/TimeZoneFormat$ParseOption;
    .registers 1

    .line 276
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->$VALUES:[Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$ParseOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$ParseOption;

    return-object v0
.end method
