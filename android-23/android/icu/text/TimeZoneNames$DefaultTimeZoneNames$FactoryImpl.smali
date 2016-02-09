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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 576
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
    .line 585
    sget-object v0, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    #@2
    return-object v0
.end method
