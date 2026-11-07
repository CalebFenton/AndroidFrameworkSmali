.class public final Landroid/icu/util/Currency$CurrencyStringInfo;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyStringInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o currencyString:Ljava/lang/String;

.field private greylist-max-o isoCode:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currencyString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object p1, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    .line 799
    iput-object p2, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    .line 800
    return-void
.end method


# virtual methods
.method public greylist-max-o getCurrencyString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 818
    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getISOCode()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 808
    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    return-object v0
.end method
