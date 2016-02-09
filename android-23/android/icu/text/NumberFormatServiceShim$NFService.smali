.class Landroid/icu/text/NumberFormatServiceShim$NFService;
.super Landroid/icu/impl/ICULocaleService;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "NumberFormat"

    #@3
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    #@6
    .line 114
    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;

    #@8
    invoke-direct {v0, p0}, Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;-><init>(Landroid/icu/text/NumberFormatServiceShim$NFService;)V

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormatServiceShim$NFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@e
    .line 115
    invoke-virtual {p0}, Landroid/icu/text/NumberFormatServiceShim$NFService;->markDefault()V

    #@11
    .line 105
    return-void
.end method
