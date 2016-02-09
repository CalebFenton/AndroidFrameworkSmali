.class Ljava/util/Formatter$CachedDecimalFormat;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDecimalFormat"
.end annotation


# instance fields
.field public currentLocaleData:Llibcore/icu/LocaleData;

.field public currentPattern:Ljava/lang/String;

.field public decimalFormat:Llibcore/icu/NativeDecimalFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public update(Llibcore/icu/LocaleData;Ljava/lang/String;)Llibcore/icu/NativeDecimalFormat;
    .locals 3
    .param p1, "localeData"    # Llibcore/icu/LocaleData;
    .param p2, "pattern"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 567
    iput-object p2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    #@6
    .line 568
    iput-object p1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    #@8
    .line 569
    new-instance v0, Llibcore/icu/NativeDecimalFormat;

    #@a
    iget-object v1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    #@c
    iget-object v2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    #@e
    invoke-direct {v0, v1, v2}, Llibcore/icu/NativeDecimalFormat;-><init>(Ljava/lang/String;Llibcore/icu/LocaleData;)V

    #@11
    iput-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    #@13
    .line 571
    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    #@15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 572
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    #@1d
    invoke-virtual {v0, p2}, Llibcore/icu/NativeDecimalFormat;->applyPattern(Ljava/lang/String;)V

    #@20
    .line 573
    iput-object p2, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentPattern:Ljava/lang/String;

    #@22
    .line 575
    :cond_1
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    #@24
    if-eq p1, v0, :cond_2

    #@26
    .line 576
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    #@28
    invoke-virtual {v0, p1}, Llibcore/icu/NativeDecimalFormat;->setDecimalFormatSymbols(Llibcore/icu/LocaleData;)V

    #@2b
    .line 577
    iput-object p1, p0, Ljava/util/Formatter$CachedDecimalFormat;->currentLocaleData:Llibcore/icu/LocaleData;

    #@2d
    .line 579
    :cond_2
    iget-object v0, p0, Ljava/util/Formatter$CachedDecimalFormat;->decimalFormat:Llibcore/icu/NativeDecimalFormat;

    #@2f
    return-object v0
.end method
