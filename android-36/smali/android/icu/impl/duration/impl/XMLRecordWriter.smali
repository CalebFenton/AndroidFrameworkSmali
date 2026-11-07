.class public Landroid/icu/impl/duration/impl/XMLRecordWriter;
.super Ljava/lang/Object;
.source "XMLRecordWriter.java"

# interfaces
.implements Landroid/icu/impl/duration/impl/RecordWriter;


# static fields
.field private static final blacklist INDENT:Ljava/lang/String; = "    "

.field static final blacklist NULL_NAME:Ljava/lang/String; = "Null"


# instance fields
.field private blacklist nameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist w:Ljava/io/Writer;


# direct methods
.method public constructor blacklist <init>(Ljava/io/Writer;)V
    .registers 3
    .param p1, "w"    # Ljava/io/Writer;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    .line 30
    return-void
.end method

.method private static blacklist ctos(C)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # C

    .line 76
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_7

    .line 77
    const-string v0, "&lt;"

    return-object v0

    .line 79
    :cond_7
    const/16 v0, 0x26

    if-ne p0, v0, :cond_e

    .line 80
    const-string v0, "&amp;"

    return-object v0

    .line 82
    :cond_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist internalString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "normalizedValue"    # Ljava/lang/String;

    .line 177
    if-eqz p2, :cond_33

    .line 178
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->newline()V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 181
    :cond_33
    return-void
.end method

