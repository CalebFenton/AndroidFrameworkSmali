.class public Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;
.super Landroid/icu/text/TimeZoneNames$Factory;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryImpl"
.end annotation


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 582
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Factory;-><init>()V

    .line 583
    return-void
.end method


# virtual methods
.method public greylist-max-o getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 592
    sget-object v0, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    return-object v0
.end method
