.class public abstract Ljava/text/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/Format$Field;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42743ed16f0e7bdL


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static upTo(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;C)Z
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "stop"    # C

    #@0
    .prologue
    const/16 v8, 0x27

    #@2
    const/4 v7, 0x0

    #@3
    .line 179
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@6
    move-result v1

    #@7
    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v3

    #@b
    .line 181
    .local v3, "length":I
    const/4 v4, 0x0

    #@c
    .line 182
    .local v4, "numConsecutiveQuotes":I
    const/4 v5, 0x0

    #@d
    .local v5, "quote":Z
    move v2, v1

    #@e
    .line 183
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_5

    #@10
    .line 184
    add-int/lit8 v1, v2, 0x1

    #@12
    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v0

    #@16
    .line 185
    .local v0, "ch":C
    if-ne v0, v8, :cond_2

    #@18
    .line 186
    add-int/lit8 v4, v4, 0x1

    #@1a
    .line 187
    if-eqz v4, :cond_0

    #@1c
    rem-int/lit8 v6, v4, 0x2

    #@1e
    if-nez v6, :cond_0

    #@20
    .line 188
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@23
    .line 190
    :cond_0
    if-eqz v5, :cond_1

    #@25
    const/4 v5, 0x0

    #@26
    :goto_1
    move v2, v1

    #@27
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@28
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_1
    const/4 v5, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 191
    :cond_2
    if-ne v0, p3, :cond_3

    #@2c
    if-eqz v5, :cond_4

    #@2e
    .line 195
    :cond_3
    const/4 v4, 0x0

    #@2f
    .line 196
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@32
    goto :goto_1

    #@33
    .line 192
    :cond_4
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@36
    .line 193
    const/4 v6, 0x1

    #@37
    return v6

    #@38
    .line 200
    .end local v0    # "ch":C
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_5
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@3b
    .line 201
    return v7
.end method

.method static upToWithQuotes(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuffer;CC)Z
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "stop"    # C
    .param p4, "start"    # C

    #@0
    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    #@3
    move-result v2

    #@4
    .local v2, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v4

    #@8
    .local v4, "length":I
    const/4 v1, 0x1

    #@9
    .line 207
    .local v1, "count":I
    const/4 v5, 0x0

    #@a
    .local v5, "quote":Z
    move v3, v2

    #@b
    .line 208
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v3, v4, :cond_5

    #@d
    .line 209
    add-int/lit8 v2, v3, 0x1

    #@f
    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    .line 210
    .local v0, "ch":C
    const/16 v6, 0x27

    #@15
    if-ne v0, v6, :cond_0

    #@17
    .line 211
    if-eqz v5, :cond_2

    #@19
    const/4 v5, 0x0

    #@1a
    .line 213
    :cond_0
    :goto_1
    if-nez v5, :cond_4

    #@1c
    .line 214
    if-ne v0, p3, :cond_1

    #@1e
    .line 215
    add-int/lit8 v1, v1, -0x1

    #@20
    .line 217
    :cond_1
    if-nez v1, :cond_3

    #@22
    .line 218
    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@25
    .line 219
    const/4 v6, 0x1

    #@26
    return v6

    #@27
    .line 211
    :cond_2
    const/4 v5, 0x1

    #@28
    goto :goto_1

    #@29
    .line 221
    :cond_3
    if-ne v0, p4, :cond_4

    #@2b
    .line 222
    add-int/lit8 v1, v1, 0x1

    #@2d
    .line 225
    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    move v3, v2

    #@31
    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    #@32
    .line 227
    .end local v0    # "ch":C
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v7, "Unmatched braces in the pattern"

    #@37
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 78
    :catch_0
    move-exception v0

    #@6
    .line 79
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public final format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    new-instance v1, Ljava/text/FieldPosition;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    #@b
    invoke-virtual {p0, p1, v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 136
    new-instance v0, Ljava/text/AttributedString;

    #@2
    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 149
    new-instance v0, Ljava/text/ParsePosition;

    #@3
    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 150
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 151
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 152
    new-instance v2, Ljava/text/ParseException;

    #@12
    const-string/jumbo v3, "Parse failure"

    #@15
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    #@18
    move-result v4

    #@19
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1c
    throw v2

    #@1d
    .line 154
    :cond_0
    return-object v1
.end method

.method public abstract parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
.end method
