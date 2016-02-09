.class final Landroid/icu/util/Currency$CurrencyStringInfo;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyStringInfo"
.end annotation


# instance fields
.field private currencyString:Ljava/lang/String;

.field private isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 724
    iput-object p1, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    #@5
    .line 725
    iput-object p2, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    #@7
    .line 723
    return-void
.end method


# virtual methods
.method public getCurrencyString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 734
    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getISOCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 729
    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    #@2
    return-object v0
.end method
