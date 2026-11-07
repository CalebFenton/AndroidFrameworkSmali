.class Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;
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
    name = "InfoCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
        "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICUCurrencyMetaInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .registers 19
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .param p8, "tender"    # Z

    .line 206
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public blacklist collects()I
    .registers 2

    .line 216
    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
