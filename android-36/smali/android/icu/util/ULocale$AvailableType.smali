.class public final enum Landroid/icu/util/ULocale$AvailableType;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvailableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/ULocale$AvailableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/ULocale$AvailableType;

.field public static final enum whitelist test-api DEFAULT:Landroid/icu/util/ULocale$AvailableType;

.field public static final enum whitelist test-api ONLY_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

.field public static final enum whitelist test-api WITH_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/ULocale$AvailableType;
    .registers 3

    .line 119
    sget-object v0, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    sget-object v1, Landroid/icu/util/ULocale$AvailableType;->ONLY_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    sget-object v2, Landroid/icu/util/ULocale$AvailableType;->WITH_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/ULocale$AvailableType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 124
    new-instance v0, Landroid/icu/util/ULocale$AvailableType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$AvailableType;->DEFAULT:Landroid/icu/util/ULocale$AvailableType;

    .line 142
    new-instance v0, Landroid/icu/util/ULocale$AvailableType;

    const-string v1, "ONLY_LEGACY_ALIASES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$AvailableType;->ONLY_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    .line 147
    new-instance v0, Landroid/icu/util/ULocale$AvailableType;

    const-string v1, "WITH_LEGACY_ALIASES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$AvailableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$AvailableType;->WITH_LEGACY_ALIASES:Landroid/icu/util/ULocale$AvailableType;

    .line 119
    invoke-static {}, Landroid/icu/util/ULocale$AvailableType;->$values()[Landroid/icu/util/ULocale$AvailableType;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$AvailableType;->$VALUES:[Landroid/icu/util/ULocale$AvailableType;

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

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/util/ULocale$AvailableType;
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

    .line 119
    const-class v0, Landroid/icu/util/ULocale$AvailableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale$AvailableType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/util/ULocale$AvailableType;
    .registers 1

    .line 119
    sget-object v0, Landroid/icu/util/ULocale$AvailableType;->$VALUES:[Landroid/icu/util/ULocale$AvailableType;

    invoke-virtual {v0}, [Landroid/icu/util/ULocale$AvailableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale$AvailableType;

    return-object v0
.end method
