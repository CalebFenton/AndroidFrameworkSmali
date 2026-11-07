.class public final enum Landroid/icu/util/ULocale$Category;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/ULocale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/ULocale$Category;

.field public static final enum whitelist test-api DISPLAY:Landroid/icu/util/ULocale$Category;

.field public static final enum whitelist test-api FORMAT:Landroid/icu/util/ULocale$Category;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/ULocale$Category;
    .registers 2

    .line 302
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    filled-new-array {v0, v1}, [Landroid/icu/util/ULocale$Category;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 306
    new-instance v0, Landroid/icu/util/ULocale$Category;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    .line 310
    new-instance v0, Landroid/icu/util/ULocale$Category;

    const-string v1, "FORMAT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    .line 302
    invoke-static {}, Landroid/icu/util/ULocale$Category;->$values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$Category;->$VALUES:[Landroid/icu/util/ULocale$Category;

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

    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/util/ULocale$Category;
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

    .line 302
    const-class v0, Landroid/icu/util/ULocale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale$Category;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/util/ULocale$Category;
    .registers 1

    .line 302
    sget-object v0, Landroid/icu/util/ULocale$Category;->$VALUES:[Landroid/icu/util/ULocale$Category;

    invoke-virtual {v0}, [Landroid/icu/util/ULocale$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale$Category;

    return-object v0
.end method
