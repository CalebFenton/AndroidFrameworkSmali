.class public Landroid/icu/impl/TimeZoneNamesFactoryImpl;
.super Landroid/icu/text/TimeZoneNames$Factory;
.source "TimeZoneNamesFactoryImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 27
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-direct {v0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method
