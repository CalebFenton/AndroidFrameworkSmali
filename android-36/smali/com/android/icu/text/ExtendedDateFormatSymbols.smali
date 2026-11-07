.class public Lcom/android/icu/text/ExtendedDateFormatSymbols;
.super Ljava/lang/Object;
.source "ExtendedDateFormatSymbols.java"


# instance fields
.field private final blacklist aospExtendedDfs:Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V
    .registers 2
    .param p1, "extendedDfs"    # Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/icu/text/ExtendedDateFormatSymbols;->aospExtendedDfs:Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    .line 37
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/text/ExtendedDateFormatSymbols;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 45
    new-instance v0, Lcom/android/icu/text/ExtendedDateFormatSymbols;

    invoke-static {p0}, Landroid/icu/text/DateFormatSymbols;->getExtendedInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/icu/text/ExtendedDateFormatSymbols;-><init>(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/icu/text/ExtendedDateFormatSymbols;->aospExtendedDfs:Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNarrowQuarters(I)[Ljava/lang/String;
    .registers 3
    .param p1, "context"    # I

    .line 66
    iget-object v0, p0, Lcom/android/icu/text/ExtendedDateFormatSymbols;->aospExtendedDfs:Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    invoke-virtual {v0, p1}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->getNarrowQuarters(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
