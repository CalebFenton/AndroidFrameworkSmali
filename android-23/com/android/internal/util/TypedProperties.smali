.class public Lcom/android/internal/util/TypedProperties;
.super Ljava/util/HashMap;
.source "TypedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TypedProperties$ParseException;,
        Lcom/android/internal/util/TypedProperties$TypeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final NULL_STRING:Ljava/lang/String;

.field public static final STRING_NOT_SET:I = -0x1

.field public static final STRING_NULL:I = 0x0

.field public static final STRING_SET:I = 0x1

.field public static final STRING_TYPE_MISMATCH:I = -0x2

.field static final TYPE_BOOLEAN:I = 0x5a

.field static final TYPE_BYTE:I = 0x149

.field static final TYPE_DOUBLE:I = 0x846

.field static final TYPE_ERROR:I = -0x1

.field static final TYPE_FLOAT:I = 0x446

.field static final TYPE_INT:I = 0x449

.field static final TYPE_LONG:I = 0x849

.field static final TYPE_SHORT:I = 0x249

.field static final TYPE_STRING:I = 0x734c

.field static final TYPE_UNSET:I = 0x78


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/String;

    #@2
    const-string/jumbo v1, "<TypedProperties:NULL_STRING>"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    #@a
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 343
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    .line 342
    return-void
.end method

.method static initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;
    .locals 8
    .param p0, "r"    # Ljava/io/Reader;

    #@0
    .prologue
    const/16 v7, 0x20

    #@2
    const/16 v6, 0xd

    #@4
    const/16 v5, 0xa

    #@6
    const/16 v4, 0x9

    #@8
    const/4 v3, 0x1

    #@9
    .line 39
    new-instance v0, Ljava/io/StreamTokenizer;

    #@b
    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    #@e
    .line 42
    .local v0, "st":Ljava/io/StreamTokenizer;
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    #@11
    .line 50
    const/16 v1, 0x30

    #@13
    const/16 v2, 0x39

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@18
    .line 51
    const/16 v1, 0x41

    #@1a
    const/16 v2, 0x5a

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@1f
    .line 52
    const/16 v1, 0x61

    #@21
    const/16 v2, 0x7a

    #@23
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@26
    .line 53
    const/16 v1, 0x5f

    #@28
    const/16 v2, 0x5f

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@2d
    .line 54
    const/16 v1, 0x24

    #@2f
    const/16 v2, 0x24

    #@31
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@34
    .line 55
    const/16 v1, 0x2e

    #@36
    const/16 v2, 0x2e

    #@38
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@3b
    .line 56
    const/16 v1, 0x2d

    #@3d
    const/16 v2, 0x2d

    #@3f
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@42
    .line 57
    const/16 v1, 0x2b

    #@44
    const/16 v2, 0x2b

    #@46
    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    #@49
    .line 60
    const/16 v1, 0x3d

    #@4b
    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    #@4e
    .line 63
    invoke-virtual {v0, v7, v7}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    #@51
    .line 64
    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    #@54
    .line 65
    invoke-virtual {v0, v5, v5}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    #@57
    .line 66
    invoke-virtual {v0, v6, v6}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    #@5a
    .line 67
    const/16 v1, 0x22

    #@5c
    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    #@5f
    .line 70
    invoke-virtual {v0, v3}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    #@62
    .line 71
    invoke-virtual {v0, v3}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    #@65
    .line 73
    return-object v0
.end method

.method static interpretType(Ljava/lang/String;)I
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    const-string/jumbo v0, "unset"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 112
    const/16 v0, 0x78

    #@b
    return v0

    #@c
    .line 113
    :cond_0
    const-string/jumbo v0, "boolean"

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 114
    const/16 v0, 0x5a

    #@17
    return v0

    #@18
    .line 115
    :cond_1
    const-string/jumbo v0, "byte"

    #@1b
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 116
    const/16 v0, 0x149

    #@23
    return v0

    #@24
    .line 117
    :cond_2
    const-string/jumbo v0, "short"

    #@27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 118
    const/16 v0, 0x249

    #@2f
    return v0

    #@30
    .line 119
    :cond_3
    const-string/jumbo v0, "int"

    #@33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 120
    const/16 v0, 0x449

    #@3b
    return v0

    #@3c
    .line 121
    :cond_4
    const-string/jumbo v0, "long"

    #@3f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-eqz v0, :cond_5

    #@45
    .line 122
    const/16 v0, 0x849

    #@47
    return v0

    #@48
    .line 123
    :cond_5
    const-string/jumbo v0, "float"

    #@4b
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_6

    #@51
    .line 124
    const/16 v0, 0x446

    #@53
    return v0

    #@54
    .line 125
    :cond_6
    const-string/jumbo v0, "double"

    #@57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_7

    #@5d
    .line 126
    const/16 v0, 0x846

    #@5f
    return v0

    #@60
    .line 127
    :cond_7
    const-string/jumbo v0, "String"

    #@63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_8

    #@69
    .line 128
    const/16 v0, 0x734c

    #@6b
    return v0

    #@6c
    .line 130
    :cond_8
    const/4 v0, -0x1

    #@6d
    return v0
