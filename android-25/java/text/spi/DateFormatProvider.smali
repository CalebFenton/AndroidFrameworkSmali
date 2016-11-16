.class public abstract Ljava/text/spi/DateFormatProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "DateFormatProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
.end method

.method public abstract getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
.end method

.method public abstract getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
.end method
