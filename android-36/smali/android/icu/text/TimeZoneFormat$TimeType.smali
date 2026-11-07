.class public final enum Landroid/icu/text/TimeZoneFormat$TimeType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$TimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum whitelist test-api DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum whitelist test-api STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

.field public static final enum whitelist test-api UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/TimeZoneFormat$TimeType;
    .registers 3

    .line 258
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 262
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 266
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    const-string v1, "STANDARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 270
    new-instance v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    const-string v1, "DAYLIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 258
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$TimeType;->$values()[Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$TimeType;
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
    const-class v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/TimeZoneFormat$TimeType;
    .registers 1

    .line 258
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->$VALUES:[Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$TimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object v0
.end method
