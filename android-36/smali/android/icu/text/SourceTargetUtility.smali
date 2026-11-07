.class Landroid/icu/text/SourceTargetUtility;
.super Ljava/lang/Object;
.source "SourceTargetUtility.java"


# static fields
.field static blacklist NFC:Landroid/icu/text/Normalizer2;

.field static final blacklist NON_STARTERS:Landroid/icu/text/UnicodeSet;


# instance fields
.field final blacklist sourceCache:Landroid/icu/text/UnicodeSet;

.field final blacklist sourceStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist transform:Landroid/icu/text/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NON_STARTERS:Landroid/icu/text/UnicodeSet;

    .line 25
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/text/Transform;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "transform":Landroid/icu/text/Transform;, "Landroid/icu/text/Transform<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V
    .registers 8
    .param p2, "normalizer"    # Landroid/icu/text/Normalizer2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/text/Normalizer2;",
            ")V"
        }
    .end annotation

    .line 32
    .local p1, "transform":Landroid/icu/text/Transform;, "Landroid/icu/text/Transform<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    .line 34
    if-eqz p2, :cond_11

    .line 59
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:^ccc=0:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    goto :goto_18

    .line 61
    :cond_11
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    .line 63
    :goto_18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    const v1, 0x10ffff

    if-gt v0, v1, :cond_6c

    .line 65
    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, "added":Z
    invoke-static {v0, v1}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 68
    iget-object v3, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 69
    const/4 v2, 0x1

    .line 71
    :cond_3c
    if-nez p2, :cond_3f

    .line 72
    goto :goto_69

    .line 74
    :cond_3f
    sget-object v3, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v0}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "d":Ljava/lang/String;
    if-nez v3, :cond_48

    .line 76
    goto :goto_69

    .line 78
    :cond_48
    invoke-interface {p1, v3}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 80
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5a
    if-eqz v2, :cond_5d

    .line 83
    goto :goto_69

    .line 85
    :cond_5d
    invoke-virtual {p2, v0}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_69

    .line 86
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 87
    nop

    .line 64
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "added":Z
    .end local v3    # "d":Ljava/lang/String;
    :cond_69
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 114
    .end local v0    # "i":I
    :cond_6c
    iget-object v0, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 115
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 11
    .param p1, "transliterator"    # Landroid/icu/text/Transliterator;
    .param p2, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p3, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p4, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 119
    invoke-virtual {p1, p2}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 120
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    iget-object v2, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 121
    .local v1, "affectedCharacters":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 122
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "s":Ljava/lang/String;
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    invoke-interface {v4, v3}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p4, v4}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 124
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_16

    .line 125
    :cond_2e
    iget-object v2, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 126
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 127
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    invoke-interface {v4, v3}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 129
    invoke-virtual {p4, v4}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 130
    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 133
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/String;
    :cond_5a
    goto :goto_34

    .line 134
    :cond_5b
    return-void
.end method
