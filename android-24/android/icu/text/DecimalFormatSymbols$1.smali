.class final Landroid/icu/text/DecimalFormatSymbols$1;
.super Landroid/icu/impl/SoftCache;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache",
        "<",
        "Landroid/icu/util/ULocale;",
        "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1250
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 1
    .param p1, "key"    # Landroid/icu/util/ULocale;
    .param p2, "unused"    # Ljava/lang/Void;

    #@0
    .prologue
    .line 1253
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->loadSymbols(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "unused"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1252
    check-cast p1, Landroid/icu/util/ULocale;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    #@4
    .end local p2    # "unused":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols$1;->createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
