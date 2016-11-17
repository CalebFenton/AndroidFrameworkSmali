.class public Landroid/icu/impl/SortedSetRelation;
.super Ljava/lang/Object;
.source "SortedSetRelation.java"


# static fields
.field public static final A:I = 0x6

.field public static final ADDALL:I = 0x7

.field public static final ANY:I = 0x7

.field public static final A_AND_B:I = 0x2

.field public static final A_NOT_B:I = 0x4

.field public static final B:I = 0x3

.field public static final B_NOT_A:I = 0x1

.field public static final B_REMOVEALL:I = 0x1

.field public static final COMPLEMENTALL:I = 0x5

.field public static final CONTAINS:I = 0x6

.field public static final DISJOINT:I = 0x5

.field public static final EQUALS:I = 0x2

.field public static final ISCONTAINED:I = 0x3

.field public static final NONE:I = 0x0

.field public static final NO_A:I = 0x1

.field public static final NO_B:I = 0x4

.field public static final REMOVEALL:I = 0x4

.field public static final RETAINALL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 4
    .param p1, "relation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/SortedSet",
            "<TT;>;I",
            "Ljava/util/SortedSet",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<+TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 145
    .local p0, "a":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p2, "b":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    packed-switch p1, :pswitch_data_0

    #@3
    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Relation "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " out of range"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 147
    :pswitch_0
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@27
    .line 148
    return-object p0

    #@28
    .line 150
    :pswitch_1
    return-object p0

    #@29
    .line 152
    :pswitch_2
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    #@2c
    .line 153
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@2f
    .line 154
    return-object p0

    #@30
    .line 156
    :pswitch_3
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    #@33
    .line 157
    return-object p0

    #@34
    .line 159
    :pswitch_4
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    #@37
    .line 160
    return-object p0

    #@38
    .line 164
    :pswitch_5
    new-instance v0, Ljava/util/TreeSet;

    #@3a
    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    #@3d
    .line 165
    .local v0, "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    #@40
    .line 166
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    #@43
    .line 167
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@46
    .line 168
    return-object p0

    #@47
    .line 170
    .end local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    :pswitch_6
    new-instance v0, Ljava/util/TreeSet;

    #@49
    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    #@4c
    .line 171
    .restart local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    #@4f
    .line 172
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    #@52
    .line 173
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@55
    .line 174
    return-object p0

    #@56
    .line 176
    .end local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    :pswitch_7
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    #@59
    .line 177
    return-object p0

    #@5a
    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z
    .locals 12
    .param p1, "allow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Ljava/util/SortedSet",
            "<TT;>;I",
            "Ljava/util/SortedSet",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "a":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p2, "b":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 73
    if-ltz p1, :cond_0

    #@4
    const/4 v8, 0x7

    #@5
    if-le p1, v8, :cond_1

    #@7
    .line 74
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v9, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v10, "Relation "

    #@11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v9

    #@19
    const-string/jumbo v10, " out of range"

    #@1c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v9

    #@20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v9

    #@24
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v8

    #@28
    .line 80
    :cond_1
    and-int/lit8 v8, p1, 0x4

    #@2a
    if-eqz v8, :cond_3

    #@2c
    const/4 v3, 0x1

    #@2d
    .line 81
    .local v3, "anb":Z
    :goto_0
    and-int/lit8 v8, p1, 0x2

    #@2f
    if-eqz v8, :cond_4

    #@31
    const/4 v1, 0x1

    #@32
    .line 82
    .local v1, "ab":Z
    :goto_1
    and-int/lit8 v8, p1, 0x1

    #@34
    if-eqz v8, :cond_5

    #@36
    const/4 v6, 0x1

    #@37
    .line 85
    .local v6, "bna":Z
    :goto_2
    packed-switch p1, :pswitch_data_0

    #@3a
    .line 92
    :cond_2
    :pswitch_0
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    #@3d
    move-result v8

    #@3e
    if-nez v8, :cond_7

    #@40
    .line 93
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@43
    move-result v8

    #@44
    if-nez v8, :cond_6

    #@46
    return v11

    #@47
    .line 80
    .end local v1    # "ab":Z
    .end local v3    # "anb":Z
    .end local v6    # "bna":Z
    :cond_3
    const/4 v3, 0x0

    #@48
    .restart local v3    # "anb":Z
    goto :goto_0

    #@49
    .line 81
    :cond_4
    const/4 v1, 0x0

    #@4a
    .restart local v1    # "ab":Z
    goto :goto_1

    #@4b
    .line 82
    :cond_5
    const/4 v6, 0x0

    #@4c
    .restart local v6    # "bna":Z
    goto :goto_2

    #@4d
    .line 86
    :pswitch_1
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    #@50
    move-result v8

    #@51
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@54
    move-result v9

    #@55
    if-ge v8, v9, :cond_2

    #@57
    return v10

    #@58
    .line 87
    :pswitch_2
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    #@5b
    move-result v8

    #@5c
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@5f
    move-result v9

    #@60
    if-le v8, v9, :cond_2

    #@62
    return v10

    #@63
    .line 88
    :pswitch_3
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    #@66
    move-result v8

    #@67
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@6a
    move-result v9

    #@6b
    if-eq v8, v9, :cond_2

    #@6d
    return v10

    #@6e
    .line 94
    :cond_6
    return v6

    #@6f
    .line 95
    :cond_7
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@72
    move-result v8

    #@73
    if-nez v8, :cond_8

    #@75
    .line 96
    return v3

    #@76
    .line 100
    :cond_8
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v2

    #@7a
    .line 101
    .local v2, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v5

    #@7e
    .line 103
    .local v5, "bit":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    .line 104
    .local v0, "aa":Ljava/lang/Object;, "TT;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v4

    #@86
    .local v4, "bb":Ljava/lang/Object;, "TT;"
    :goto_3
    move-object v8, v0

    #@87
    .line 107
    check-cast v8, Ljava/lang/Comparable;

    #@89
    invoke-interface {v8, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@8c
    move-result v7

    #@8d
    .line 108
    .local v7, "comp":I
    if-nez v7, :cond_d

    #@8f
    .line 109
    if-nez v1, :cond_9

    #@91
    return v10

    #@92
    .line 110
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@95
    move-result v8

    #@96
    if-nez v8, :cond_b

    #@98
    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@9b
    move-result v8

    #@9c
    if-nez v8, :cond_a

    #@9e
    return v11

    #@9f
    .line 112
    :cond_a
    return v6

    #@a0
    .line 113
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@a3
    move-result v8

    #@a4
    if-nez v8, :cond_c

    #@a6
    .line 114
    return v3

    #@a7
    .line 116
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v0

    #@ab
    .line 117
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ae
    move-result-object v4

    #@af
    goto :goto_3

    #@b0
    .line 118
    :cond_d
    if-gez v7, :cond_10

    #@b2
    .line 119
    if-nez v3, :cond_e

    #@b4
    return v10

    #@b5
    .line 120
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b8
    move-result v8

    #@b9
    if-nez v8, :cond_f

    #@bb
    .line 121
    return v6

    #@bc
    .line 123
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bf
    move-result-object v0

    #@c0
    goto :goto_3

    #@c1
    .line 125
    :cond_10
    if-nez v6, :cond_11

    #@c3
    return v10

    #@c4
    .line 126
    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@c7
    move-result v8

    #@c8
    if-nez v8, :cond_12

    #@ca
    .line 127
    return v3

    #@cb
    .line 129
    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ce
    move-result-object v4

    #@cf
    goto :goto_3

    #@d0
    .line 85
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
