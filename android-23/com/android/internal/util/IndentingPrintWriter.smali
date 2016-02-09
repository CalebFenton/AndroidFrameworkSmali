.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    #@4
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "singleIndent"    # Ljava/lang/String;
    .param p3, "wrapLength"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@3
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    #@a
    .line 46
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@d
    .line 54
    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    #@f
    .line 55
    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    #@11
    .line 52
    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 126
    iput-boolean v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@7
    .line 127
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 128
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    #@11
    if-nez v0, :cond_0

    #@13
    .line 129
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    #@1f
    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    #@21
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    #@23
    array-length v1, v1

    #@24
    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    #@27
    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@c
    .line 65
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    #@f
    .line 63
    return-void
.end method

.method public increaseIndent()V
    .locals 2

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    .line 60
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    #@a
    .line 58
    return-void
.end method

.method public printHexPair(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "=0x"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 76
    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 68
    return-void
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, " "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    #@26
    .line 72
    return-void
.end method

.method public write([CII)V
    .locals 11
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    const/16 v10, 0xa

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    .line 82
    iget-object v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    #@6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@9
    move-result v2

    #@a
    .line 83
    .local v2, "indentLength":I
    add-int v0, p2, p3

    #@c
    .line 84
    .local v0, "bufferEnd":I
    move v5, p2

    #@d
    .line 85
    .local v5, "lineStart":I
    move v3, p2

    #@e
    .local v3, "lineEnd":I
    move v4, v3

    #@f
    .line 88
    .end local v3    # "lineEnd":I
    .local v4, "lineEnd":I
    :goto_0
    if-ge v4, v0, :cond_3

    #@11
    .line 89
    add-int/lit8 v3, v4, 0x1

    #@13
    .end local v4    # "lineEnd":I
    .restart local v3    # "lineEnd":I
    aget-char v1, p1, v4

    #@15
    .line 90
    .local v1, "ch":C
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    #@17
    add-int/lit8 v6, v6, 0x1

    #@19
    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    #@1b
    .line 91
    if-ne v1, v10, :cond_0

    #@1d
    .line 92
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    #@20
    .line 93
    sub-int v6, v3, v5

    #@22
    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    #@25
    .line 94
    move v5, v3

    #@26
    .line 95
    iput-boolean v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@28
    .line 96
    iput v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    #@2a
    .line 100
    :cond_0
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    #@2c
    if-lez v6, :cond_1

    #@2e
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    #@30
    iget v7, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    #@32
    sub-int/2addr v7, v2

    #@33
    if-lt v6, v7, :cond_1

    #@35
    .line 101
    iget-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@37
    if-nez v6, :cond_2

    #@39
    .line 103
    invoke-super {p0, v10}, Ljava/io/PrintWriter;->write(I)V

    #@3c
    .line 104
    iput-boolean v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@3e
    .line 105
    sub-int v6, v3, v5

    #@40
    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    #@42
    :cond_1
    :goto_1
    move v4, v3

    #@43
    .end local v3    # "lineEnd":I
    .restart local v4    # "lineEnd":I
    goto :goto_0

    #@44
    .line 108
    .end local v4    # "lineEnd":I
    .restart local v3    # "lineEnd":I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    #@47
    .line 109
    sub-int v6, v3, v5

    #@49
    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    #@4c
    .line 110
    invoke-super {p0, v10}, Ljava/io/PrintWriter;->write(I)V

    #@4f
    .line 111
    iput-boolean v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    #@51
    .line 112
    move v5, v3

    #@52
    .line 113
    iput v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    #@54
    goto :goto_1

    #@55
    .line 118
    .end local v1    # "ch":C
    .end local v3    # "lineEnd":I
    .restart local v4    # "lineEnd":I
    :cond_3
    if-eq v5, v4, :cond_4

    #@57
    .line 119
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    #@5a
    .line 120
    sub-int v6, v4, v5

    #@5c
    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    #@5f
    .line 81
    :cond_4
    return-void
.end method
