.class Landroid/icu/text/SourceTargetUtility;
.super Ljava/lang/Object;
.source "SourceTargetUtility.java"


# static fields
.field static NFC:Landroid/icu/text/Normalizer2;

.field static final NON_STARTERS:Landroid/icu/text/UnicodeSet;


# instance fields
.field final sourceCache:Landroid/icu/text/UnicodeSet;

.field final sourceStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final transform:Landroid/icu/text/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/Transform",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 22
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    const-string/jumbo v1, "[:^ccc=0:]"

    #@5
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NON_STARTERS:Landroid/icu/text/UnicodeSet;

    #@e
    .line 23
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    #@14
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 27
    .local p1, "transform":Landroid/icu/text/Transform;, "Landroid/icu/text/Transform<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    #@4
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V
    .locals 6
    .param p2, "normalizer"    # Landroid/icu/text/Normalizer2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/Transform",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/text/Normalizer2;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 30
    .local p1, "transform":Landroid/icu/text/Transform;, "Landroid/icu/text/Transform<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p1, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    #@5
    .line 32
    if-eqz p2, :cond_2

    #@7
    .line 57
    new-instance v4, Landroid/icu/text/UnicodeSet;

    #@9
    const-string/jumbo v5, "[:^ccc=0:]"

    #@c
    invoke-direct {v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@f
    iput-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    #@11
    .line 61
    :goto_0
    new-instance v4, Ljava/util/HashSet;

    #@13
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    #@18
    .line 62
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    :goto_1
    const v4, 0x10ffff

    #@1c
    if-gt v2, v4, :cond_5

    #@1e
    .line 63
    invoke-static {v2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-interface {p1, v4}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Ljava/lang/String;

    #@28
    .line 64
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    #@29
    .line 65
    .local v0, "added":Z
    invoke-static {v2, v3}, Landroid/icu/lang/CharSequences;->equals(ILjava/lang/CharSequence;)Z

    #@2c
    move-result v4

    #@2d
    if-nez v4, :cond_0

    #@2f
    .line 66
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    #@31
    invoke-virtual {v4, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@34
    .line 67
    const/4 v0, 0x1

    #@35
    .line 69
    :cond_0
    if-nez p2, :cond_3

    #@37
    .line 62
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 59
    .end local v0    # "added":Z
    .end local v2    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    new-instance v4, Landroid/icu/text/UnicodeSet;

    #@3c
    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@3f
    iput-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    #@41
    goto :goto_0

    #@42
    .line 72
    .restart local v0    # "added":Z
    .restart local v2    # "i":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_3
    sget-object v4, Landroid/icu/text/SourceTargetUtility;->NFC:Landroid/icu/text/Normalizer2;

    #@44
    invoke-virtual {v4, v2}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 73
    .local v1, "d":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@4a
    .line 76
    invoke-interface {p1, v1}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    .end local v3    # "s":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    #@50
    .line 77
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_4

    #@56
    .line 78
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    #@58
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5b
    .line 80
    :cond_4
    if-nez v0, :cond_1

    #@5d
    .line 83
    invoke-virtual {p2, v2}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    #@60
    move-result v4

    #@61
    if-nez v4, :cond_1

    #@63
    .line 84
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    #@65
    invoke-virtual {v4, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@68
    goto :goto_2

    #@69
    .line 112
    .end local v0    # "added":Z
    .end local v1    # "d":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    #@6b
    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@6e
    .line 30
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 7
    .param p1, "transliterator"    # Landroid/icu/text/Transliterator;
    .param p2, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p3, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p4, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 117
    invoke-virtual {p1, p2}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v1

    #@4
    .line 118
    .local v1, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v5, Landroid/icu/text/UnicodeSet;

    #@6
    iget-object v6, p0, Landroid/icu/text/SourceTargetUtility;->sourceCache:Landroid/icu/text/UnicodeSet;

    #@8
    invoke-direct {v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@b
    invoke-virtual {v5, v1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@e
    move-result-object v0

    #@f
    .line 119
    .local v0, "affectedCharacters":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@12
    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/String;

    #@22
    .line 121
    .local v2, "s":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    #@24
    invoke-interface {v5, v2}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {p4, v5}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@2d
    goto :goto_0

    #@2e
    .line 123
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Landroid/icu/text/SourceTargetUtility;->sourceStrings:Ljava/util/Set;

    #@30
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v3

    #@34
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_2

    #@3a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Ljava/lang/String;

    #@40
    .line 124
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_1

    #@46
    .line 125
    iget-object v5, p0, Landroid/icu/text/SourceTargetUtility;->transform:Landroid/icu/text/Transform;

    #@48
    invoke-interface {v5, v2}, Landroid/icu/text/Transform;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v4

    #@4c
    check-cast v4, Ljava/lang/String;

    #@4e
    .line 126
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v5

    #@52
    if-nez v5, :cond_1

    #@54
    .line 127
    invoke-virtual {p4, v4}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@57
    .line 128
    invoke-virtual {p3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@5a
    goto :goto_1

    #@5b
    .line 116
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "t":Ljava/lang/String;
    :cond_2
    return-void
.end method
