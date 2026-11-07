.class public final enum Landroid/icu/util/TimeZone$SystemTimeZoneType;
.super Ljava/lang/Enum;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemTimeZoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum whitelist test-api ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum whitelist test-api CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

.field public static final enum whitelist test-api CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .registers 3

    .line 220
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    sget-object v1, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    sget-object v2, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/TimeZone$SystemTimeZoneType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 224
    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    .line 229
    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const-string v1, "CANONICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    .line 234
    new-instance v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const-string v1, "CANONICAL_LOCATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/TimeZone$SystemTimeZoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    .line 220
    invoke-static {}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    move-result-object v0

    sput-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

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

    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/util/TimeZone$SystemTimeZoneType;
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

    .line 220
    const-class v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/util/TimeZone$SystemTimeZoneType;
    .registers 1

    .line 220
    sget-object v0, Landroid/icu/util/TimeZone$SystemTimeZoneType;->$VALUES:[Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-virtual {v0}, [Landroid/icu/util/TimeZone$SystemTimeZoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/TimeZone$SystemTimeZoneType;

    return-object v0
.end method