.method private blacklist internalStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "normalizedValues"    # [Ljava/lang/String;

    .line 184
    if-eqz p2, :cond_2b

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->push(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v1, p2

    if-ge v0, v1, :cond_28

    .line 187
    aget-object v1, p2, v0

    .line 188
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_22

    .line 189
    const-string v1, "Null"

    .line 191
    :cond_22
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v1    # "value":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 193
    .end local v0    # "i":I
    :cond_28
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->pop()V

    .line 195
    :cond_2b
    return-void
.end method

.method private blacklist newline()V
    .registers 3

    .line 247
    const-string v0, "\n"

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 249
    const-string v1, "    "

    invoke-direct {p0, v1}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 251
    .end local v0    # "i":I
    :cond_16
    return-void
.end method

.method public static blacklist normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 132
    if-nez p0, :cond_4

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_4
    const/4 v0, 0x0

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 137
    .local v1, "inWhitespace":Z
    const/4 v2, 0x0

    .line 138
    .local v2, "c":C
    const/4 v3, 0x0

    .line 139
    .local v3, "special":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_65

    .line 140
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 141
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v5

    const/16 v6, 0x3c

    const/4 v7, 0x0

    if-eqz v5, :cond_36

    .line 142
    if-nez v0, :cond_2e

    if-nez v1, :cond_24

    const/16 v5, 0x20

    if-eq v2, v5, :cond_2e

    .line 143
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 145
    :cond_2e
    if-eqz v1, :cond_31

    .line 146
    goto :goto_62

    .line 148
    :cond_31
    const/4 v1, 0x1

    .line 149
    const/4 v3, 0x0

    .line 150
    const/16 v2, 0x20

    goto :goto_50

    .line 152
    :cond_36
    const/4 v1, 0x0

    .line 153
    if-eq v2, v6, :cond_40

    const/16 v5, 0x26

    if-ne v2, v5, :cond_3e

    goto :goto_40

    :cond_3e
    move v5, v7

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v5, 0x1

    :goto_41
    move v3, v5

    .line 154
    if-eqz v3, :cond_50

    if-nez v0, :cond_50

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 158
    :cond_50
    :goto_50
    if-eqz v0, :cond_62

    .line 159
    if-eqz v3, :cond_5f

    .line 160
    if-ne v2, v6, :cond_59

    const-string v5, "&lt;"

    goto :goto_5b

    :cond_59
    const-string v5, "&amp;"

    :goto_5b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 162
    :cond_5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 166
    .end local v4    # "i":I
    :cond_65
    if-eqz v0, :cond_6c

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 173
    :cond_6c
    return-object p0
.end method

.method private blacklist pop()V
    .registers 5

    .line 240
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 241
    .local v0, "ix":I
    iget-object v1, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->newline()V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method private blacklist push(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->newline()V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method private blacklist writeString(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;

    if-eqz v0, :cond_17

    .line 256
    :try_start_4
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 261
    goto :goto_17

    .line 257
    :catch_a
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public blacklist bool(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 61
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public blacklist boolArray(Ljava/lang/String;[Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Z

    .line 66
    if-eqz p2, :cond_17

    .line 67
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    .local v0, "stringValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_14

    .line 69
    aget-boolean v2, p2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 71
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    .end local v0    # "stringValues":[Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public blacklist character(Ljava/lang/String;C)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 87
    const v0, 0xffff

    if-eq p2, v0, :cond_c

    .line 88
    invoke-static {p2}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->ctos(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_c
    return-void
.end method

.method public blacklist characterArray(Ljava/lang/String;[C)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [C

    .line 94
    if-eqz p2, :cond_21

    .line 95
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 96
    .local v0, "stringValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_1e

    .line 97
    aget-char v2, p2, v1

    .line 98
    .local v2, "value":C
    const v3, 0xffff

    if-ne v2, v3, :cond_15

    .line 99
    const-string v3, "Null"

    aput-object v3, v0, v1

    goto :goto_1b

    .line 101
    :cond_15
    invoke-static {v2}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->ctos(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 96
    .end local v2    # "value":C
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 104
    .end local v1    # "i":I
    :cond_1e
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    .end local v0    # "stringValues":[Ljava/lang/String;
    :cond_21
    return-void
.end method

.method public blacklist close()Z
    .registers 6

    .line 42
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 43
    .local v0, "ix":I
    if-ltz v0, :cond_32

    .line 44
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->newline()V

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    .line 49
    .end local v2    # "name":Ljava/lang/String;
    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist flush()V
    .registers 2

    .line 54
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 56
    goto :goto_7

    .line 55
    :catch_6
    move-exception v0

    .line 57
    :goto_7
    return-void
.end method

.method public blacklist namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "value"    # I

    .line 110
    if-ltz p3, :cond_7

    .line 111
    aget-object v0, p2, p3

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_7
    return-void
.end method

.method public blacklist namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [B

    .line 117
    if-eqz p3, :cond_1c

    .line 118
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    .line 119
    .local v0, "stringValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_19

    .line 120
    aget-byte v2, p3, v1

    .line 121
    .local v2, "value":I
    if-gez v2, :cond_12

    .line 122
    const-string v3, "Null"

    aput-object v3, v0, v1

    goto :goto_16

    .line 124
    :cond_12
    aget-object v3, p2, v2

    aput-object v3, v0, v1

    .line 119
    .end local v2    # "value":I
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 127
    .end local v1    # "i":I
    :cond_19
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    .end local v0    # "stringValues":[Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method public blacklist open(Ljava/lang/String;)Z
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->newline()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordWriter;->nameStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist string(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 199
    invoke-static {p2}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public blacklist stringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .line 204
    if-eqz p2, :cond_2f

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->push(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v1, p2

    if-ge v0, v1, :cond_2c

    .line 207
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_26

    .line 209
    const-string v1, "Null"

    .line 211
    :cond_26
    invoke-direct {p0, p1, v1}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v1    # "value":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 213
    .end local v0    # "i":I
    :cond_2c
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->pop()V

    .line 215
    :cond_2f
    return-void
.end method

.method public blacklist stringTable(Ljava/lang/String;[[Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [[Ljava/lang/String;

    .line 219
    if-eqz p2, :cond_42

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->push(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v1, p2

    if-ge v0, v1, :cond_3f

    .line 222
    aget-object v1, p2, v0

    .line 223
    .local v1, "rowValues":[Ljava/lang/String;
    if-nez v1, :cond_39

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "List"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Null"

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->internalString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 226
    :cond_39
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 221
    .end local v1    # "rowValues":[Ljava/lang/String;
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 229
    .end local v0    # "i":I
    :cond_3f
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordWriter;->pop()V

    .line 231
    :cond_42
    return-void
.end method
