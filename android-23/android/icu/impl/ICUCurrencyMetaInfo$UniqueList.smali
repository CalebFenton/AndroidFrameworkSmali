.class Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
.super Ljava/lang/Object;
.source "ICUCurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniqueList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .locals 1

    #@0
    invoke-static {}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->create()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 175
    .local p0, "this":Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;, "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    #@a
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    #@11
    .line 175
    return-void
.end method

.method private static create()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 180
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    .local p0, "this":Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;, "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 185
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 186
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    #@f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    .line 183
    :cond_0
    return-void
.end method

.method list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    .local p0, "this":Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;, "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
