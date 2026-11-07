.class Landroid/icu/text/DateFormatSymbols$1;
.super Landroid/icu/impl/SoftCache;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1511
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1517
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1518
    .local v1, "typeStart":I
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1519
    .local v0, "typeLimit":I
    if-gez v0, :cond_12

    .line 1521
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1523
    :cond_12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1526
    .local v2, "type":Ljava/lang/String;
    new-instance v3, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v2, v4}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols-IA;)V

    return-object v3
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

    .line 1511
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols$1;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    move-result-object p1

    return-object p1
.end method
