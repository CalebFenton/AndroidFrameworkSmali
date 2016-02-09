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
    .line 21
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
    .line 143
    .local p0, "a":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p2, "b":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    packed-switch p1, :pswitch_data_0

    #@3
    .line 177
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
    .line 145
    :pswitch_0
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@27
    .line 146
    return-object p0

    #@28
    .line 148
    :pswitch_1
    return-object p0

    #@29
    .line 150
    :pswitch_2
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    #@2c
    .line 151
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@2f
    .line 152
    return-object p0

    #@30
    .line 154
    :pswitch_3
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    #@33
    .line 155
    return-object p0

    #@34
    .line 157
    :pswitch_4
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    #@37
    .line 158
    return-object p0

    #@38
    .line 162
    :pswitch_5
    new-instance v0, Ljava/util/TreeSet;

    #@3a
    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    #@3d
    .line 163
    .local v0, "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    #@40
    .line 164
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    #@43
    .line 165
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@46
    .line 166
    return-object p0

    #@47
    .line 168
    .end local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    :pswitch_6
    new-instance v0, Ljava/util/TreeSet;

    #@49
    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    #@4c
    .line 169
    .restart local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    #@4f
    .line 170
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    #@52
    .line 171
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    #@55
    .line 172
    return-object p0

    #@56
    .line 174
    .end local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    :pswitch_7
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    #@59
    .line 175
    return-object p0

    #@5a
    .line 143
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
    .line 71
    if-ltz p1, :cond_0

    #@4
    const/4 v8, 0x7

    #@5
    if-le p1, v8, :cond_1

    #@7
    .line 72
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
    .line 78
    :cond_1
    and-int/lit8 v8, p1, 0x4

    #@2a
    if-eqz v8, :cond_3

    #@2c
    const/4 v3, 0x1

    #@2d
    .line 79
    .local v3, "anb":Z
    :goto_0
    and-int/lit8 v8, p1, 0x2

    #@2f
    if-eqz v8, :cond_4

    #@31
    const/4 v1, 0x1

    #@32
    .line 80
    .local v1, "ab":Z
    :goto_1
    and-int/lit8 v8, p1, 0x1

    #@34
    if-eqz v8, :cond_5

    #@36
    const/4 v6, 0x1

    #@37
    .line 83
    .local v6, "bna":Z
    :goto_2
    packed-switch p1, :pswitch_data_0

    #@3a
    .line 90
    :cond_2
    :pswitch_0
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    #@3d
    move-result v8

    #@3e
    if-nez v8, :cond_7

    #@40
    .line 91
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@43
    move-result v8

    #@44
    if-nez v8, :cond_6

    #@46
    return v11

    #@47
    .line 78
    .end local v1    # "ab":Z
    .end local v3    # "anb":Z
    .end local v6    # "bna":Z
    :cond_3
    const/4 v3, 0x0

    #@48
    .restart local v3    # "anb":Z
    goto :goto_0

    #@49
    .line 79
    :cond_4
    const/4 v1, 0x0

    #@4a
    .restart local v1    # "ab":Z
    goto :goto_1

    #@4b
    .line 80
    :cond_5
    const/4 v6, 0x0

    #@4c
    .restart local v6    # "bna":Z
    goto :goto_2

    #@4d
    .line 84
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
    .line 85
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
    .line 86
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
    .line 92
    :cond_6
    return v6

    #@6f
    .line 93
    :cond_7
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    #@72
    move-result v8

    #@73
    if-nez v8, :cond_8

    #@75
    .line 94
    return v3

    #@76
    .line 98
    :cond_8
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v2

    #@7a
    .line 99
    .local v2, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v5

    #@7e
    .line 101
    .local v5, "bit":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    .line 102
    .local v0, "aa":Ljava/lang/Object;, "TT;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v4

    #@86
    .line 105
    .local v4, "bb":Ljava/lang/Object;, "TT;"
    :goto_3
    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@89
    move-result v7

    #@8a
    .line 106
    .local v7, "comp":I
    if-nez v7, :cond_d

    #@8c
    .line 107
    if-nez v1, :cond_9

    #@8e
    return v10

    #@8f
    .line 108
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@92
    move-result v8

    #@93
    if-nez v8, :cond_b

    #@95
    .line 109
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@98
    move-result v8

    #@99
    if-nez v8, :cond_a

    #@9b
    return v11

    #@9c
    .line 110
    :cond_a
    return v6

    #@9d
    .line 111
    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@a0
    move-result v8

    #@a1
    if-nez v8, :cond_c

    #@a3
    .line 112
    return v3

    #@a4
    .line 114
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ab
    move-result-object v4

    #@ac
    goto :goto_3

    #@ad
    .line 116
    :cond_d
    if-gez v7, :cond_10

    #@af
    .line 117
    if-nez v3, :cond_e

    #@b1
    return v10

    #@b2
    .line 118
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v8

    #@b6
    if-nez v8, :cond_f

    #@b8
    .line 119
    return v6

    #@b9
    .line 121
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bc
    move-result-object v0

    #@bd
    goto :goto_3

    #@be
    .line 123
    :cond_10
    if-nez v6, :cond_11

    #@c0
    return v10

    #@c1
    .line 124
    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@c4
    move-result v8

    #@c5
    if-nez v8, :cond_12

    #@c7
    .line 125
    return v3

    #@c8
    .line 127
    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@cb
    move-result-object v4

    #@cc
    goto :goto_3

    #@cd
    .line 83
    nop

    #@ce
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
