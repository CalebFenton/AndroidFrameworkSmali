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
.field private blacklist list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist seen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreate()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .registers 1

    invoke-static {}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->create()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 179
    .local p0, "this":Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;, "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    return-void
.end method

.method private static blacklist create()Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<",
            "TT;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;

    invoke-direct {v0}, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;-><init>()V

    return-object v0
.end method


# virtual methods
.method blacklist add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;, "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 189
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->seen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_12
    return-void
.end method

.method blacklist list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;, "Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyMetaInfo$UniqueList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
