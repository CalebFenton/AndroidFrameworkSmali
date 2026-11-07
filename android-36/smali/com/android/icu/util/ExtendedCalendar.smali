.class public Lcom/android/icu/util/ExtendedCalendar;
.super Ljava/lang/Object;
.source "ExtendedCalendar.java"


# instance fields
.field private final blacklist calendar:Landroid/icu/util/Calendar;

.field private final blacklist uLocale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/icu/util/ExtendedCalendar;->uLocale:Landroid/icu/util/ULocale;

    .line 39
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/icu/util/ExtendedCalendar;->calendar:Landroid/icu/util/Calendar;

    .line 40
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/util/ULocale;)Lcom/android/icu/util/ExtendedCalendar;
    .registers 2
    .param p0, "uLocale"    # Landroid/icu/util/ULocale;

    .line 50
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/android/icu/util/ExtendedCalendar;

    invoke-direct {v0, p0}, Lcom/android/icu/util/ExtendedCalendar;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDateTimePattern(II)Ljava/lang/String;
    .registers 5
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .line 65
    iget-object v0, p0, Lcom/android/icu/util/ExtendedCalendar;->uLocale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Lcom/android/icu/util/ExtendedCalendar;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroid/icu/util/Calendar;->getDateTimeFormatString(Landroid/icu/util/ULocale;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
