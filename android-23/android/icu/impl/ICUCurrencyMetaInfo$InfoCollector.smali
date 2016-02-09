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
        "Landroid/icu/impl/ICUCurrencyMetaInfo$Collector",
        "<",
        "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    #@a
    .line 195
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 11
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "from"    # J
    .param p5, "to"    # J
    .param p7, "priority"    # I
    .param p8, "tender"    # Z

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    #@2
    new-instance v1, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-wide v4, p3

    #@7
    move-wide/from16 v6, p5

    #@9
    move/from16 v8, p7

    #@b
    move/from16 v9, p8

    #@d
    invoke-direct/range {v1 .. v9}, Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    #@10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 200
    return-void
.end method

.method public collects()I
    .locals 1

    #@0
    .prologue
    .line 209
    const v0, 0x7fffffff

    #@3
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$InfoCollector;->result:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
