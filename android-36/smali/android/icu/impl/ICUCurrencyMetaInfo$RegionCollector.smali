.class Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;
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
    name = "RegionCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->-$$Nest$smcreate()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICUCurrencyMetaInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .registers 10
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .param p8, "tender"    # Z

    .line 226
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->add(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public blacklist collects()I
    .registers 2

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$RegionCollector;->result:Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-virtual {v0}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
