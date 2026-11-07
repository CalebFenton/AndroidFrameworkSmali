.class final Landroid/icu/text/Collator$KeywordsSink;
.super Landroid/icu/impl/UResource$Sink;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeywordsSink"
.end annotation


# instance fields
.field greylist-max-o hasDefault:Z

.field greylist-max-o values:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 979
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 980
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/Collator$KeywordsSink;->hasDefault:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/Collator-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/Collator$KeywordsSink;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 985
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 986
    .local v0, "collations":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 987
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    .line 988
    .local v2, "type":I
    if-nez v2, :cond_35

    .line 989
    iget-boolean v3, p0, Landroid/icu/text/Collator$KeywordsSink;->hasDefault:Z

    if-nez v3, :cond_51

    const-string v3, "default"

    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 990
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "defcoll":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 992
    iget-object v4, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 993
    iget-object v4, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 994
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/icu/text/Collator$KeywordsSink;->hasDefault:Z

    .line 996
    .end local v3    # "defcoll":Ljava/lang/String;
    :cond_34
    goto :goto_51

    .line 997
    :cond_35
    const/4 v3, 0x2

    if-ne v2, v3, :cond_51

    const-string v3, "private-"

    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 998
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, "collkey":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 1000
    iget-object v4, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 986
    .end local v2    # "type":I
    .end local v3    # "collkey":Ljava/lang/String;
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1004
    .end local v1    # "i":I
    :cond_54
    return-void
.end method
