.class final Landroid/icu/text/DecimalFormat$AffixForCurrency;
.super Ljava/lang/Object;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AffixForCurrency"
.end annotation


# instance fields
.field private negPrefixPatternForCurrency:Ljava/lang/String;

.field private negSuffixPatternForCurrency:Ljava/lang/String;

.field private final patternType:I

.field private posPrefixPatternForCurrency:Ljava/lang/String;

.field private posSuffixPatternForCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "negPrefix"    # Ljava/lang/String;
    .param p2, "negSuffix"    # Ljava/lang/String;
    .param p3, "posPrefix"    # Ljava/lang/String;
    .param p4, "posSuffix"    # Ljava/lang/String;
    .param p5, "type"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 5968
    iput-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;

    #@6
    .line 5970
    iput-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;

    #@8
    .line 5972
    iput-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;

    #@a
    .line 5974
    iput-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;

    #@c
    .line 5979
    iput-object p1, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;

    #@e
    .line 5980
    iput-object p2, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;

    #@10
    .line 5981
    iput-object p3, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;

    #@12
    .line 5982
    iput-object p4, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;

    #@14
    .line 5983
    iput p5, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->patternType:I

    #@16
    .line 5978
    return-void
.end method


# virtual methods
.method public getNegPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5987
    iget-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->negPrefixPatternForCurrency:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNegSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5991
    iget-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->negSuffixPatternForCurrency:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPatternType()I
    .locals 1

    #@0
    .prologue
    .line 6003
    iget v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->patternType:I

    #@2
    return v0
.end method

.method public getPosPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5995
    iget-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->posPrefixPatternForCurrency:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPosSuffix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5999
    iget-object v0, p0, Landroid/icu/text/DecimalFormat$AffixForCurrency;->posSuffixPatternForCurrency:Ljava/lang/String;

    #@2
    return-object v0
.end method
