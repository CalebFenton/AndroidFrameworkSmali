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
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "Landroid/icu/util/Currency$CurrencyStringInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o bestCurrencyISOCode:Ljava/lang/String;

.field private greylist-max-o bestMatchLength:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/Currency-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o getBestCurrencyISOCode()Ljava/lang/String;
    .registers 2

    .line 844
    iget-object v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getBestMatchLength()I
    .registers 2

    .line 848
    iget v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    return v0
.end method

.method public greylist-max-o handlePrefixMatch(ILjava/util/Iterator;)Z
    .registers 4
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;)Z"
        }
    .end annotation

    .line 834
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 837
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {v0}, Landroid/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestCurrencyISOCode:Ljava/lang/String;

    .line 838
    iput p1, p0, Landroid/icu/util/Currency$CurrencyNameResultHandler;->bestMatchLength:I

    .line 840
    :cond_14
    const/4 v0, 0x1

    return v0
.end method
