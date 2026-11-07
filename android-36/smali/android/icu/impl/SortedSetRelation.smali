.class public Landroid/icu/impl/SortedSetRelation;
.super Ljava/lang/Object;
.source "SortedSetRelation.java"


# static fields
.field public static final blacklist A:I = 0x6

.field public static final blacklist ADDALL:I = 0x7

.field public static final blacklist ANY:I = 0x7

.field public static final blacklist A_AND_B:I = 0x2

.field public static final blacklist A_NOT_B:I = 0x4

.field public static final blacklist B:I = 0x3

.field public static final blacklist B_NOT_A:I = 0x1

.field public static final blacklist B_REMOVEALL:I = 0x1

.field public static final blacklist COMPLEMENTALL:I = 0x5

.field public static final blacklist CONTAINS:I = 0x6

.field public static final blacklist DISJOINT:I = 0x5

.field public static final blacklist EQUALS:I = 0x2

.field public static final blacklist ISCONTAINED:I = 0x3

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NO_A:I = 0x1

.field public static final blacklist NO_B:I = 0x4

.field public static final blacklist REMOVEALL:I = 0x4

.field public static final blacklist RETAINALL:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 6
    .param p1, "relation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/SortedSet<",
            "TT;>;I",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "+TT;>;"
        }
    .end annotation

    .line 147
    .local p0, "a":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p2, "b":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    packed-switch p1, :pswitch_data_58

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_22
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 150
    return-object p0

    .line 152
    :pswitch_26
    return-object p0

    .line 166
    :pswitch_27
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 167
    .local v0, "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 168
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 169
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 170
    return-object p0

    .line 158
    .end local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    :pswitch_36
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

    .line 159
    return-object p0

    .line 154
    :pswitch_3a
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 155
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-object p0

    .line 161
    :pswitch_41
    invoke-interface {p0, p2}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    .line 162
    return-object p0

    .line 172
    :pswitch_45
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 173
    .restart local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    .line 174
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 175
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 176
    return-object p0

    .line 178
    .end local v0    # "temp":Ljava/util/TreeSet;, "Ljava/util/TreeSet<+TT;>;"
    :pswitch_54
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 179
    return-object p0

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_54
        :pswitch_45
        :pswitch_41
        :pswitch_3a
        :pswitch_36
        :pswitch_27
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z
    .registers 14
    .param p1, "allow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/SortedSet<",
            "TT;>;I",
            "Ljava/util/SortedSet<",
            "TT;>;)Z"
        }
    .end annotation

    .line 75
    .local p0, "a":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p2, "b":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    if-ltz p1, :cond_b0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_b0

    .line 82
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 83
    .local v0, "anb":Z
    :goto_e
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 84
    .local v3, "ab":Z
    :goto_15
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 87
    .local v4, "bna":Z
    :goto_1c
    packed-switch p1, :pswitch_data_d0

    :pswitch_1f
    goto :goto_41

    .line 88
    :pswitch_20
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-ge v5, v6, :cond_41

    return v2

    .line 89
    :pswitch_2b
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-le v5, v6, :cond_41

    return v2

    .line 90
    :pswitch_36
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-eq v5, v6, :cond_41

    return v2

    .line 94
    :cond_41
    :goto_41
    invoke-interface {p0}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-nez v5, :cond_4f

    .line 95
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-nez v2, :cond_4e

    return v1

    .line 96
    :cond_4e
    return v4

    .line 97
    :cond_4f
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-nez v5, :cond_56

    .line 98
    return v0

    .line 102
    :cond_56
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 103
    .local v5, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 105
    .local v6, "bit":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 106
    .local v7, "aa":Ljava/lang/Object;, "TT;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 109
    .local v8, "bb":Ljava/lang/Object;, "TT;"
    :goto_66
    move-object v9, v7

    check-cast v9, Ljava/lang/Comparable;

    invoke-interface {v9, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    .line 110
    .local v9, "comp":I
    if-nez v9, :cond_90

    .line 111
    if-nez v3, :cond_72

    return v2

    .line 112
    :cond_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_80

    .line 113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7f

    return v1

    .line 114
    :cond_7f
    return v4

    .line 115
    :cond_80
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_87

    .line 116
    return v0

    .line 118
    :cond_87
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 119
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    goto :goto_af

    .line 120
    :cond_90
    if-gez v9, :cond_a1

    .line 121
    if-nez v0, :cond_95

    return v2

    .line 122
    :cond_95
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_9c

    .line 123
    return v4

    .line 125
    :cond_9c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    goto :goto_af

    .line 127
    :cond_a1
    if-nez v4, :cond_a4

    return v2

    .line 128
    :cond_a4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_ab

    .line 129
    return v0

    .line 131
    :cond_ab
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 133
    .end local v9    # "comp":I
    :goto_af
    goto :goto_66

    .line 76
    .end local v0    # "anb":Z
    .end local v3    # "ab":Z
    .end local v4    # "bna":Z
    .end local v5    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .end local v6    # "bit":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .end local v7    # "aa":Ljava/lang/Object;, "TT;"
    .end local v8    # "bb":Ljava/lang/Object;, "TT;"
    :cond_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_36
        :pswitch_2b
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method
