.class Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
.super Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZNames"
.end annotation


# static fields
.field private static final EMPTY_TZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$TZNames;


# instance fields
.field private _locationName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 510
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    #@6
    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->EMPTY_TZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@8
    .line 507
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "locationName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 546
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    #@3
    .line 547
    iput-object p2, p0, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->_locationName:Ljava/lang/String;

    #@5
    .line 545
    return-void
.end method

.method public static getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$TZNames;
    .locals 5
    .param p0, "zoneStrings"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tzID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 513
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 514
    :cond_0
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->EMPTY_TZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@6
    return-object v4

    #@7
    .line 513
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_0

    #@d
    .line 517
    invoke-static {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->loadData(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    .line 518
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    #@12
    .line 520
    .local v1, "locationName":Ljava/lang/String;
    const/4 v3, 0x0

    #@13
    .line 522
    .local v3, "table":Landroid/icu/impl/ICUResourceBundle;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@16
    move-result-object v3

    #@17
    .line 523
    .local v3, "table":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v4, "ec"

    #@1a
    invoke-virtual {v3, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v1

    #@1e
    .line 528
    .end local v1    # "locationName":Ljava/lang/String;
    .end local v3    # "table":Landroid/icu/impl/ICUResourceBundle;
    :goto_0
    if-nez v1, :cond_2

    #@20
    .line 529
    invoke-static {p2}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 532
    :cond_2
    if-nez v1, :cond_3

    #@26
    if-nez v2, :cond_3

    #@28
    .line 533
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->EMPTY_TZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@2a
    return-object v4

    #@2b
    .line 535
    :cond_3
    new-instance v4, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;

    #@2d
    invoke-direct {v4, v2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    #@30
    return-object v4

    #@31
    .line 524
    .restart local v1    # "locationName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@32
    .local v0, "e":Ljava/util/MissingResourceException;
    goto :goto_0
.end method


# virtual methods
.method public getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Landroid/icu/text/TimeZoneNames$NameType;

    #@0
    .prologue
    .line 539
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 540
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$TZNames;->_locationName:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 542
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method
