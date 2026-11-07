.class public Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
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

    .line 58
    const-string v0, "  "

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 62
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 77
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    .line 55
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mSingleChar:[C

    .line 78
    iput-object p2, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 79
    iput p4, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mWrapLength:I

    if-eqz p3, :cond_1a

    .line 81
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    return-void
.end method

.method private blacklist maybeWriteIndent()V
    .registers 4

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_25

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_1f

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentIndent:[C

    .line 250
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_25
    return-void
.end method


# virtual methods
.method public blacklist decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public blacklist increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public blacklist print(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 5

    if-nez p2, :cond_6

    .line 144
    const-string p2, "null"

    goto/16 :goto_94

    .line 145
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [Z

    if-ne v0, v1, :cond_20

    .line 147
    check-cast p2, [Z

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_94

    .line 148
    :cond_20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2f

    .line 149
    check-cast p2, [B

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 150
    :cond_2f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [C

    if-ne v0, v1, :cond_3e

    .line 151
    check-cast p2, [C

    invoke-static {p2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 152
    :cond_3e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [D

    if-ne v0, v1, :cond_4d

    .line 153
    check-cast p2, [D

    invoke-static {p2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 154
    :cond_4d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [F

    if-ne v0, v1, :cond_5c

    .line 155
    check-cast p2, [F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 156
    :cond_5c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [I

    if-ne v0, v1, :cond_6b

    .line 157
    check-cast p2, [I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 158
    :cond_6b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [J

    if-ne v0, v1, :cond_7a

    .line 159
    check-cast p2, [J

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 160
    :cond_7a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [S

    if-ne v0, v1, :cond_89

    .line 161
    check-cast p2, [S

    invoke-static {p2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 163
    :cond_89
    check-cast p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_94

    .line 166
    :cond_90
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 168
    :goto_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist printHexInt(Ljava/lang/String;I)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist test-api println()V
    .registers 2

    const/16 v0, 0xa

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->write(I)V

    return-void
.end method

.method public blacklist setIndent(I)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_6
    if-ge v1, p1, :cond_e

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    return-object p0
.end method

.method public blacklist setIndent(Ljava/lang/String;)Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentIndent:[C

    return-object p0
.end method

.method public whitelist test-api write(I)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mSingleChar:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 7

    .line 194
    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    .line 195
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 196
    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 11

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p3, p2

    move v1, p2

    :goto_8
    if-ge p2, p3, :cond_4f

    add-int/lit8 v2, p2, 0x1

    .line 208
    aget-char p2, p1, p2

    .line 209
    iget v3, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentLength:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentLength:I

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_26

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 212
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 214
    iput-boolean v4, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    .line 215
    iput v3, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    .line 219
    :cond_26
    iget p2, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mWrapLength:I

    if-lez p2, :cond_4d

    iget v6, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentLength:I

    sub-int/2addr p2, v0

    if-lt v6, p2, :cond_4d

    .line 220
    iget-boolean p2, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    if-nez p2, :cond_3d

    .line 222
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 223
    iput-boolean v4, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    sub-int p2, v2, v1

    .line 224
    iput p2, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentLength:I

    goto :goto_4d

    .line 227
    :cond_3d
    invoke-direct {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 228
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 229
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 230
    iput-boolean v4, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mEmptyLine:Z

    .line 232
    iput v3, p0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    :cond_4d
    :goto_4d
    move p2, v2

    goto :goto_8

    :cond_4f
    if-eq v1, p2, :cond_58

    .line 238
    invoke-direct {p0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->maybeWriteIndent()V

    sub-int/2addr p2, v1

    .line 239
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_58
    return-void
.end method
