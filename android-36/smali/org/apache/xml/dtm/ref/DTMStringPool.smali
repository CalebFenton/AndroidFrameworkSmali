.class public Lorg/apache/xml/dtm/ref/DTMStringPool;
.super Ljava/lang/Object;
.source "DTMStringPool.java"


# static fields
.field static final greylist HASHPRIME:I = 0x65

.field public static final greylist NULL:I = -0x1


# instance fields
.field greylist m_hashChain:Lorg/apache/xml/utils/IntVector;

.field greylist m_hashStart:[I

.field greylist m_intToString:Ljava/util/Vector;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/16 v0, 0x200

    .line 82
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    .line 61
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    .line 73
    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0, p1}, Lorg/apache/xml/utils/IntVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    .line 74
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    .line 77
    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 42

    .line 143
    const-string v39, "Thirty-Eight"

    const-string v40, "Thirty-Nine"

    const-string v1, "Zero"

    const-string v2, "One"

    const-string v3, "Two"

    const-string v4, "Three"

    const-string v5, "Four"

    const-string v6, "Five"

    const-string v7, "Six"

    const-string v8, "Seven"

    const-string v9, "Eight"

    const-string v10, "Nine"

    const-string v11, "Ten"

    const-string v12, "Eleven"

    const-string v13, "Twelve"

    const-string v14, "Thirteen"

    const-string v15, "Fourteen"

    const-string v16, "Fifteen"

    const-string v17, "Sixteen"

    const-string v18, "Seventeen"

    const-string v19, "Eighteen"

    const-string v20, "Nineteen"

    const-string v21, "Twenty"

    const-string v22, "Twenty-One"

    const-string v23, "Twenty-Two"

    const-string v24, "Twenty-Three"

    const-string v25, "Twenty-Four"

    const-string v26, "Twenty-Five"

    const-string v27, "Twenty-Six"

    const-string v28, "Twenty-Seven"

    const-string v29, "Twenty-Eight"

    const-string v30, "Twenty-Nine"

    const-string v31, "Thirty"

    const-string v32, "Thirty-One"

    const-string v33, "Thirty-Two"

    const-string v34, "Thirty-Three"

    const-string v35, "Thirty-Four"

    const-string v36, "Thirty-Five"

    const-string v37, "Thirty-Six"

    const-string v38, "Thirty-Seven"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    .line 154
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    .line 156
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "If no complaints are printed below, we passed initial test."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_62
    const/4 v4, 0x1

    if-gt v3, v4, :cond_10f

    move v4, v2

    :goto_66
    const/16 v5, 0x28

    if-ge v4, v5, :cond_93

    .line 164
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_90

    .line 166
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMismatch populating pool: assigned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for create "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_93
    move v4, v2

    .line 170
    :goto_94
    const-string v6, " for lookup "

    if-ge v4, v5, :cond_bf

    .line 172
    aget-object v7, v0, v4

    invoke-virtual {v1, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_bc

    .line 174
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tMismatch in stringToIndex: returned "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_bc
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_bf
    move v4, v2

    :goto_c0
    if-ge v4, v5, :cond_ed

    .line 180
    invoke-virtual {v1, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    aget-object v8, v0, v4

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ea

    .line 182
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\tMismatch in indexToString: returned"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_ea
    add-int/lit8 v4, v4, 0x1

    goto :goto_c0

    .line 186
    :cond_ed
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->removeAllElements()V

    .line 188
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPass "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " complete\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_62

    :cond_10f
    return-void
.end method


# virtual methods
.method public greylist indexToString(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_5
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public greylist removeAllElements()V
    .registers 4

    .line 87
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x65

    if-ge v0, v1, :cond_12

    .line 89
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 90
    :cond_12
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    return-void
.end method

.method public greylist stringToIndex(Ljava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 109
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/lit8 v1, v1, 0x65

    if-gez v1, :cond_d

    neg-int v1, v1

    .line 113
    :cond_d
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    aget v2, v2, v1

    move v3, v2

    :goto_12
    if-eq v2, v0, :cond_2b

    .line 117
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    .line 121
    :cond_21
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v3

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_12

    .line 125
    :cond_2b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 126
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_intToString:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {p1, v0}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    if-ne v3, v0, :cond_42

    .line 130
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashStart:[I

    aput v2, p0, v1

    return v2

    .line 132
    :cond_42
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMStringPool;->m_hashChain:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {p0, v2, v3}, Lorg/apache/xml/utils/IntVector;->setElementAt(II)V

    return v2
.end method