.end method

.method static parse(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 14
    .param p0, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/TypedProperties$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v13, 0x78

    #@2
    const/4 v12, -0x1

    #@3
    const/4 v11, -0x3

    #@4
    const/4 v10, 0x0

    #@5
    .line 142
    invoke-static {p0}, Lcom/android/internal/util/TypedProperties;->initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;

    #@8
    move-result-object v4

    #@9
    .line 147
    .local v4, "st":Ljava/io/StreamTokenizer;
    const-string/jumbo v0, "[a-zA-Z_$][0-9a-zA-Z_$]*"

    #@c
    .line 149
    .local v0, "identifierPattern":Ljava/lang/String;
    const-string/jumbo v8, "([a-zA-Z_$][0-9a-zA-Z_$]*\\.)*[a-zA-Z_$][0-9a-zA-Z_$]*"

    #@f
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@12
    move-result-object v3

    #@13
    .line 156
    .local v3, "propertyNamePattern":Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    #@16
    move-result v5

    #@17
    .line 157
    .local v5, "token":I
    if-ne v5, v12, :cond_1

    #@19
    .line 141
    return-void

    #@1a
    .line 160
    :cond_1
    if-eq v5, v11, :cond_2

    #@1c
    .line 161
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@1e
    const-string/jumbo v9, "type name"

    #@21
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@24
    throw v8

    #@25
    .line 163
    :cond_2
    iget-object v8, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@27
    invoke-static {v8}, Lcom/android/internal/util/TypedProperties;->interpretType(Ljava/lang/String;)I

    #@2a
    move-result v6

    #@2b
    .line 164
    .local v6, "type":I
    if-ne v6, v12, :cond_3

    #@2d
    .line 165
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@2f
    const-string/jumbo v9, "valid type name"

    #@32
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@35
    throw v8

    #@36
    .line 167
    :cond_3
    iput-object v10, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@38
    .line 169
    if-ne v6, v13, :cond_4

    #@3a
    .line 171
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    #@3d
    move-result v5

    #@3e
    .line 172
    const/16 v8, 0x28

    #@40
    if-eq v5, v8, :cond_4

    #@42
    .line 173
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@44
    const-string/jumbo v9, "\'(\'"

    #@47
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@4a
    throw v8

    #@4b
    .line 178
    :cond_4
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    #@4e
    move-result v5

    #@4f
    .line 179
    if-eq v5, v11, :cond_5

    #@51
    .line 180
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@53
    const-string/jumbo v9, "property name"

    #@56
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@59
    throw v8

    #@5a
    .line 182
    :cond_5
    iget-object v2, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@5c
    .line 183
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    #@63
    move-result v8

    #@64
    if-nez v8, :cond_6

    #@66
    .line 184
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@68
    const-string/jumbo v9, "valid property name"

    #@6b
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@6e
    throw v8

    #@6f
    .line 186
    :cond_6
    iput-object v10, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@71
    .line 188
    if-ne v6, v13, :cond_8

    #@73
    .line 190
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    #@76
    move-result v5

    #@77
    .line 191
    const/16 v8, 0x29

    #@79
    if-eq v5, v8, :cond_7

    #@7b
    .line 192
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@7d
    const-string/jumbo v9, "\')\'"

    #@80
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@83
    throw v8

    #@84
    .line 194
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    .line 217
    :goto_0
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    #@8a
    move-result v5

    #@8b
    .line 218
    const/16 v8, 0x3b

    #@8d
    if-eq v5, v8, :cond_0

    #@8f
    .line 219
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@91
    const-string/jumbo v9, "\';\'"

    #@94
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@97
    throw v8

    #@98
    .line 197
    :cond_8
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    #@9b
    move-result v5

    #@9c
    .line 198
    const/16 v8, 0x3d

    #@9e
    if-eq v5, v8, :cond_9

    #@a0
    .line 199
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@a2
    const-string/jumbo v9, "\'=\'"

    #@a5
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@a8
    throw v8

    #@a9
    .line 203
    :cond_9
    invoke-static {v4, v6}, Lcom/android/internal/util/TypedProperties;->parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;

    #@ac
    move-result-object v7

    #@ad
    .line 204
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    move-result-object v1

    #@b1
    .line 205
    .local v1, "oldValue":Ljava/lang/Object;
    if-eqz v1, :cond_a

    #@b3
    .line 208
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b6
    move-result-object v8

    #@b7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ba
    move-result-object v9

    #@bb
    if-eq v8, v9, :cond_a

    #@bd
    .line 209
    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    #@bf
    .line 210
    const-string/jumbo v9, "(property previously declared as a different type)"

    #@c2
    .line 209
    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@c5
    throw v8

    #@c6
    .line 213
    :cond_a
    invoke-interface {p1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    goto :goto_0
.end method

.method static parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;
    .locals 12
    .param p0, "st"    # Ljava/io/StreamTokenizer;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, -0x3

    #@1
    .line 234
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    #@4
    move-result v3

    #@5
    .line 236
    .local v3, "token":I
    const/16 v9, 0x5a

    #@7
    if-ne p1, v9, :cond_3

    #@9
    .line 237
    if-eq v3, v11, :cond_0

    #@b
    .line 238
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@d
    const-string/jumbo v10, "boolean constant"

    #@10
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@13
    throw v9

    #@14
    .line 241
    :cond_0
    const-string/jumbo v9, "true"

    #@17
    iget-object v10, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@19
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v9

    #@1d
    if-eqz v9, :cond_1

    #@1f
    .line 242
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@21
    return-object v9

    #@22
    .line 243
    :cond_1
    const-string/jumbo v9, "false"

    #@25
    iget-object v10, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@27
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v9

    #@2b
    if-eqz v9, :cond_2

    #@2d
    .line 244
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2f
    return-object v9

    #@30
    .line 247
    :cond_2
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@32
    const-string/jumbo v10, "boolean constant"

    #@35
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@38
    throw v9

    #@39
    .line 248
    :cond_3
    and-int/lit16 v9, p1, 0xff

    #@3b
    const/16 v10, 0x49

    #@3d
    if-ne v9, v10, :cond_d

    #@3f
    .line 249
    if-eq v3, v11, :cond_4

    #@41
    .line 250
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@43
    const-string/jumbo v10, "integer constant"

    #@46
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@49
    throw v9

    #@4a
    .line 259
    :cond_4
    :try_start_0
    iget-object v9, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@4c
    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    #@4f
    move-result-object v9

    #@50
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    move-result-wide v6

    #@54
    .line 265
    .local v6, "value":J
    shr-int/lit8 v9, p1, 0x8

    #@56
    and-int/lit16 v8, v9, 0xff

    #@58
    .line 266
    .local v8, "width":I
    packed-switch v8, :pswitch_data_0

    #@5b
    .line 288
    :pswitch_0
    new-instance v9, Ljava/lang/IllegalStateException;

    #@5d
    .line 289
    new-instance v10, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v11, "Internal error; unexpected integer type width "

    #@65
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v10

    #@69
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v10

    #@6d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v10

    #@71
    .line 288
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@74
    throw v9

    #@75
    .line 260
    .end local v6    # "value":J
    .end local v8    # "width":I
    :catch_0
    move-exception v2

    #@76
    .line 261
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@78
    const-string/jumbo v10, "integer constant"

    #@7b
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@7e
    throw v9

    #@7f
    .line 268
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "value":J
    .restart local v8    # "width":I
    :pswitch_1
    const-wide/16 v10, -0x80

    #@81
    cmp-long v9, v6, v10

    #@83
    if-ltz v9, :cond_5

    #@85
    const-wide/16 v10, 0x7f

    #@87
    cmp-long v9, v6, v10

    #@89
    if-lez v9, :cond_6

    #@8b
    .line 269
    :cond_5
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@8d
    const-string/jumbo v10, "8-bit integer constant"

    #@90
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@93
    throw v9

    #@94
    .line 271
    :cond_6
    new-instance v9, Ljava/lang/Byte;

    #@96
    long-to-int v10, v6

    #@97
    int-to-byte v10, v10

    #@98
    invoke-direct {v9, v10}, Ljava/lang/Byte;-><init>(B)V

    #@9b
    return-object v9

    #@9c
    .line 273
    :pswitch_2
    const-wide/16 v10, -0x8000

    #@9e
    cmp-long v9, v6, v10

    #@a0
    if-ltz v9, :cond_7

    #@a2
    const-wide/16 v10, 0x7fff

    #@a4
    cmp-long v9, v6, v10

    #@a6
    if-lez v9, :cond_8

    #@a8
    .line 274
    :cond_7
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@aa
    const-string/jumbo v10, "16-bit integer constant"

    #@ad
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@b0
    throw v9

    #@b1
    .line 276
    :cond_8
    new-instance v9, Ljava/lang/Short;

    #@b3
    long-to-int v10, v6

    #@b4
    int-to-short v10, v10

    #@b5
    invoke-direct {v9, v10}, Ljava/lang/Short;-><init>(S)V

    #@b8
    return-object v9

    #@b9
    .line 278
    :pswitch_3
    const-wide/32 v10, -0x80000000

    #@bc
    cmp-long v9, v6, v10

    #@be
    if-ltz v9, :cond_9

    #@c0
    const-wide/32 v10, 0x7fffffff

    #@c3
    cmp-long v9, v6, v10

    #@c5
    if-lez v9, :cond_a

    #@c7
    .line 279
    :cond_9
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@c9
    const-string/jumbo v10, "32-bit integer constant"

    #@cc
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@cf
    throw v9

    #@d0
    .line 281
    :cond_a
    new-instance v9, Ljava/lang/Integer;

    #@d2
    long-to-int v10, v6

    #@d3
    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    #@d6
    return-object v9

    #@d7
    .line 283
    :pswitch_4
    const-wide/high16 v10, -0x8000000000000000L

    #@d9
    cmp-long v9, v6, v10

    #@db
    if-ltz v9, :cond_b

    #@dd
    const-wide v10, 0x7fffffffffffffffL

    #@e2
    cmp-long v9, v6, v10

    #@e4
    if-lez v9, :cond_c

    #@e6
    .line 284
    :cond_b
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@e8
    const-string/jumbo v10, "64-bit integer constant"

    #@eb
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@ee
    throw v9

    #@ef
    .line 286
    :cond_c
    new-instance v9, Ljava/lang/Long;

    #@f1
    invoke-direct {v9, v6, v7}, Ljava/lang/Long;-><init>(J)V

    #@f4
    return-object v9

    #@f5
    .line 291
    .end local v6    # "value":J
    .end local v8    # "width":I
    :cond_d
    and-int/lit16 v9, p1, 0xff

    #@f7
    const/16 v10, 0x46

    #@f9
    if-ne v9, v10, :cond_13

    #@fb
    .line 292
    if-eq v3, v11, :cond_e

    #@fd
    .line 293
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@ff
    const-string/jumbo v10, "float constant"

    #@102
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@105
    throw v9

    #@106
    .line 306
    :cond_e
    :try_start_1
    iget-object v9, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@108
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@10b
    move-result-wide v4

    #@10c
    .line 312
    .local v4, "value":D
    shr-int/lit8 v9, p1, 0x8

    #@10e
    and-int/lit16 v9, v9, 0xff

    #@110
    const/4 v10, 0x4

    #@111
    if-ne v9, v10, :cond_12

    #@113
    .line 314
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    #@116
    move-result-wide v0

    #@117
    .line 315
    .local v0, "absValue":D
    const-wide/16 v10, 0x0

    #@119
    cmpl-double v9, v0, v10

    #@11b
    if-eqz v9, :cond_f

    #@11d
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    #@120
    move-result v9

    #@121
    if-eqz v9, :cond_10

    #@123
    .line 320
    :cond_f
    new-instance v9, Ljava/lang/Float;

    #@125
    double-to-float v10, v4

    #@126
    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    #@129
    return-object v9

    #@12a
    .line 307
    .end local v0    # "absValue":D
    .end local v4    # "value":D
    :catch_1
    move-exception v2

    #@12b
    .line 308
    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@12d
    const-string/jumbo v10, "float constant"

    #@130
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@133
    throw v9

    #@134
    .line 315
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "absValue":D
    .restart local v4    # "value":D
    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    #@137
    move-result v9

    #@138
    if-nez v9, :cond_f

    #@13a
    .line 316
    const-wide/high16 v10, 0x36a0000000000000L    # 1.401298464324817E-45

    #@13c
    cmpg-double v9, v0, v10

    #@13e
    if-ltz v9, :cond_11

    #@140
    const-wide v10, 0x47efffffe0000000L    # 3.4028234663852886E38

    #@145
    cmpl-double v9, v0, v10

    #@147
    if-lez v9, :cond_f

    #@149
    .line 317
    :cond_11
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@14b
    const-string/jumbo v10, "32-bit float constant"

    #@14e
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@151
    throw v9

    #@152
    .line 323
    .end local v0    # "absValue":D
    :cond_12
    new-instance v9, Ljava/lang/Double;

    #@154
    invoke-direct {v9, v4, v5}, Ljava/lang/Double;-><init>(D)V

    #@157
    return-object v9

    #@158
    .line 325
    .end local v4    # "value":D
    :cond_13
    const/16 v9, 0x734c

    #@15a
    if-ne p1, v9, :cond_16

    #@15c
    .line 327
    const/16 v9, 0x22

    #@15e
    if-ne v3, v9, :cond_14

    #@160
    .line 328
    iget-object v9, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@162
    return-object v9

    #@163
    .line 329
    :cond_14
    if-ne v3, v11, :cond_15

    #@165
    const-string/jumbo v9, "null"

    #@168
    iget-object v10, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    #@16a
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16d
    move-result v9

    #@16e
    if-eqz v9, :cond_15

    #@170
    .line 330
    sget-object v9, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    #@172
    return-object v9

    #@173
    .line 332
    :cond_15
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    #@175
    const-string/jumbo v10, "double-quoted string or \'null\'"

    #@178
    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    #@17b
    throw v9

    #@17c
    .line 335
    :cond_16
    new-instance v9, Ljava/lang/IllegalStateException;

    #@17e
    new-instance v10, Ljava/lang/StringBuilder;

    #@180
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@183
    const-string/jumbo v11, "Internal error; unknown type "

    #@186
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v10

    #@18a
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v10

    #@18e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v10

    #@192
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@195
    throw v9

    #@196
    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 403
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 405
    const/4 v1, 0x0

    #@9
    return-object v1

    #@a
    .line 407
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 600
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z

    #@0
    .prologue
    .line 435
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 436
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 437
    return p2

    #@7
    .line 439
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 440
    check-cast v0, Ljava/lang/Boolean;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 442
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "boolean"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 612
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getByte(Ljava/lang/String;B)B

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # B

    #@0
    .prologue
    .line 455
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 456
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 457
    return p2

    #@7
    .line 459
    :cond_0
    instance-of v1, v0, Ljava/lang/Byte;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 460
    check-cast v0, Ljava/lang/Byte;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 462
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "byte"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 672
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getDouble(Ljava/lang/String;D)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # D

    #@0
    .prologue
    .line 555
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 556
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 557
    return-wide p2

    #@7
    .line 559
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 560
    check-cast v0, Ljava/lang/Double;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@10
    move-result-wide v2

    #@11
    return-wide v2

    #@12
    .line 562
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "double"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 660
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getFloat(Ljava/lang/String;F)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # F

    #@0
    .prologue
    .line 535
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 536
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 537
    return p2

    #@7
    .line 539
    :cond_0
    instance-of v1, v0, Ljava/lang/Float;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 540
    check-cast v0, Ljava/lang/Float;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 542
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "float"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 636
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getInt(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # I

    #@0
    .prologue
    .line 495
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 496
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 497
    return p2

    #@7
    .line 499
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 500
    check-cast v0, Ljava/lang/Integer;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 502
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "int"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 648
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getLong(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # J

    #@0
    .prologue
    .line 515
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 516
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 517
    return-wide p2

    #@7
    .line 519
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 520
    check-cast v0, Ljava/lang/Long;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@10
    move-result-wide v2

    #@11
    return-wide v2

    #@12
    .line 522
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "long"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 624
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getShort(Ljava/lang/String;S)S

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # S

    #@0
    .prologue
    .line 475
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 476
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 477
    return p2

    #@7
    .line 479
    :cond_0
    instance-of v1, v0, Ljava/lang/Short;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 480
    check-cast v0, Ljava/lang/Short;

    #@d
    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 482
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@14
    const-string/jumbo v2, "short"

    #@17
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1a
    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 684
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 575
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 576
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    .line 577
    return-object p2

    #@8
    .line 579
    :cond_0
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 580
    return-object v2

    #@d
    .line 581
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 582
    check-cast v0, Ljava/lang/String;

    #@13
    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    #@14
    .line 584
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    #@16
    const-string/jumbo v2, "string"

    #@19
    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method public getStringInfo(Ljava/lang/String;)I
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    #@0
    .prologue
    .line 703
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 704
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 705
    const/4 v1, -0x1

    #@7
    return v1

    #@8
    .line 707
    :cond_0
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 708
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 709
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 710
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 712
    :cond_2
    const/4 v1, -0x2

    #@15
    return v1
.end method

.method public load(Ljava/io/Reader;)V
    .locals 0
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-static {p1, p0}, Lcom/android/internal/util/TypedProperties;->parse(Ljava/io/Reader;Ljava/util/Map;)V

    #@3
    .line 397
    return-void
.end method
