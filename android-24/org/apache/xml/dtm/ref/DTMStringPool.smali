.class public Lorg/apache/xml/dtm/ref/DTMStringPool;
.super Ljava/lang/Object;
.source "DTMStringPool.java"


# static fields
.field static final HASHPRIME:I = 0x65

.field public static final NULL:I = -0x1


# instance fields
.field m_hashChain:Lorg/apache/xml/utils/IntVector;

.field m_hashStart:[I

.field m_intToString:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 82
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    #@5
    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "chainSize"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    const/16 v0, 0x65

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    #@9
    .line 72
    new-instance v0, Ljava/util/Vector;

    #@b
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@e
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    #@10
    .line 73
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    #@12
    invoke-direct {v0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    #@15
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    #@17
    .line 74
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    #@1a
    .line 77
    const-string/jumbo v0, ""

    #@1d
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@20
    .line 70
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 143
    const/16 v6, 0x28

    #@3
    new-array v5, v6, [Ljava/lang/String;

    #@5
    .line 144
    const-string/jumbo v6, "Zero"

    #@8
    const/4 v7, 0x0

    #@9
    aput-object v6, v5, v7

    #@b
    const-string/jumbo v6, "One"

    #@e
    aput-object v6, v5, v9

    #@10
    const-string/jumbo v6, "Two"

    #@13
    const/4 v7, 0x2

    #@14
    aput-object v6, v5, v7

    #@16
    const-string/jumbo v6, "Three"

    #@19
    const/4 v7, 0x3

    #@1a
    aput-object v6, v5, v7

    #@1c
    const-string/jumbo v6, "Four"

    #@1f
    const/4 v7, 0x4

    #@20
    aput-object v6, v5, v7

    #@22
    const-string/jumbo v6, "Five"

    #@25
    const/4 v7, 0x5

    #@26
    aput-object v6, v5, v7

    #@28
    .line 145
    const-string/jumbo v6, "Six"

    #@2b
    const/4 v7, 0x6

    #@2c
    aput-object v6, v5, v7

    #@2e
    const-string/jumbo v6, "Seven"

    #@31
    const/4 v7, 0x7

    #@32
    aput-object v6, v5, v7

    #@34
    const-string/jumbo v6, "Eight"

    #@37
    const/16 v7, 0x8

    #@39
    aput-object v6, v5, v7

    #@3b
    const-string/jumbo v6, "Nine"

    #@3e
    const/16 v7, 0x9

    #@40
    aput-object v6, v5, v7

    #@42
    const-string/jumbo v6, "Ten"

    #@45
    const/16 v7, 0xa

    #@47
    aput-object v6, v5, v7

    #@49
    .line 146
    const-string/jumbo v6, "Eleven"

    #@4c
    const/16 v7, 0xb

    #@4e
    aput-object v6, v5, v7

    #@50
    const-string/jumbo v6, "Twelve"

    #@53
    const/16 v7, 0xc

    #@55
    aput-object v6, v5, v7

    #@57
    const-string/jumbo v6, "Thirteen"

    #@5a
    const/16 v7, 0xd

    #@5c
    aput-object v6, v5, v7

    #@5e
    const-string/jumbo v6, "Fourteen"

    #@61
    const/16 v7, 0xe

    #@63
    aput-object v6, v5, v7

    #@65
    const-string/jumbo v6, "Fifteen"

    #@68
    const/16 v7, 0xf

    #@6a
    aput-object v6, v5, v7

    #@6c
    .line 147
    const-string/jumbo v6, "Sixteen"

    #@6f
    const/16 v7, 0x10

    #@71
    aput-object v6, v5, v7

    #@73
    const-string/jumbo v6, "Seventeen"

    #@76
    const/16 v7, 0x11

    #@78
    aput-object v6, v5, v7

    #@7a
    const-string/jumbo v6, "Eighteen"

    #@7d
    const/16 v7, 0x12

    #@7f
    aput-object v6, v5, v7

    #@81
    const-string/jumbo v6, "Nineteen"

    #@84
    const/16 v7, 0x13

    #@86
    aput-object v6, v5, v7

    #@88
    const-string/jumbo v6, "Twenty"

    #@8b
    const/16 v7, 0x14

    #@8d
    aput-object v6, v5, v7

    #@8f
    .line 148
    const-string/jumbo v6, "Twenty-One"

    #@92
    const/16 v7, 0x15

    #@94
    aput-object v6, v5, v7

    #@96
    const-string/jumbo v6, "Twenty-Two"

    #@99
    const/16 v7, 0x16

    #@9b
    aput-object v6, v5, v7

    #@9d
    const-string/jumbo v6, "Twenty-Three"

    #@a0
    const/16 v7, 0x17

    #@a2
    aput-object v6, v5, v7

    #@a4
    const-string/jumbo v6, "Twenty-Four"

    #@a7
    const/16 v7, 0x18

    #@a9
    aput-object v6, v5, v7

    #@ab
    .line 149
    const-string/jumbo v6, "Twenty-Five"

    #@ae
    const/16 v7, 0x19

    #@b0
    aput-object v6, v5, v7

    #@b2
    const-string/jumbo v6, "Twenty-Six"

    #@b5
    const/16 v7, 0x1a

    #@b7
    aput-object v6, v5, v7

    #@b9
    const-string/jumbo v6, "Twenty-Seven"

    #@bc
    const/16 v7, 0x1b

    #@be
    aput-object v6, v5, v7

    #@c0
    const-string/jumbo v6, "Twenty-Eight"

    #@c3
    const/16 v7, 0x1c

    #@c5
    aput-object v6, v5, v7

    #@c7
    .line 150
    const-string/jumbo v6, "Twenty-Nine"

    #@ca
    const/16 v7, 0x1d

    #@cc
    aput-object v6, v5, v7

    #@ce
    const-string/jumbo v6, "Thirty"

    #@d1
    const/16 v7, 0x1e

    #@d3
    aput-object v6, v5, v7

    #@d5
    const-string/jumbo v6, "Thirty-One"

    #@d8
    const/16 v7, 0x1f

    #@da
    aput-object v6, v5, v7

    #@dc
    const-string/jumbo v6, "Thirty-Two"

    #@df
    const/16 v7, 0x20

    #@e1
    aput-object v6, v5, v7

    #@e3
    .line 151
    const-string/jumbo v6, "Thirty-Three"

    #@e6
    const/16 v7, 0x21

    #@e8
    aput-object v6, v5, v7

    #@ea
    const-string/jumbo v6, "Thirty-Four"

    #@ed
    const/16 v7, 0x22

    #@ef
    aput-object v6, v5, v7

    #@f1
    const-string/jumbo v6, "Thirty-Five"

    #@f4
    const/16 v7, 0x23

    #@f6
    aput-object v6, v5, v7

    #@f8
    const-string/jumbo v6, "Thirty-Six"

    #@fb
    const/16 v7, 0x24

    #@fd
    aput-object v6, v5, v7

    #@ff
    .line 152
    const-string/jumbo v6, "Thirty-Seven"

    #@102
    const/16 v7, 0x25

    #@104
    aput-object v6, v5, v7

    #@106
    const-string/jumbo v6, "Thirty-Eight"

    #@109
    const/16 v7, 0x26

    #@10b
    aput-object v6, v5, v7

    #@10d
    const-string/jumbo v6, "Thirty-Nine"

    #@110
    const/16 v7, 0x27

    #@112
    aput-object v6, v5, v7

    #@114
    .line 154
    .local v5, "word":[Ljava/lang/String;
    new-instance v3, Lorg/apache/xml/dtm/ref/DTMStringPool;

    #@116
    invoke-direct {v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    #@119
    .line 156
    .local v3, "pool":Lorg/apache/xml/dtm/ref/DTMStringPool;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@11b
    const-string/jumbo v7, "If no complaints are printed below, we passed initial test."

    #@11e
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@121
    .line 158
    const/4 v2, 0x0

    #@122
    .local v2, "pass":I
    :goto_0
    if-gt v2, v9, :cond_6

    #@124
    .line 162
    const/4 v0, 0x0

    #@125
    .local v0, "i":I
    :goto_1
    array-length v6, v5

    #@126
    if-ge v0, v6, :cond_1

    #@128
    .line 164
    aget-object v6, v5, v0

    #@12a
    invoke-virtual {v3, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@12d
    move-result v1

    #@12e
    .line 165
    .local v1, "j":I
    if-eq v1, v0, :cond_0

    #@130
    .line 166
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@132
    new-instance v7, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string/jumbo v8, "\tMismatch populating pool: assigned "

    #@13a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v7

    #@13e
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@141
    move-result-object v7

    #@142
    .line 167
    const-string/jumbo v8, " for create "

    #@145
    .line 166
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v7

    #@149
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v7

    #@14d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v7

    #@151
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@154
    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@156
    goto :goto_1

    #@157
    .line 170
    .end local v1    # "j":I
    :cond_1
    const/4 v0, 0x0

    #@158
    :goto_2
    array-length v6, v5

    #@159
    if-ge v0, v6, :cond_3

    #@15b
    .line 172
    aget-object v6, v5, v0

    #@15d
    invoke-virtual {v3, v6}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    #@160
    move-result v1

    #@161
    .line 173
    .restart local v1    # "j":I
    if-eq v1, v0, :cond_2

    #@163
    .line 174
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@165
    new-instance v7, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    const-string/jumbo v8, "\tMismatch in stringToIndex: returned "

    #@16d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@170
    move-result-object v7

    #@171
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@174
    move-result-object v7

    #@175
    .line 175
    const-string/jumbo v8, " for lookup "

    #@178
    .line 174
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v7

    #@17c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v7

    #@180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v7

    #@184
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@187
    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@189
    goto :goto_2

    #@18a
    .line 178
    .end local v1    # "j":I
    :cond_3
    const/4 v0, 0x0

    #@18b
    :goto_3
    array-length v6, v5

    #@18c
    if-ge v0, v6, :cond_5

    #@18e
    .line 180
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    #@191
    move-result-object v4

    #@192
    .line 181
    .local v4, "w":Ljava/lang/String;
    aget-object v6, v5, v0

    #@194
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@197
    move-result v6

    #@198
    if-nez v6, :cond_4

    #@19a
    .line 182
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@19c
    new-instance v7, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    const-string/jumbo v8, "\tMismatch in indexToString: returned"

    #@1a4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v7

    #@1a8
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v7

    #@1ac
    .line 183
    const-string/jumbo v8, " for lookup "

    #@1af
    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v7

    #@1b3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v7

    #@1b7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v7

    #@1bb
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1be
    .line 178
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@1c0
    goto :goto_3

    #@1c1
    .line 186
    .end local v4    # "w":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    #@1c4
    .line 188
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c6
    new-instance v7, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    const-string/jumbo v8, "\nPass "

    #@1ce
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v7

    #@1d2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d5
    move-result-object v7

    #@1d6
    const-string/jumbo v8, " complete\n"

    #@1d9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v7

    #@1dd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v7

    #@1e1
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1e4
    .line 158
    add-int/lit8 v2, v2, 0x1

    #@1e6
    goto/16 :goto_0

    #@1e8
    .line 141
    .end local v0    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public indexToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_0

    #@3
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/String;

    #@d
    return-object v0
.end method

.method public removeAllElements()V
    .locals 3

    #@0
    .prologue
    .line 87
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    #@2
    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    #@5
    .line 88
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x65

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 89
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    #@c
    const/4 v2, -0x1

    #@d
    aput v2, v1, v0

    #@f
    .line 88
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 90
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    #@14
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    #@17
    .line 85
    return-void
.end method

.method public stringToIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 107
    if-nez p1, :cond_0

    #@3
    return v5

    #@4
    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v4

    #@8
    rem-int/lit8 v2, v4, 0x65

    #@a
    .line 110
    .local v2, "hashslot":I
    if-gez v2, :cond_1

    #@c
    neg-int v2, v2

    #@d
    .line 113
    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    #@f
    aget v1, v4, v2

    #@11
    .line 114
    .local v1, "hashlast":I
    move v0, v1

    #@12
    .line 115
    .local v0, "hashcandidate":I
    :goto_0
    if-eq v0, v5, :cond_3

    #@14
    .line 117
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    #@16
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 118
    return v0

    #@21
    .line 120
    :cond_2
    move v1, v0

    #@22
    .line 121
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    #@24
    invoke-virtual {v4, v0}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    .line 125
    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    #@2b
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@2e
    move-result v3

    #@2f
    .line 126
    .local v3, "newIndex":I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    #@31
    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@34
    .line 128
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    #@36
    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    #@39
    .line 129
    if-ne v1, v5, :cond_4

    #@3b
    .line 130
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    #@3d
    aput v3, v4, v2

    #@3f
    .line 134
    :goto_1
    return v3

    #@40
    .line 132
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    #@42
    invoke-virtual {v4, v3, v1}, Lorg/apache/xml/utils/IntVector;->setElementAt(II)V

    #@45
    goto :goto_1
.end method
