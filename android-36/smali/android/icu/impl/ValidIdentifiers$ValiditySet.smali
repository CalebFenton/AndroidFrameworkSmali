.class public Landroid/icu/impl/ValidIdentifiers$ValiditySet;
.super Ljava/lang/Object;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValiditySet"
.end annotation


# instance fields
.field public final blacklist regularData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist subdivisionData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .registers 13
    .param p2, "makeMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 67
    .local p1, "plainData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    if-eqz p2, :cond_9d

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, "_subdivisionData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    .local v3, "s":Ljava/lang/String;
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 72
    .local v4, "pos":I
    add-int/lit8 v5, v4, 0x1

    .line 73
    .local v5, "pos2":I
    const/4 v6, 0x0

    if-gez v4, :cond_33

    .line 74
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x41

    if-ge v7, v8, :cond_30

    const/4 v7, 0x3

    goto :goto_31

    :cond_30
    const/4 v7, 0x2

    :goto_31
    move v4, v7

    move v5, v7

    .line 76
    :cond_33
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "subdivision":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 80
    .local v8, "oldSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v8, :cond_4c

    .line 81
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v8, v9

    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_4c
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "pos2":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "subdivision":Ljava/lang/String;
    .end local v8    # "oldSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_f

    .line 85
    :cond_50
    iput-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->regularData:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "_subdivisionData2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 91
    .local v4, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_87

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    goto :goto_8b

    .line 92
    :cond_87
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    :goto_8b
    nop

    .line 93
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_5f

    .line 96
    :cond_96
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->subdivisionData:Ljava/util/Map;

    .line 97
    .end local v0    # "_subdivisionData2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1    # "_subdivisionData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_a5

    .line 98
    :cond_9d
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->regularData:Ljava/util/Set;

    .line 99
    iput-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->subdivisionData:Ljava/util/Map;

    .line 101
    :goto_a5
    return-void
.end method


# virtual methods
.method public blacklist contains(Ljava/lang/String;)Z
    .registers 6
    .param p1, "code"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->regularData:Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 105
    iget-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->regularData:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 107
    :cond_b
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 108
    .local v0, "pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public blacklist contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->subdivisionData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 116
    .local v0, "oldSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->regularData:Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->regularData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/ValidIdentifiers$ValiditySet;->subdivisionData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
