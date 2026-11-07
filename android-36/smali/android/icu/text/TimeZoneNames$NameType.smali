.class public final enum Landroid/icu/text/TimeZoneNames$NameType;
.super Ljava/lang/Enum;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneNames$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

.field public static final enum whitelist test-api SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/TimeZoneNames$NameType;
    .registers 7

    .line 85
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 89
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "LONG_GENERIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 93
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "LONG_STANDARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 97
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "LONG_DAYLIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 101
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "SHORT_GENERIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 105
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "SHORT_STANDARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 109
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "SHORT_DAYLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 113
    new-instance v0, Landroid/icu/text/TimeZoneNames$NameType;

    const-string v1, "EXEMPLAR_LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    .line 85
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->$values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneNames$NameType;
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

    .line 85
    const-class v0, Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/TimeZoneNames$NameType;
    .registers 1

    .line 85
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->$VALUES:[Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneNames$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method
