.class Landroid/icu/text/DecimalFormatSymbols$1;
.super Landroid/icu/impl/SoftCache;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Landroid/icu/util/ULocale;",
        "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1890
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "unused"    # Ljava/lang/Void;

    .line 1893
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->-$$Nest$smloadData(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

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

    .line 1890
    check-cast p1, Landroid/icu/util/ULocale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols$1;->createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p1

    return-object p1
.end method
