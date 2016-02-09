.class public Landroid/icu/impl/TimeZoneNamesFactoryImpl;
.super Landroid/icu/text/TimeZoneNames$Factory;
.source "TimeZoneNamesFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Factory;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 23
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method
