.class public Landroid/net/connectivity/android/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private blacklist mCurrentIndent:[C

.field private blacklist mCurrentLength:I

.field private blacklist mEmptyLine:Z

.field private blacklist mIndentBuilder:Ljava/lang/StringBuilder;

.field private blacklist mSingleChar:[C

.field private final blacklist mSingleIndent:Ljava/lang/String;

.field private final blacklist mWrapLength:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "writer"    # Ljava/io/Writer;

    .line 58
    const-string v0, "  "

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/net/connectivity/android/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 67
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "wrapLength"    # I

    .line 77
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 55
    new-array v0, v0, [C

    iput-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mSingleChar:[C

    .line 78
    iput-object p2, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 79
    iput p4, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mWrapLength:I

    .line 80
    if-eqz p3, :cond_1c

    .line 81
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1c
    return-void
.end method

.method private blacklist maybeWriteIndent()V
    .registers 4

    .line 244
    iget-boolean v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_27

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 246
    iget-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_27

    .line 247
    iget-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_1f

    .line 248
    iget-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 250
    :cond_1f
    iget-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v2, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v2

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 253
    :cond_27
    return-void
.end method


# virtual methods
.method public blacklist decreaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 134
    return-object p0
.end method

.method public blacklist increaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 124
    return-object p0
.end method

.method public blacklist print(Ljava/lang/String;Ljava/lang/Object;)Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 143
    if-nez p2, :cond_6

    .line 144
    const-string v0, "null"

    .local v0, "string":Ljava/lang/String;
    goto/16 :goto_9e

    .line 145
    .end local v0    # "string":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_21

    .line 147
    move-object v0, p2

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto/16 :goto_9e

    .line 148
    .end local v0    # "string":Ljava/lang/String;
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_32

    .line 149
    move-object v0, p2

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto/16 :goto_9e

    .line 150
    .end local v0    # "string":Ljava/lang/String;
    :cond_32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_42

    .line 151
    move-object v0, p2

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 152
    .end local v0    # "string":Ljava/lang/String;
    :cond_42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_52

    .line 153
    move-object v0, p2

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 154
    .end local v0    # "string":Ljava/lang/String;
    :cond_52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_62

    .line 155
    move-object v0, p2

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 156
    .end local v0    # "string":Ljava/lang/String;
    :cond_62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_72

    .line 157
    move-object v0, p2

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 158
    .end local v0    # "string":Ljava/lang/String;
    :cond_72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_82

    .line 159
    move-object v0, p2

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 160
    .end local v0    # "string":Ljava/lang/String;
    :cond_82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_92

    .line 161
    move-object v0, p2

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 163
    .end local v0    # "string":Ljava/lang/String;
    :cond_92
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_9e

    .line 166
    .end local v0    # "string":Ljava/lang/String;
    :cond_9a
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "string":Ljava/lang/String;
    :goto_9e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    return-object p0
.end method

.method public blacklist printHexInt(Ljava/lang/String;I)Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 178
    return-object p0
.end method

.method public whitelist test-api println()V
    .registers 2

    .line 183
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->write(I)V

    .line 184
    return-void
.end method

.method public blacklist setIndent(I)Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .registers 4
    .param p1, "indent"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, p1, :cond_f

    .line 112
    invoke-virtual {p0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->increaseIndent()Landroid/net/connectivity/android/util/IndentingPrintWriter;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 114
    .end local v0    # "i":I
    :cond_f
    return-object p0
.end method

.method public blacklist setIndent(Ljava/lang/String;)Landroid/net/connectivity/android/util/IndentingPrintWriter;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentIndent:[C

    .line 97
    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "c"    # I

    .line 188
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 189
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mSingleChar:[C

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->write([CII)V

    .line 190
    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 194
    new-array v0, p3, [C

    .line 195
    .local v0, "buf":[C
    sub-int v1, p3, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    invoke-virtual {p0, v0, v2, p3}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->write([CII)V

    .line 197
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 14
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 201
    iget-object v0, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 202
    .local v0, "indentLength":I
    add-int v1, p2, p3

    .line 203
    .local v1, "bufferEnd":I
    move v2, p2

    .line 204
    .local v2, "lineStart":I
    move v3, p2

    .line 207
    .local v3, "lineEnd":I
    :goto_a
    if-ge v3, v1, :cond_53

    .line 208
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "lineEnd":I
    .local v4, "lineEnd":I
    aget-char v3, p1, v3

    .line 209
    .local v3, "ch":C
    iget v5, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentLength:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentLength:I

    .line 210
    const/4 v5, 0x0

    const/16 v7, 0xa

    if-ne v3, v7, :cond_28

    .line 211
    invoke-direct {p0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 212
    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 213
    move v2, v4

    .line 214
    iput-boolean v6, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 215
    iput v5, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentLength:I

    .line 219
    :cond_28
    iget v8, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v8, :cond_51

    iget v8, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentLength:I

    iget v9, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v9, v0

    if-lt v8, v9, :cond_51

    .line 220
    iget-boolean v8, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v8, :cond_41

    .line 222
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 223
    iput-boolean v6, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 224
    sub-int v5, v4, v2

    iput v5, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_51

    .line 227
    :cond_41
    invoke-direct {p0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 228
    sub-int v8, v4, v2

    invoke-super {p0, p1, v2, v8}, Ljava/io/PrintWriter;->write([CII)V

    .line 229
    invoke-super {p0, v7}, Ljava/io/PrintWriter;->write(I)V

    .line 230
    iput-boolean v6, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mEmptyLine:Z

    .line 231
    move v2, v4

    .line 232
    iput v5, p0, Landroid/net/connectivity/android/util/IndentingPrintWriter;->mCurrentLength:I

    .line 235
    .end local v3    # "ch":C
    :cond_51
    :goto_51
    move v3, v4

    goto :goto_a

    .line 237
    .end local v4    # "lineEnd":I
    .local v3, "lineEnd":I
    :cond_53
    if-eq v2, v3, :cond_5d

    .line 238
    invoke-direct {p0}, Landroid/net/connectivity/android/util/IndentingPrintWriter;->maybeWriteIndent()V

    .line 239
    sub-int v4, v3, v2

    invoke-super {p0, p1, v2, v4}, Ljava/io/PrintWriter;->write([CII)V

    .line 241
    :cond_5d
    return-void
.end method
