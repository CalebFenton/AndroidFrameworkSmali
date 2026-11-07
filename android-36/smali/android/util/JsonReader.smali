.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o FALSE:Ljava/lang/String; = "false"

.field private static final greylist-max-o TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final greylist-max-o buffer:[C

.field private greylist-max-o bufferStartColumn:I

.field private greylist-max-o bufferStartLine:I

.field private final greylist-max-o in:Ljava/io/Reader;

.field private greylist-max-o lenient:Z

.field private greylist-max-o limit:I

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o pos:I

.field private greylist-max-o skipping:Z

.field private final greylist-max-o stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist stringPool:Lcom/android/internal/util/StringPool;

.field private greylist-max-o token:Landroid/util/JsonToken;

.field private greylist-max-o value:Ljava/lang/String;

.field private greylist-max-o valueLength:I

.field private greylist-max-o valuePos:I


# direct methods
.method public constructor whitelist <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "in"    # Ljava/io/Reader;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/android/internal/util/StringPool;

    invoke-direct {v0}, Lcom/android/internal/util/StringPool;-><init>()V

    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    .line 198
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    .line 199
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 200
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 205
    const/4 v1, 0x1

    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 206
    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    .line 210
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 231
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 237
    if-eqz p1, :cond_2f

    .line 240
    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    .line 241
    return-void

    .line 238
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o advance()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 376
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 377
    .local v0, "result":Landroid/util/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 378
    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 379
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 380
    return-object v0
.end method

.method private greylist-max-o checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v0, :cond_5

    .line 843
    return-void

    .line 841
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o decodeLiteral()Landroid/util/JsonToken;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1074
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v0

    .line 1075
    :cond_8
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v1, 0x55

    const/16 v2, 0x75

    const/16 v3, 0x4c

    const/16 v4, 0x6c

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6c

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v6

    const/16 v6, 0x6e

    if-eq v6, v0, :cond_29

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v6

    const/16 v6, 0x4e

    if-ne v6, v0, :cond_6c

    :cond_29
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-eq v2, v0, :cond_3d

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-ne v1, v0, :cond_6c

    :cond_3d
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_51

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_6c

    :cond_51
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_65

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_6c

    .line 1080
    :cond_65
    const-string v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1081
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    return-object v0

    .line 1082
    :cond_6c
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ne v0, v5, :cond_d0

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v8

    const/16 v8, 0x74

    if-eq v8, v0, :cond_88

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v8

    const/16 v8, 0x54

    if-ne v8, v0, :cond_d0

    :cond_88
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v8, v8, 0x1

    aget-char v0, v0, v8

    const/16 v8, 0x72

    if-eq v8, v0, :cond_a0

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v8, v8, 0x1

    aget-char v0, v0, v8

    const/16 v8, 0x52

    if-ne v8, v0, :cond_d0

    :cond_a0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v8, v8, 0x2

    aget-char v0, v0, v8

    if-eq v2, v0, :cond_b4

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    if-ne v1, v0, :cond_d0

    :cond_b4
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_c8

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_d0

    .line 1087
    :cond_c8
    const-string/jumbo v0, "true"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1088
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    .line 1089
    :cond_d0
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_146

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x66

    if-eq v1, v0, :cond_e9

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-ne v1, v0, :cond_146

    :cond_e9
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x61

    if-eq v1, v0, :cond_101

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-ne v1, v0, :cond_146

    :cond_101
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_115

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_146

    :cond_115
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-eq v1, v0, :cond_12d

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-ne v1, v0, :cond_146

    :cond_12d
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_13f

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_146

    .line 1095
    :cond_13f
    const-string v0, "false"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1096
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    .line 1098
    :cond_146
    iget-object v0, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o decodeNumber([CII)Landroid/util/JsonToken;
    .registers 10
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1110
    move v0, p2

    .line 1111
    .local v0, "i":I
    aget-char v1, p1, v0

    .line 1113
    .local v1, "c":I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_b

    .line 1114
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1117
    :cond_b
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v1, v4, :cond_16

    .line 1118
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_29

    .line 1119
    :cond_16
    const/16 v5, 0x31

    if-lt v1, v5, :cond_6e

    if-gt v1, v3, :cond_6e

    .line 1120
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1121
    :goto_20
    if-lt v1, v4, :cond_29

    if-gt v1, v3, :cond_29

    .line 1122
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_20

    .line 1128
    :cond_29
    :goto_29
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3a

    .line 1129
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1130
    :goto_31
    if-lt v1, v4, :cond_3a

    if-gt v1, v3, :cond_3a

    .line 1131
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_31

    .line 1135
    :cond_3a
    const/16 v5, 0x65

    if-eq v1, v5, :cond_42

    const/16 v5, 0x45

    if-ne v1, v5, :cond_61

    .line 1136
    :cond_42
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1137
    const/16 v5, 0x2b

    if-eq v1, v5, :cond_4c

    if-ne v1, v2, :cond_50

    .line 1138
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1140
    :cond_50
    if-lt v1, v4, :cond_6b

    if-gt v1, v3, :cond_6b

    .line 1141
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1142
    :goto_58
    if-lt v1, v4, :cond_61

    if-gt v1, v3, :cond_61

    .line 1143
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_58

    .line 1150
    :cond_61
    add-int v2, p2, p3

    if-ne v0, v2, :cond_68

    .line 1151
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    return-object v2

    .line 1153
    :cond_68
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    .line 1146
    :cond_6b
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    .line 1125
    :cond_6e
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2
.end method

.method private greylist-max-o expect(Landroid/util/JsonToken;)V
    .registers 5
    .param p1, "expected"    # Landroid/util/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 312
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-ne v0, p1, :cond_b

    .line 315
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 316
    return-void

    .line 313
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fillBuffer(I)Z
    .registers 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1e

    .line 728
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v1, v1, v0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_16

    .line 729
    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 730
    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    goto :goto_1b

    .line 732
    :cond_16
    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 727
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 736
    .end local v0    # "i":I
    :cond_1e
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v3, 0x0

    if-eq v0, v1, :cond_38

    .line 737
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 738
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->limit:I

    invoke-static {v0, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 740
    :cond_38
    iput v3, p0, Landroid/util/JsonReader;->limit:I

    .line 743
    :goto_3a
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 745
    :cond_3c
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Landroid/util/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    move v1, v0

    .local v1, "total":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_79

    .line 746
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 749
    iget v0, p0, Landroid/util/JsonReader;->bufferStartLine:I

    if-ne v0, v2, :cond_74

    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    if-ne v0, v2, :cond_74

    iget v0, p0, Landroid/util/JsonReader;->limit:I

    if-lez v0, :cond_74

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v0, v0, v3

    const v4, 0xfeff

    if-ne v0, v4, :cond_74

    .line 751
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 752
    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 755
    :cond_74
    iget v0, p0, Landroid/util/JsonReader;->limit:I

    if-lt v0, p1, :cond_3c

    .line 756
    return v2

    .line 759
    :cond_79
    return v3
.end method

.method private greylist-max-o getColumnNumber()I
    .registers 5

    .line 773
    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 774
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_16

    .line 775
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 776
    const/4 v0, 0x1

    goto :goto_13

    .line 778
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 774
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 781
    .end local v1    # "i":I
    :cond_16
    return v0
.end method

.method private greylist-max-o getLineNumber()I
    .registers 5

    .line 763
    iget v0, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 764
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_14

    .line 765
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    .line 766
    add-int/lit8 v0, v0, 0x1

    .line 764
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 769
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method private greylist-max-o getSnippet()Ljava/lang/CharSequence;
    .registers 6

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1168
    .local v0, "snippet":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1169
    .local v1, "beforePos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1170
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1171
    .local v2, "afterPos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1172
    return-object v0
.end method

.method private greylist-max-o nextInArray(Z)Landroid/util/JsonToken;
    .registers 3
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    if-eqz p1, :cond_8

    .line 590
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    goto :goto_22

    .line 593
    :cond_8
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    .line 602
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 595
    :sswitch_16
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 596
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 598
    :sswitch_1e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 600
    :sswitch_21
    nop

    .line 606
    :goto_22
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_5e

    .line 621
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 622
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 608
    :sswitch_34
    if-eqz p1, :cond_3e

    .line 609
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 610
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 616
    :cond_3e
    :sswitch_3e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 617
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 618
    const-string v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 619
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :sswitch_data_50
    .sparse-switch
        0x2c -> :sswitch_21
        0x3b -> :sswitch_1e
        0x5d -> :sswitch_16
    .end sparse-switch

    :sswitch_data_5e
    .sparse-switch
        0x2c -> :sswitch_3e
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_34
    .end sparse-switch
.end method

.method private greylist-max-o nextInObject(Z)Landroid/util/JsonToken;
    .registers 4
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    if-eqz p1, :cond_18

    .line 634
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_6c

    .line 639
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_2f

    .line 636
    :pswitch_10
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 637
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 642
    :cond_18
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_72

    .line 650
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 644
    :sswitch_26
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 645
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 648
    :sswitch_2e
    nop

    .line 655
    :goto_2f
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 656
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_80

    .line 663
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 664
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 665
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 666
    iget-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_5a

    .line 658
    :sswitch_4f
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 660
    :sswitch_52
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 661
    nop

    .line 671
    :goto_5a
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 672
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 667
    :cond_64
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_6c
    .packed-switch 0x7d
        :pswitch_10
    .end packed-switch

    :sswitch_data_72
    .sparse-switch
        0x2c -> :sswitch_2e
        0x3b -> :sswitch_2e
        0x7d -> :sswitch_26
    .end sparse-switch

    :sswitch_data_80
    .sparse-switch
        0x22 -> :sswitch_52
        0x27 -> :sswitch_4f
    .end sparse-switch
.end method

.method private greylist-max-o nextLiteral(Z)Ljava/lang/String;
    .registers 7
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 930
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/JsonReader;->valueLength:I

    .line 931
    const/4 v2, 0x0

    .line 935
    .local v2, "i":I
    :cond_8
    :goto_8
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ge v3, v4, :cond_20

    .line 936
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v4, v2

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_8c

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 942
    :sswitch_1c
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 954
    :sswitch_1f
    goto :goto_57

    .line 963
    :cond_20
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v2, v3, :cond_35

    .line 964
    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 965
    goto :goto_8

    .line 967
    :cond_2e
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    aput-char v1, v3, v4

    .line 968
    goto :goto_57

    .line 973
    :cond_35
    if-nez v0, :cond_3d

    .line 974
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 976
    :cond_3d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 977
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    .line 978
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 979
    const/4 v2, 0x0

    .line 980
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 981
    nop

    .line 986
    :goto_57
    if-eqz p1, :cond_61

    if-nez v0, :cond_61

    .line 987
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 988
    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    goto :goto_81

    .line 989
    .end local v1    # "result":Ljava/lang/String;
    :cond_61
    iget-boolean v1, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v1, :cond_69

    .line 990
    const-string/jumbo v1, "skipped!"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_81

    .line 991
    .end local v1    # "result":Ljava/lang/String;
    :cond_69
    if-nez v0, :cond_76

    .line 992
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_81

    .line 994
    .end local v1    # "result":Ljava/lang/String;
    :cond_76
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 997
    .restart local v1    # "result":Ljava/lang/String;
    :goto_81
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    .line 998
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 999
    return-object v1

    :sswitch_data_8c
    .sparse-switch
        0x9 -> :sswitch_1f
        0xa -> :sswitch_1f
        0xc -> :sswitch_1f
        0xd -> :sswitch_1f
        0x20 -> :sswitch_1f
        0x23 -> :sswitch_1c
        0x2c -> :sswitch_1f
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_1f
        0x3b -> :sswitch_1c
        0x3d -> :sswitch_1c
        0x5b -> :sswitch_1f
        0x5c -> :sswitch_1c
        0x5d -> :sswitch_1f
        0x7b -> :sswitch_1f
        0x7d -> :sswitch_1f
    .end sparse-switch
.end method

.method private greylist-max-o nextNonWhitespace()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    nop

    :goto_1
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_17

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 836
    :cond_f
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 787
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_6c

    .line 832
    return v0

    .line 795
    :sswitch_25
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-ne v1, v3, :cond_32

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 796
    return v0

    .line 799
    :cond_32
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 800
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v1, v1, v3

    .line 801
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_86

    .line 818
    return v0

    .line 813
    :sswitch_3f
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 814
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 815
    goto :goto_1

    .line 804
    :sswitch_48
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 805
    const-string v2, "*/"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 808
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 809
    goto :goto_1

    .line 806
    :cond_5c
    const-string v2, "Unterminated comment"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 827
    .end local v1    # "peek":C
    :sswitch_63
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 828
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 829
    goto :goto_1

    .line 792
    :sswitch_6a
    goto :goto_1

    nop

    :sswitch_data_6c
    .sparse-switch
        0x9 -> :sswitch_6a
        0xa -> :sswitch_6a
        0xd -> :sswitch_6a
        0x20 -> :sswitch_6a
        0x23 -> :sswitch_63
        0x2f -> :sswitch_25
    .end sparse-switch

    :sswitch_data_86
    .sparse-switch
        0x2a -> :sswitch_48
        0x2f -> :sswitch_3f
    .end sparse-switch
.end method

.method private greylist-max-o nextString(C)Ljava/lang/String;
    .registers 9
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    const/4 v0, 0x0

    .line 886
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 887
    .local v1, "start":I
    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5a

    .line 888
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    aget-char v2, v2, v3

    .line 890
    .local v2, "c":I
    if-ne v2, p1, :cond_3b

    .line 891
    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v3, :cond_1e

    .line 892
    const-string/jumbo v3, "skipped!"

    return-object v3

    .line 893
    :cond_1e
    if-nez v0, :cond_2d

    .line 894
    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    invoke-virtual {v3, v5, v1, v6}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 896
    :cond_2d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 900
    :cond_3b
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_59

    .line 901
    if-nez v0, :cond_47

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 904
    :cond_47
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 905
    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 906
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 908
    .end local v2    # "c":I
    :cond_59
    goto :goto_3

    .line 910
    :cond_5a
    if-nez v0, :cond_62

    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 913
    :cond_62
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 914
    .end local v1    # "start":I
    invoke-direct {p0, v4}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_71

    goto :goto_1

    .line 916
    :cond_71
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o nextValue()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 699
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_36

    .line 715
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 716
    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    move-result-object v1

    return-object v1

    .line 701
    :sswitch_12
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 702
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 705
    :sswitch_1c
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 706
    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 709
    :sswitch_26
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 711
    :sswitch_29
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 712
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    nop

    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_26
        0x5b -> :sswitch_1c
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method private greylist-max-o objectValue()Landroid/util/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_3a

    .line 690
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 684
    :sswitch_e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 685
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1e

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2f

    .line 686
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_2f

    .line 682
    :sswitch_2e
    nop

    .line 693
    :cond_2f
    :goto_2f
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 694
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x3a -> :sswitch_2e
        0x3d -> :sswitch_e
    .end sparse-switch
.end method

.method private greylist-max-o peekStack()Landroid/util/JsonScope;
    .registers 3

    .line 570
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private greylist-max-o pop()Landroid/util/JsonScope;
    .registers 3

    .line 574
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private greylist-max-o push(Landroid/util/JsonScope;)V
    .registers 3
    .param p1, "newTop"    # Landroid/util/JsonScope;

    .line 578
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method private greylist-max-o readEscapeCharacter()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1017
    :cond_10
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1020
    :cond_15
    :goto_15
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1021
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_5e

    .line 1049
    return v0

    .line 1023
    :sswitch_23
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v3, 0x4

    add-int/2addr v1, v3

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-le v1, v4, :cond_37

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_37

    .line 1024
    :cond_32
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1026
    :cond_37
    :goto_37
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Lcom/android/internal/util/StringPool;

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/internal/util/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    .line 1028
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    return v2

    .line 1031
    .end local v1    # "hex":Ljava/lang/String;
    :sswitch_4e
    const/16 v1, 0x9

    return v1

    .line 1040
    :sswitch_51
    const/16 v1, 0xd

    return v1

    .line 1037
    :sswitch_54
    const/16 v1, 0xa

    return v1

    .line 1043
    :sswitch_57
    const/16 v1, 0xc

    return v1

    .line 1034
    :sswitch_5a
    const/16 v1, 0x8

    return v1

    nop

    :sswitch_data_5e
    .sparse-switch
        0x62 -> :sswitch_5a
        0x66 -> :sswitch_57
        0x6e -> :sswitch_54
        0x72 -> :sswitch_51
        0x74 -> :sswitch_4e
        0x75 -> :sswitch_23
    .end sparse-switch
.end method

.method private greylist-max-o readLiteral()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1058
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-eqz v0, :cond_1d

    .line 1061
    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 1062
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_1a

    .line 1063
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 1065
    :cond_1a
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 1059
    :cond_1d
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private greylist-max-o replaceTop(Landroid/util/JsonScope;)V
    .registers 4
    .param p1, "newTop"    # Landroid/util/JsonScope;

    .line 585
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 586
    return-void
.end method

.method private greylist-max-o skipTo(Ljava/lang/String;)Z
    .registers 6
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    nop

    :goto_1
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-le v0, v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    .line 869
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 862
    :cond_19
    :goto_19
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_38

    .line 863
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_35

    .line 864
    nop

    .line 861
    .end local v0    # "c":I
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_1

    .line 862
    .restart local v0    # "c":I
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 867
    .end local v0    # "c":I
    :cond_38
    return v2
.end method

.method private greylist-max-o skipToEndOfLine()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    nop

    :goto_1
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 852
    :cond_e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 853
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_22

    const/16 v1, 0xa

    if-ne v0, v1, :cond_21

    .line 854
    goto :goto_22

    .line 856
    .end local v0    # "c":C
    :cond_21
    goto :goto_1

    .line 857
    :cond_22
    :goto_22
    return-void
.end method

.method private greylist-max-o syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    new-instance v0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1163
    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 281
    return-void
.end method

.method public whitelist beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 297
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 538
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 539
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 540
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 542
    return-void
.end method

.method public whitelist endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 289
    return-void
.end method

.method public whitelist endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 305
    return-void
.end method

.method public whitelist hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 323
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist isLenient()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    return v0
.end method

.method public whitelist nextBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 428
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_17

    .line 432
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v1, "true"

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 433
    .local v0, "result":Z
    :goto_13
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 434
    return v0

    .line 429
    .end local v0    # "result":Z
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextDouble()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 462
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 463
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 467
    .local v0, "result":D
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 468
    return-wide v0
.end method

.method public whitelist nextInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 514
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 515
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_32

    .line 527
    .local v0, "result":I
    goto :goto_40

    .line 521
    .end local v0    # "result":I
    :catch_32
    move-exception v0

    .line 522
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 523
    .local v1, "asDouble":D
    double-to-int v3, v1

    .line 524
    .local v3, "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v1

    if-nez v4, :cond_44

    move v0, v3

    .line 529
    .end local v1    # "asDouble":D
    .end local v3    # "result":I
    .local v0, "result":I
    :goto_40
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 530
    return v0

    .line 525
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    .restart local v1    # "asDouble":D
    .restart local v3    # "result":I
    :cond_44
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist nextLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 483
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2b

    .line 484
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_31} :catch_32

    .line 496
    .local v0, "result":J
    goto :goto_40

    .line 490
    .end local v0    # "result":J
    :catch_32
    move-exception v0

    .line 491
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 492
    .local v1, "asDouble":D
    double-to-long v3, v1

    .line 493
    .local v3, "result":J
    long-to-double v5, v3

    cmpl-double v5, v5, v1

    if-nez v5, :cond_44

    move-wide v0, v3

    .line 498
    .end local v1    # "asDouble":D
    .end local v3    # "result":J
    .local v0, "result":J
    :goto_40
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 499
    return-wide v0

    .line 494
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    .restart local v1    # "asDouble":D
    .restart local v3    # "result":J
    :cond_44
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public whitelist nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 392
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_f

    .line 395
    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 396
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 397
    return-object v0

    .line 393
    .end local v0    # "result":Ljava/lang/String;
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 446
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_d

    .line 450
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 451
    return-void

    .line 447
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 410
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_2d

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_10

    goto :goto_2d

    .line 411
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 415
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 416
    return-object v0
.end method

.method public whitelist peek()Landroid/util/JsonToken;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-eqz v0, :cond_7

    .line 331
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 334
    :cond_7
    sget-object v0, Landroid/util/JsonReader$1;->$SwitchMap$android$util$JsonScope:[I

    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_8c

    .line 366
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :pswitch_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :pswitch_26
    :try_start_26
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    .line 356
    .local v0, "token":Landroid/util/JsonToken;
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v1, :cond_2f

    .line 357
    return-object v0

    .line 359
    :cond_2f
    const-string v1, "Expected EOF"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    .end local p0    # "this":Landroid/util/JsonReader;
    throw v1
    :try_end_36
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_36} :catch_36

    .line 360
    .end local v0    # "token":Landroid/util/JsonToken;
    .restart local p0    # "this":Landroid/util/JsonReader;
    :catch_36
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/EOFException;
    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 352
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_3c
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_41
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 348
    :pswitch_46
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 346
    :pswitch_4b
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 344
    :pswitch_50
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 336
    :pswitch_55
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 337
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    .line 338
    .local v0, "firstToken":Landroid/util/JsonToken;
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-nez v1, :cond_8a

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_8a

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_6f

    goto :goto_8a

    .line 339
    :cond_6f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_8a
    :goto_8a
    return-object v0

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 265
    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    .line 266
    return-void
.end method

.method public whitelist skipValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 552
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_33

    .line 555
    const/4 v1, 0x0

    .line 557
    .local v1, "count":I
    :cond_13
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    move-result-object v2

    .line 558
    .local v2, "token":Landroid/util/JsonToken;
    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2b

    sget-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_20

    goto :goto_2b

    .line 560
    :cond_20
    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_28

    sget-object v3, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_3b

    if-ne v2, v3, :cond_2d

    .line 561
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 559
    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    .line 563
    .end local v2    # "token":Landroid/util/JsonToken;
    :cond_2d
    :goto_2d
    if-nez v1, :cond_13

    .line 565
    .end local v1    # "count":I
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 566
    nop

    .line 567
    return-void

    .line 553
    :cond_33
    :try_start_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No element left to skip"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/util/JsonReader;
    throw v1
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3b

    .line 565
    .restart local p0    # "this":Landroid/util/JsonReader;
    :catchall_3b
    move-exception v1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 566
    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
