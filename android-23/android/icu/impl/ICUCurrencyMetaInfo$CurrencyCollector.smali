.class Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;
.super Ljava/lang/Object;
.source "ICUCurrencyMetaInfo.java"

# interfaces
.implements Landroid/icu/impl/ICUCurrencyMetaInfo$Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 231
    invoke-static {}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->-wrap0()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    #@9
    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .param p8, "tender"    # Z

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    #@2
    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->add(Ljava/lang/Object;)V

    #@5
    .line 234
    return-void
.end method

.method public collects()I
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$CurrencyCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
