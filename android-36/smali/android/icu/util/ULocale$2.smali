.class Landroid/icu/util/ULocale$2;
.super Landroid/icu/impl/SoftCache;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/util/Locale;",
        "Landroid/icu/util/ULocale;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/util/Locale;Ljava/lang/Void;)Landroid/icu/util/ULocale;
    .registers 4
    .param p1, "key"    # Ljava/util/Locale;
    .param p2, "unused"    # Ljava/lang/Void;

    .line 316
    invoke-static {p1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic blacklist createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 313
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/ULocale$2;->createInstance(Ljava/util/Locale;Ljava/lang/Void;)Landroid/icu/util/ULocale;

    move-result-object p1

    return-object p1
.end method
