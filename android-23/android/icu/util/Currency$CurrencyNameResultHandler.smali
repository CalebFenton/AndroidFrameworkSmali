.class Landroid/icu/util/Currency$CurrencyNameResultHandler;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyNameResultHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/util/Currency$CurrencyStringInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private bestCurrencyISOCode:Ljava/lang/String;

.field private bestMatchLength:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/Currency$CurrencyNameResultHandler;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getBestCurrencyISOCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBestMatchLength()I
    .locals 1

    #@0
    .prologue
    .line 763
    iget v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    #@2
    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 1
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 749
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/util/Currency$CurrencyStringInfo;>;"
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 752
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/icu/util/Currency$CurrencyStringInfo;

    #@c
    invoke-virtual {v0}, Landroid/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    #@12
    .line 753
    iput p1, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    #@14
    .line 755
    :cond_0
    const/4 v0, 0x1

    #@15
    return v0
.end method
