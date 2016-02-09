.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static synthetic -android_util_JsonScopeSwitchesValues:[I = null

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Llibcore/internal/StringPool;

.field private token:Landroid/util/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method private static synthetic -getandroid_util_JsonScopeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/util/JsonReader;->-android_util_JsonScopeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/util/JsonReader;->-android_util_JsonScopeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/util/JsonScope;->values()[Landroid/util/JsonScope;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    #@10
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    #@19
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@22
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@2b
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@34
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@3d
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@46
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@4f
    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Landroid/util/JsonReader;->-android_util_JsonScopeSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 181
    new-instance v0, Llibcore/internal/StringPool;

    #@7
    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    #@a
    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    #@c
    .line 187
    iput-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    #@e
    .line 195
    const/16 v0, 0x400

    #@10
    new-array v0, v0, [C

    #@12
    iput-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@14
    .line 196
    iput v1, p0, Landroid/util/JsonReader;->pos:I

    #@16
    .line 197
    iput v1, p0, Landroid/util/JsonReader;->limit:I

    #@18
    .line 202
    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    #@1a
    .line 203
    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@1c
    .line 205
    new-instance v0, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@21
    iput-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@23
    .line 207
    sget-object v0, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@25
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    #@28
    .line 228
    iput-boolean v1, p0, Landroid/util/JsonReader;->skipping:Z

    #@2a
    .line 234
    if-nez p1, :cond_0

    #@2c
    .line 235
    new-instance v0, Ljava/lang/NullPointerException;

    #@2e
    const-string/jumbo v1, "in == null"

    #@31
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 237
    :cond_0
    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    #@37
    .line 233
    return-void
.end method

.method private advance()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 371
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@4
    .line 373
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@6
    .line 374
    .local v0, "result":Landroid/util/JsonToken;
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@8
    .line 375
    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@a
    .line 376
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    #@c
    .line 377
    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 837
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 838
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    #@7
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@a
    move-result-object v0

    #@b
    throw v0

    #@c
    .line 836
    :cond_0
    return-void
.end method

.method private decodeLiteral()Landroid/util/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x55

    #@2
    const/16 v5, 0x45

    #@4
    const/4 v4, 0x4

    #@5
    const/16 v3, 0x6c

    #@7
    const/16 v2, 0x4c

    #@9
    .line 1069
    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    #@b
    const/4 v1, -0x1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 1071
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@10
    return-object v0

    #@11
    .line 1072
    :cond_0
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    #@13
    if-ne v0, v4, :cond_5

    #@15
    .line 1073
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@17
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@19
    aget-char v0, v0, v1

    #@1b
    const/16 v1, 0x6e

    #@1d
    if-eq v1, v0, :cond_1

    #@1f
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@21
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@23
    aget-char v0, v0, v1

    #@25
    const/16 v1, 0x4e

    #@27
    if-ne v1, v0, :cond_5

    #@29
    .line 1074
    :cond_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@2b
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    aget-char v0, v0, v1

    #@31
    const/16 v1, 0x75

    #@33
    if-eq v1, v0, :cond_2

    #@35
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@37
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    aget-char v0, v0, v1

    #@3d
    if-ne v6, v0, :cond_5

    #@3f
    .line 1075
    :cond_2
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@41
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@43
    add-int/lit8 v1, v1, 0x2

    #@45
    aget-char v0, v0, v1

    #@47
    if-eq v3, v0, :cond_3

    #@49
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@4b
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@4d
    add-int/lit8 v1, v1, 0x2

    #@4f
    aget-char v0, v0, v1

    #@51
    if-ne v2, v0, :cond_5

    #@53
    .line 1076
    :cond_3
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@55
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@57
    add-int/lit8 v1, v1, 0x3

    #@59
    aget-char v0, v0, v1

    #@5b
    if-eq v3, v0, :cond_4

    #@5d
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@5f
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@61
    add-int/lit8 v1, v1, 0x3

    #@63
    aget-char v0, v0, v1

    #@65
    if-ne v2, v0, :cond_5

    #@67
    .line 1077
    :cond_4
    const-string/jumbo v0, "null"

    #@6a
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@6c
    .line 1078
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    #@6e
    return-object v0

    #@6f
    .line 1079
    :cond_5
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    #@71
    if-ne v0, v4, :cond_a

    #@73
    .line 1080
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@75
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@77
    aget-char v0, v0, v1

    #@79
    const/16 v1, 0x74

    #@7b
    if-eq v1, v0, :cond_6

    #@7d
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@7f
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@81
    aget-char v0, v0, v1

    #@83
    const/16 v1, 0x54

    #@85
    if-ne v1, v0, :cond_a

    #@87
    .line 1081
    :cond_6
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@89
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@8b
    add-int/lit8 v1, v1, 0x1

    #@8d
    aget-char v0, v0, v1

    #@8f
    const/16 v1, 0x72

    #@91
    if-eq v1, v0, :cond_7

    #@93
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@95
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@97
    add-int/lit8 v1, v1, 0x1

    #@99
    aget-char v0, v0, v1

    #@9b
    const/16 v1, 0x52

    #@9d
    if-ne v1, v0, :cond_a

    #@9f
    .line 1082
    :cond_7
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@a1
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@a3
    add-int/lit8 v1, v1, 0x2

    #@a5
    aget-char v0, v0, v1

    #@a7
    const/16 v1, 0x75

    #@a9
    if-eq v1, v0, :cond_8

    #@ab
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@ad
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@af
    add-int/lit8 v1, v1, 0x2

    #@b1
    aget-char v0, v0, v1

    #@b3
    if-ne v6, v0, :cond_a

    #@b5
    .line 1083
    :cond_8
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@b7
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@b9
    add-int/lit8 v1, v1, 0x3

    #@bb
    aget-char v0, v0, v1

    #@bd
    const/16 v1, 0x65

    #@bf
    if-eq v1, v0, :cond_9

    #@c1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@c3
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@c5
    add-int/lit8 v1, v1, 0x3

    #@c7
    aget-char v0, v0, v1

    #@c9
    if-ne v5, v0, :cond_a

    #@cb
    .line 1084
    :cond_9
    const-string/jumbo v0, "true"

    #@ce
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@d0
    .line 1085
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    #@d2
    return-object v0

    #@d3
    .line 1086
    :cond_a
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    #@d5
    const/4 v1, 0x5

    #@d6
    if-ne v0, v1, :cond_10

    #@d8
    .line 1087
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@da
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@dc
    aget-char v0, v0, v1

    #@de
    const/16 v1, 0x66

    #@e0
    if-eq v1, v0, :cond_b

    #@e2
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@e4
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@e6
    aget-char v0, v0, v1

    #@e8
    const/16 v1, 0x46

    #@ea
    if-ne v1, v0, :cond_10

    #@ec
    .line 1088
    :cond_b
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@ee
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@f0
    add-int/lit8 v1, v1, 0x1

    #@f2
    aget-char v0, v0, v1

    #@f4
    const/16 v1, 0x61

    #@f6
    if-eq v1, v0, :cond_c

    #@f8
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@fa
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@fc
    add-int/lit8 v1, v1, 0x1

    #@fe
    aget-char v0, v0, v1

    #@100
    const/16 v1, 0x41

    #@102
    if-ne v1, v0, :cond_10

    #@104
    .line 1089
    :cond_c
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@106
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@108
    add-int/lit8 v1, v1, 0x2

    #@10a
    aget-char v0, v0, v1

    #@10c
    if-eq v3, v0, :cond_d

    #@10e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@110
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@112
    add-int/lit8 v1, v1, 0x2

    #@114
    aget-char v0, v0, v1

    #@116
    if-ne v2, v0, :cond_10

    #@118
    .line 1090
    :cond_d
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@11a
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@11c
    add-int/lit8 v1, v1, 0x3

    #@11e
    aget-char v0, v0, v1

    #@120
    const/16 v1, 0x73

    #@122
    if-eq v1, v0, :cond_e

    #@124
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@126
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@128
    add-int/lit8 v1, v1, 0x3

    #@12a
    aget-char v0, v0, v1

    #@12c
    const/16 v1, 0x53

    #@12e
    if-ne v1, v0, :cond_10

    #@130
    .line 1091
    :cond_e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@132
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@134
    add-int/lit8 v1, v1, 0x4

    #@136
    aget-char v0, v0, v1

    #@138
    const/16 v1, 0x65

    #@13a
    if-eq v1, v0, :cond_f

    #@13c
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@13e
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@140
    add-int/lit8 v1, v1, 0x4

    #@142
    aget-char v0, v0, v1

    #@144
    if-ne v5, v0, :cond_10

    #@146
    .line 1092
    :cond_f
    const-string/jumbo v0, "false"

    #@149
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@14b
    .line 1093
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    #@14d
    return-object v0

    #@14e
    .line 1095
    :cond_10
    iget-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    #@150
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    #@152
    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    #@154
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    #@156
    invoke-virtual {v0, v1, v2, v3}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@159
    move-result-object v0

    #@15a
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@15c
    .line 1096
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@15e
    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    #@160
    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    #@162
    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    #@165
    move-result-object v0

    #@166
    return-object v0
.end method

.method private decodeNumber([CII)Landroid/util/JsonToken;
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/16 v5, 0x2d

    #@2
    const/16 v4, 0x39

    #@4
    const/16 v3, 0x30

    #@6
    .line 1107
    move v1, p2

    #@7
    .line 1108
    .local v1, "i":I
    aget-char v0, p1, v1

    #@9
    .line 1110
    .local v0, "c":I
    if-ne v0, v5, :cond_0

    #@b
    .line 1111
    add-int/lit8 v1, v1, 0x1

    #@d
    aget-char v0, p1, v1

    #@f
    .line 1114
    :cond_0
    if-ne v0, v3, :cond_2

    #@11
    .line 1115
    add-int/lit8 v1, v1, 0x1

    #@13
    aget-char v0, p1, v1

    #@15
    .line 1125
    :cond_1
    const/16 v2, 0x2e

    #@17
    if-ne v0, v2, :cond_4

    #@19
    .line 1126
    add-int/lit8 v1, v1, 0x1

    #@1b
    aget-char v0, p1, v1

    #@1d
    .line 1127
    :goto_0
    if-lt v0, v3, :cond_4

    #@1f
    if-gt v0, v4, :cond_4

    #@21
    .line 1128
    add-int/lit8 v1, v1, 0x1

    #@23
    aget-char v0, p1, v1

    #@25
    goto :goto_0

    #@26
    .line 1116
    :cond_2
    const/16 v2, 0x31

    #@28
    if-lt v0, v2, :cond_3

    #@2a
    if-gt v0, v4, :cond_3

    #@2c
    .line 1117
    add-int/lit8 v1, v1, 0x1

    #@2e
    aget-char v0, p1, v1

    #@30
    .line 1118
    :goto_1
    if-lt v0, v3, :cond_1

    #@32
    if-gt v0, v4, :cond_1

    #@34
    .line 1119
    add-int/lit8 v1, v1, 0x1

    #@36
    aget-char v0, p1, v1

    #@38
    goto :goto_1

    #@39
    .line 1122
    :cond_3
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@3b
    return-object v2

    #@3c
    .line 1132
    :cond_4
    const/16 v2, 0x65

    #@3e
    if-eq v0, v2, :cond_5

    #@40
    const/16 v2, 0x45

    #@42
    if-ne v0, v2, :cond_9

    #@44
    .line 1133
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@46
    aget-char v0, p1, v1

    #@48
    .line 1134
    const/16 v2, 0x2b

    #@4a
    if-eq v0, v2, :cond_6

    #@4c
    if-ne v0, v5, :cond_7

    #@4e
    .line 1135
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@50
    aget-char v0, p1, v1

    #@52
    .line 1137
    :cond_7
    if-lt v0, v3, :cond_8

    #@54
    if-gt v0, v4, :cond_8

    #@56
    .line 1138
    add-int/lit8 v1, v1, 0x1

    #@58
    aget-char v0, p1, v1

    #@5a
    .line 1139
    :goto_2
    if-lt v0, v3, :cond_9

    #@5c
    if-gt v0, v4, :cond_9

    #@5e
    .line 1140
    add-int/lit8 v1, v1, 0x1

    #@60
    aget-char v0, p1, v1

    #@62
    goto :goto_2

    #@63
    .line 1143
    :cond_8
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@65
    return-object v2

    #@66
    .line 1147
    :cond_9
    add-int v2, p2, p3

    #@68
    if-ne v1, v2, :cond_a

    #@6a
    .line 1148
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@6c
    return-object v2

    #@6d
    .line 1150
    :cond_a
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@6f
    return-object v2
.end method

.method private expect(Landroid/util/JsonToken;)V
    .locals 3
    .param p1, "expected"    # Landroid/util/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 309
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    if-eq v0, p1, :cond_0

    #@7
    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Expected "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " but was "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 312
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@33
    .line 307
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 9
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 724
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 725
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@9
    aget-char v2, v2, v0

    #@b
    const/16 v3, 0xa

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 726
    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    #@11
    add-int/lit8 v2, v2, 0x1

    #@13
    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    #@15
    .line 727
    iput v8, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@17
    .line 724
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 729
    :cond_0
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@20
    goto :goto_1

    #@21
    .line 733
    :cond_1
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@23
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@25
    if-eq v2, v3, :cond_4

    #@27
    .line 734
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@29
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@2b
    sub-int/2addr v2, v3

    #@2c
    iput v2, p0, Landroid/util/JsonReader;->limit:I

    #@2e
    .line 735
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@30
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@32
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    #@34
    iget v5, p0, Landroid/util/JsonReader;->limit:I

    #@36
    invoke-static {v2, v3, v4, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@39
    .line 740
    :goto_2
    iput v7, p0, Landroid/util/JsonReader;->pos:I

    #@3b
    .line 742
    :cond_2
    iget-object v2, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    #@3d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@3f
    iget v4, p0, Landroid/util/JsonReader;->limit:I

    #@41
    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    #@43
    array-length v5, v5

    #@44
    iget v6, p0, Landroid/util/JsonReader;->limit:I

    #@46
    sub-int/2addr v5, v6

    #@47
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    #@4a
    move-result v1

    #@4b
    .local v1, "total":I
    const/4 v2, -0x1

    #@4c
    if-eq v1, v2, :cond_5

    #@4e
    .line 743
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@50
    add-int/2addr v2, v1

    #@51
    iput v2, p0, Landroid/util/JsonReader;->limit:I

    #@53
    .line 746
    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    #@55
    if-ne v2, v8, :cond_3

    #@57
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@59
    if-ne v2, v8, :cond_3

    #@5b
    .line 747
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@5d
    if-lez v2, :cond_3

    #@5f
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@61
    aget-char v2, v2, v7

    #@63
    const v3, 0xfeff

    #@66
    if-ne v2, v3, :cond_3

    #@68
    .line 748
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@6a
    add-int/lit8 v2, v2, 0x1

    #@6c
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    #@6e
    .line 749
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@70
    add-int/lit8 v2, v2, -0x1

    #@72
    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@74
    .line 752
    :cond_3
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@76
    if-lt v2, p1, :cond_2

    #@78
    .line 753
    return v8

    #@79
    .line 737
    .end local v1    # "total":I
    :cond_4
    iput v7, p0, Landroid/util/JsonReader;->limit:I

    #@7b
    goto :goto_2

    #@7c
    .line 756
    .restart local v1    # "total":I
    :cond_5
    return v7
.end method

.method private getColumnNumber()I
    .locals 4

    #@0
    .prologue
    .line 770
    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    #@2
    .line 771
    .local v1, "result":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 772
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@9
    aget-char v2, v2, v0

    #@b
    const/16 v3, 0xa

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 773
    const/4 v1, 0x1

    #@10
    .line 771
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 775
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_1

    #@16
    .line 778
    :cond_1
    return v1
.end method

.method private getLineNumber()I
    .locals 4

    #@0
    .prologue
    .line 760
    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    #@2
    .line 761
    .local v1, "result":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 762
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@9
    aget-char v2, v2, v0

    #@b
    const/16 v3, 0xa

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 763
    add-int/lit8 v1, v1, 0x1

    #@11
    .line 761
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 766
    :cond_1
    return v1
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x14

    #@2
    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1165
    .local v2, "snippet":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@9
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v1

    #@d
    .line 1166
    .local v1, "beforePos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@f
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@11
    sub-int/2addr v4, v1

    #@12
    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@15
    .line 1167
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    #@17
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@19
    sub-int/2addr v3, v4

    #@1a
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v0

    #@1e
    .line 1168
    .local v0, "afterPos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@20
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@22
    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@25
    .line 1169
    return-object v2
.end method

.method private nextInArray(Z)Landroid/util/JsonToken;
    .locals 1
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 586
    if-eqz p1, :cond_0

    #@2
    .line 587
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@4
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    #@7
    .line 603
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@a
    move-result v0

    #@b
    sparse-switch v0, :sswitch_data_0

    #@e
    .line 618
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    #@10
    add-int/lit8 v0, v0, -0x1

    #@12
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    #@14
    .line 619
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 590
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@1c
    move-result v0

    #@1d
    sparse-switch v0, :sswitch_data_1

    #@20
    .line 599
    const-string/jumbo v0, "Unterminated array"

    #@23
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@26
    move-result-object v0

    #@27
    throw v0

    #@28
    .line 592
    :sswitch_1
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    #@2b
    .line 593
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@2d
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@2f
    return-object v0

    #@30
    .line 595
    :sswitch_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@33
    goto :goto_0

    #@34
    .line 605
    :sswitch_3
    if-eqz p1, :cond_1

    #@36
    .line 606
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    #@39
    .line 607
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@3b
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@3d
    return-object v0

    #@3e
    .line 613
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@41
    .line 614
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    #@43
    add-int/lit8 v0, v0, -0x1

    #@45
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    #@47
    .line 615
    const-string/jumbo v0, "null"

    #@4a
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@4c
    .line 616
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    #@4e
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@50
    return-object v0

    #@51
    .line 603
    nop

    #@52
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    #@60
    .line 590
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextInObject(Z)Landroid/util/JsonToken;
    .locals 2
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 629
    if-eqz p1, :cond_0

    #@2
    .line 631
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@5
    move-result v1

    #@6
    packed-switch v1, :pswitch_data_0

    #@9
    .line 636
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@b
    add-int/lit8 v1, v1, -0x1

    #@d
    iput v1, p0, Landroid/util/JsonReader;->pos:I

    #@f
    .line 652
    :sswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@12
    move-result v0

    #@13
    .line 653
    .local v0, "quote":I
    sparse-switch v0, :sswitch_data_0

    #@16
    .line 660
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@19
    .line 661
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    iput v1, p0, Landroid/util/JsonReader;->pos:I

    #@1f
    .line 662
    const/4 v1, 0x0

    #@20
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    #@26
    .line 663
    iget-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    #@28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 664
    const-string/jumbo v1, "Expected name"

    #@31
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@34
    move-result-object v1

    #@35
    throw v1

    #@36
    .line 633
    .end local v0    # "quote":I
    :pswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    #@39
    .line 634
    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    #@3b
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@3d
    return-object v1

    #@3e
    .line 639
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@41
    move-result v1

    #@42
    sparse-switch v1, :sswitch_data_1

    #@45
    .line 647
    const-string/jumbo v1, "Unterminated object"

    #@48
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@4b
    move-result-object v1

    #@4c
    throw v1

    #@4d
    .line 641
    :sswitch_1
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    #@50
    .line 642
    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    #@52
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@54
    return-object v1

    #@55
    .line 655
    .restart local v0    # "quote":I
    :sswitch_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@58
    .line 657
    :sswitch_3
    int-to-char v1, v0

    #@59
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    #@5f
    .line 668
    :cond_1
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    #@61
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    #@64
    .line 669
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    #@66
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@68
    return-object v1

    #@69
    .line 631
    nop

    #@6a
    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    #@70
    .line 653
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    #@7a
    .line 639
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 6
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 925
    const/4 v0, 0x0

    #@2
    .line 926
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    #@3
    iput v3, p0, Landroid/util/JsonReader;->valuePos:I

    #@5
    .line 927
    iput v5, p0, Landroid/util/JsonReader;->valueLength:I

    #@7
    .line 928
    const/4 v1, 0x0

    #@8
    .line 932
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v1, "i":I
    :cond_0
    :goto_0
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@a
    add-int/2addr v3, v1

    #@b
    iget v4, p0, Landroid/util/JsonReader;->limit:I

    #@d
    if-ge v3, v4, :cond_1

    #@f
    .line 933
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@11
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@13
    add-int/2addr v4, v1

    #@14
    aget-char v3, v3, v4

    #@16
    sparse-switch v3, :sswitch_data_0

    #@19
    .line 932
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 939
    :sswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@1f
    .line 983
    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    #@21
    if-nez v0, :cond_4

    #@23
    .line 984
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@25
    iput v3, p0, Landroid/util/JsonReader;->valuePos:I

    #@27
    .line 985
    const/4 v2, 0x0

    #@28
    .line 994
    :goto_2
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    #@2a
    add-int/2addr v3, v1

    #@2b
    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    #@2d
    .line 995
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@2f
    add-int/2addr v3, v1

    #@30
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    #@32
    .line 996
    return-object v2

    #@33
    .line 960
    :cond_1
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@35
    array-length v3, v3

    #@36
    if-ge v1, v3, :cond_2

    #@38
    .line 961
    add-int/lit8 v3, v1, 0x1

    #@3a
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@3d
    move-result v3

    #@3e
    if-nez v3, :cond_0

    #@40
    .line 964
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@42
    iget v4, p0, Landroid/util/JsonReader;->limit:I

    #@44
    aput-char v5, v3, v4

    #@46
    goto :goto_1

    #@47
    .line 970
    :cond_2
    if-nez v0, :cond_3

    #@49
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    .line 973
    :cond_3
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@50
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@52
    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@55
    .line 974
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    #@57
    add-int/2addr v3, v1

    #@58
    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    #@5a
    .line 975
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@5c
    add-int/2addr v3, v1

    #@5d
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    #@5f
    .line 976
    const/4 v1, 0x0

    #@60
    .line 977
    const/4 v3, 0x1

    #@61
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@64
    move-result v3

    #@65
    if-nez v3, :cond_0

    #@67
    goto :goto_1

    #@68
    .line 986
    :cond_4
    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    #@6a
    if-eqz v3, :cond_5

    #@6c
    .line 987
    const-string/jumbo v2, "skipped!"

    #@6f
    .local v2, "result":Ljava/lang/String;
    goto :goto_2

    #@70
    .line 988
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    #@72
    .line 989
    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    #@74
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    #@76
    iget v5, p0, Landroid/util/JsonReader;->pos:I

    #@78
    invoke-virtual {v3, v4, v5, v1}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    #@7d
    .line 991
    .end local v2    # "result":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@7f
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@81
    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@84
    .line 992
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_2

    #@89
    .line 933
    nop

    #@8a
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 782
    :goto_0
    :sswitch_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@3
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    #@5
    if-lt v2, v3, :cond_0

    #@7
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_4

    #@d
    .line 783
    :cond_0
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@f
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@11
    add-int/lit8 v4, v3, 0x1

    #@13
    iput v4, p0, Landroid/util/JsonReader;->pos:I

    #@15
    aget-char v0, v2, v3

    #@17
    .line 784
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    #@1a
    .line 829
    return v0

    #@1b
    .line 792
    :sswitch_1
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@1d
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 796
    :cond_1
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@2a
    .line 797
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@2c
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@2e
    aget-char v1, v2, v3

    #@30
    .line 798
    .local v1, "peek":C
    sparse-switch v1, :sswitch_data_1

    #@33
    .line 815
    return v0

    #@34
    .line 793
    .end local v1    # "peek":C
    :cond_2
    return v0

    #@35
    .line 801
    .restart local v1    # "peek":C
    :sswitch_2
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@37
    add-int/lit8 v2, v2, 0x1

    #@39
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    #@3b
    .line 802
    const-string/jumbo v2, "*/"

    #@3e
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_3

    #@44
    .line 803
    const-string/jumbo v2, "Unterminated comment"

    #@47
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@4a
    move-result-object v2

    #@4b
    throw v2

    #@4c
    .line 805
    :cond_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@4e
    add-int/lit8 v2, v2, 0x2

    #@50
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    #@52
    goto :goto_0

    #@53
    .line 810
    :sswitch_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@55
    add-int/lit8 v2, v2, 0x1

    #@57
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    #@59
    .line 811
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    #@5c
    goto :goto_0

    #@5d
    .line 824
    .end local v1    # "peek":C
    :sswitch_4
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@60
    .line 825
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    #@63
    goto :goto_0

    #@64
    .line 833
    .end local v0    # "c":I
    :cond_4
    new-instance v2, Ljava/io/EOFException;

    #@66
    const-string/jumbo v3, "End of input"

    #@69
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v2

    #@6d
    .line 784
    nop

    #@6e
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    #@88
    .line 798
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 6
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 880
    const/4 v0, 0x0

    #@1
    .line 883
    :cond_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@3
    .line 884
    .local v2, "start":I
    :cond_1
    :goto_0
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@5
    iget v4, p0, Landroid/util/JsonReader;->limit:I

    #@7
    if-ge v3, v4, :cond_6

    #@9
    .line 885
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@b
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@d
    add-int/lit8 v5, v4, 0x1

    #@f
    iput v5, p0, Landroid/util/JsonReader;->pos:I

    #@11
    aget-char v1, v3, v4

    #@13
    .line 887
    .local v1, "c":I
    if-ne v1, p1, :cond_4

    #@15
    .line 888
    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 889
    const-string/jumbo v3, "skipped!"

    #@1c
    return-object v3

    #@1d
    .line 890
    :cond_2
    if-nez v0, :cond_3

    #@1f
    .line 891
    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    #@21
    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    #@23
    iget v5, p0, Landroid/util/JsonReader;->pos:I

    #@25
    sub-int/2addr v5, v2

    #@26
    add-int/lit8 v5, v5, -0x1

    #@28
    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 893
    :cond_3
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@2f
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@31
    sub-int/2addr v4, v2

    #@32
    add-int/lit8 v4, v4, -0x1

    #@34
    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@37
    .line 894
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3

    #@3c
    .line 897
    :cond_4
    const/16 v3, 0x5c

    #@3e
    if-ne v1, v3, :cond_1

    #@40
    .line 898
    if-nez v0, :cond_5

    #@42
    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    .line 901
    :cond_5
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@49
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@4b
    sub-int/2addr v4, v2

    #@4c
    add-int/lit8 v4, v4, -0x1

    #@4e
    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@51
    .line 902
    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    #@54
    move-result v3

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    .line 903
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@5a
    goto :goto_0

    #@5b
    .line 907
    .end local v1    # "c":I
    :cond_6
    if-nez v0, :cond_7

    #@5d
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    .line 910
    :cond_7
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@64
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@66
    sub-int/2addr v4, v2

    #@67
    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    #@6a
    .line 911
    const/4 v3, 0x1

    #@6b
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@6e
    move-result v3

    #@6f
    if-nez v3, :cond_0

    #@71
    .line 913
    const-string/jumbo v3, "Unterminated string"

    #@74
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@77
    move-result-object v3

    #@78
    throw v3
.end method

.method private nextValue()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 695
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@3
    move-result v0

    #@4
    .line 696
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 712
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    iput v1, p0, Landroid/util/JsonReader;->pos:I

    #@d
    .line 713
    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 698
    :sswitch_0
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@14
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    #@17
    .line 699
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    #@19
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@1b
    return-object v1

    #@1c
    .line 702
    :sswitch_1
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@1e
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    #@21
    .line 703
    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    #@23
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@25
    return-object v1

    #@26
    .line 706
    :sswitch_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@29
    .line 708
    :sswitch_3
    int-to-char v1, v0

    #@2a
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@30
    .line 709
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@32
    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@34
    return-object v1

    #@35
    .line 696
    nop

    #@36
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private objectValue()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 677
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 687
    :pswitch_0
    const-string/jumbo v0, "Expected \':\'"

    #@a
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@d
    move-result-object v0

    #@e
    throw v0

    #@f
    .line 681
    :pswitch_1
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@12
    .line 682
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    #@14
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    #@16
    if-lt v0, v1, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    #@21
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@23
    aget-char v0, v0, v1

    #@25
    const/16 v1, 0x3e

    #@27
    if-ne v0, v1, :cond_1

    #@29
    .line 683
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    #@2f
    .line 690
    :cond_1
    :pswitch_2
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@31
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    #@34
    .line 691
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    #@37
    move-result-object v0

    #@38
    return-object v0

    #@39
    .line 677
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekStack()Landroid/util/JsonScope;
    .locals 2

    #@0
    .prologue
    .line 567
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/util/JsonScope;

    #@10
    return-object v0
.end method

.method private pop()Landroid/util/JsonScope;
    .locals 2

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/util/JsonScope;

    #@10
    return-object v0
.end method

.method private push(Landroid/util/JsonScope;)V
    .locals 1
    .param p1, "newTop"    # Landroid/util/JsonScope;

    #@0
    .prologue
    .line 575
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 574
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 1013
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@3
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    #@5
    if-ne v2, v3, :cond_0

    #@7
    const/4 v2, 0x1

    #@8
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 1017
    :cond_0
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    #@10
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    #@12
    add-int/lit8 v4, v3, 0x1

    #@14
    iput v4, p0, Landroid/util/JsonReader;->pos:I

    #@16
    aget-char v0, v2, v3

    #@18
    .line 1018
    .local v0, "escaped":C
    sparse-switch v0, :sswitch_data_0

    #@1b
    .line 1046
    return v0

    #@1c
    .line 1014
    .end local v0    # "escaped":C
    :cond_1
    const-string/jumbo v2, "Unterminated escape sequence"

    #@1f
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@22
    move-result-object v2

    #@23
    throw v2

    #@24
    .line 1020
    .restart local v0    # "escaped":C
    :sswitch_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@26
    add-int/lit8 v2, v2, 0x4

    #@28
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    #@2a
    if-le v2, v3, :cond_2

    #@2c
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@2f
    move-result v2

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 1023
    :cond_2
    iget-object v2, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    #@34
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    #@36
    iget v4, p0, Landroid/util/JsonReader;->pos:I

    #@38
    invoke-virtual {v2, v3, v4, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 1024
    .local v1, "hex":Ljava/lang/String;
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@3e
    add-int/lit8 v2, v2, 0x4

    #@40
    iput v2, p0, Landroid/util/JsonReader;->pos:I

    #@42
    .line 1025
    const/16 v2, 0x10

    #@44
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@47
    move-result v2

    #@48
    int-to-char v2, v2

    #@49
    return v2

    #@4a
    .line 1021
    .end local v1    # "hex":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "Unterminated escape sequence"

    #@4d
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@50
    move-result-object v2

    #@51
    throw v2

    #@52
    .line 1028
    :sswitch_1
    const/16 v2, 0x9

    #@54
    return v2

    #@55
    .line 1031
    :sswitch_2
    const/16 v2, 0x8

    #@57
    return v2

    #@58
    .line 1034
    :sswitch_3
    const/16 v2, 0xa

    #@5a
    return v2

    #@5b
    .line 1037
    :sswitch_4
    const/16 v2, 0xd

    #@5d
    return v2

    #@5e
    .line 1040
    :sswitch_5
    const/16 v2, 0xc

    #@60
    return v2

    #@61
    .line 1018
    nop

    #@62
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private readLiteral()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@7
    .line 1055
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    #@9
    if-nez v0, :cond_0

    #@b
    .line 1056
    const-string/jumbo v0, "Expected literal value"

    #@e
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@11
    move-result-object v0

    #@12
    throw v0

    #@13
    .line 1058
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@19
    .line 1059
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@1b
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@1d
    if-ne v0, v1, :cond_1

    #@1f
    .line 1060
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    #@22
    .line 1062
    :cond_1
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@24
    return-object v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .locals 2
    .param p1, "newTop"    # Landroid/util/JsonScope;

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@4
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 581
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    :goto_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    add-int/2addr v1, v2

    #@7
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@9
    if-le v1, v2, :cond_0

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 859
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "c":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@19
    move-result v1

    #@1a
    if-ge v0, v1, :cond_2

    #@1c
    .line 860
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    #@1e
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@20
    add-int/2addr v2, v0

    #@21
    aget-char v1, v1, v2

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v2

    #@27
    if-eq v1, v2, :cond_1

    #@29
    .line 858
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    iput v1, p0, Landroid/util/JsonReader;->pos:I

    #@2f
    goto :goto_0

    #@30
    .line 859
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 864
    :cond_2
    const/4 v1, 0x1

    #@34
    return v1

    #@35
    .line 866
    .end local v0    # "c":I
    :cond_3
    const/4 v1, 0x0

    #@36
    return v1
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 848
    :cond_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    #@2
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    #@4
    if-lt v1, v2, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->fillBuffer(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 849
    :cond_1
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    #@f
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    #@11
    add-int/lit8 v3, v2, 0x1

    #@13
    iput v3, p0, Landroid/util/JsonReader;->pos:I

    #@15
    aget-char v0, v1, v2

    #@17
    .line 850
    .local v0, "c":C
    const/16 v1, 0xd

    #@19
    if-eq v0, v1, :cond_2

    #@1b
    const/16 v1, 0xa

    #@1d
    if-ne v0, v1, :cond_0

    #@1f
    .line 847
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1159
    new-instance v0, Landroid/util/MalformedJsonException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    .line 1160
    const-string/jumbo v2, " at line "

    #@e
    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 1160
    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    #@15
    move-result v2

    #@16
    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    .line 1160
    const-string/jumbo v2, " column "

    #@1d
    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1160
    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    #@24
    move-result v2

    #@25
    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    #@2
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    #@5
    .line 276
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    #@2
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    #@5
    .line 292
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 534
    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@3
    .line 535
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    .line 536
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@a
    .line 537
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    #@c
    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 538
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    #@13
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    #@16
    .line 533
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@2
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    #@5
    .line 284
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    #@2
    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    #@5
    .line 300
    return-void
.end method

.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 319
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@4
    .line 320
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@6
    sget-object v2, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    #@8
    if-eq v1, v2, :cond_0

    #@a
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@c
    sget-object v2, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@e
    if-eq v1, v2, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    #@2
    return v0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 425
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v2, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 426
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Expected a boolean but was "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 429
    :cond_0
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@27
    const-string/jumbo v2, "true"

    #@2a
    if-ne v1, v2, :cond_1

    #@2c
    const/4 v0, 0x1

    #@2d
    .line 430
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@30
    .line 431
    return v0

    #@31
    .line 429
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    #@32
    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public nextDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 459
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v3, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@7
    if-eq v2, v3, :cond_0

    #@9
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@b
    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@d
    if-eq v2, v3, :cond_0

    #@f
    .line 460
    new-instance v2, Ljava/lang/IllegalStateException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Expected a double but was "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    iget-object v4, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 463
    :cond_0
    iget-object v2, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@2d
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@30
    move-result-wide v0

    #@31
    .line 464
    .local v0, "result":D
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@34
    .line 465
    return-wide v0
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 511
    iget-object v4, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v5, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@7
    if-eq v4, v5, :cond_0

    #@9
    iget-object v4, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@b
    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@d
    if-eq v4, v5, :cond_0

    #@f
    .line 512
    new-instance v4, Ljava/lang/IllegalStateException;

    #@11
    new-instance v5, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v6, "Expected an int but was "

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    iget-object v6, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v4

    #@2b
    .line 517
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@2d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result v3

    #@31
    .line 526
    .local v3, "result":I
    :cond_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@34
    .line 527
    return v3

    #@35
    .line 518
    .end local v3    # "result":I
    :catch_0
    move-exception v2

    #@36
    .line 519
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@38
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3b
    move-result-wide v0

    #@3c
    .line 520
    .local v0, "asDouble":D
    double-to-int v3, v0

    #@3d
    .line 521
    .restart local v3    # "result":I
    int-to-double v4, v3

    #@3e
    cmpl-double v4, v4, v0

    #@40
    if-eqz v4, :cond_1

    #@42
    .line 522
    new-instance v4, Ljava/lang/NumberFormatException;

    #@44
    iget-object v5, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@46
    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 480
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v6, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@7
    if-eq v3, v6, :cond_0

    #@9
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@b
    sget-object v6, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@d
    if-eq v3, v6, :cond_0

    #@f
    .line 481
    new-instance v3, Ljava/lang/IllegalStateException;

    #@11
    new-instance v6, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v7, "Expected a long but was "

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    iget-object v7, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v6

    #@27
    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 486
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@2d
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    move-result-wide v4

    #@31
    .line 495
    .local v4, "result":J
    :cond_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@34
    .line 496
    return-wide v4

    #@35
    .line 487
    .end local v4    # "result":J
    :catch_0
    move-exception v2

    #@36
    .line 488
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@38
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3b
    move-result-wide v0

    #@3c
    .line 489
    .local v0, "asDouble":D
    double-to-long v4, v0

    #@3d
    .line 490
    .restart local v4    # "result":J
    long-to-double v6, v4

    #@3e
    cmpl-double v3, v6, v0

    #@40
    if-eqz v3, :cond_1

    #@42
    .line 491
    new-instance v3, Ljava/lang/NumberFormatException;

    #@44
    iget-object v6, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@46
    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@49
    throw v3
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 389
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v2, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 390
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Expected a name but was "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 392
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    #@29
    .line 393
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@2c
    .line 394
    return-object v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 443
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Expected null but was "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 447
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@28
    .line 441
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@3
    .line 407
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@5
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    #@7
    if-eq v1, v2, :cond_0

    #@9
    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@b
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 408
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Expected a string but was "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 411
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    #@2f
    .line 412
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@32
    .line 413
    return-object v0
.end method

.method public peek()Landroid/util/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 327
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 328
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@8
    return-object v3

    #@9
    .line 331
    :cond_0
    invoke-static {}, Landroid/util/JsonReader;->-getandroid_util_JsonScopeSwitchesValues()[I

    #@c
    move-result-object v3

    #@d
    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Landroid/util/JsonScope;->ordinal()I

    #@14
    move-result v4

    #@15
    aget v3, v3, v4

    #@17
    packed-switch v3, :pswitch_data_0

    #@1a
    .line 363
    new-instance v3, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v3

    #@20
    .line 333
    :pswitch_0
    sget-object v3, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@22
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    #@25
    .line 334
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    #@28
    move-result-object v1

    #@29
    .line 335
    .local v1, "firstToken":Landroid/util/JsonToken;
    iget-boolean v3, p0, Landroid/util/JsonReader;->lenient:Z

    #@2b
    if-nez v3, :cond_1

    #@2d
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@2f
    sget-object v4, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    #@31
    if-eq v3, v4, :cond_1

    #@33
    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@35
    sget-object v4, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    #@37
    if-eq v3, v4, :cond_1

    #@39
    .line 336
    new-instance v3, Ljava/io/IOException;

    #@3b
    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "Expected JSON document to start with \'[\' or \'{\' but was "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    iget-object v5, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    .line 336
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@54
    throw v3

    #@55
    .line 339
    :cond_1
    return-object v1

    #@56
    .line 341
    .end local v1    # "firstToken":Landroid/util/JsonToken;
    :pswitch_1
    invoke-direct {p0, v6}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    #@59
    move-result-object v3

    #@5a
    return-object v3

    #@5b
    .line 343
    :pswitch_2
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    #@5e
    move-result-object v3

    #@5f
    return-object v3

    #@60
    .line 345
    :pswitch_3
    invoke-direct {p0, v6}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    #@63
    move-result-object v3

    #@64
    return-object v3

    #@65
    .line 347
    :pswitch_4
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    #@68
    move-result-object v3

    #@69
    return-object v3

    #@6a
    .line 349
    :pswitch_5
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    #@6d
    move-result-object v3

    #@6e
    return-object v3

    #@6f
    .line 352
    :pswitch_6
    :try_start_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    #@72
    move-result-object v2

    #@73
    .line 353
    .local v2, "token":Landroid/util/JsonToken;
    iget-boolean v3, p0, Landroid/util/JsonReader;->lenient:Z

    #@75
    if-eqz v3, :cond_2

    #@77
    .line 354
    return-object v2

    #@78
    .line 356
    :cond_2
    const-string/jumbo v3, "Expected EOF"

    #@7b
    invoke-direct {p0, v3}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    #@7e
    move-result-object v3

    #@7f
    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    .line 357
    .end local v2    # "token":Landroid/util/JsonToken;
    :catch_0
    move-exception v0

    #@81
    .line 358
    .local v0, "e":Ljava/io/EOFException;
    sget-object v3, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    #@83
    iput-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    #@85
    return-object v3

    #@86
    .line 361
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_7
    new-instance v3, Ljava/lang/IllegalStateException;

    #@88
    const-string/jumbo v4, "JsonReader is closed"

    #@8b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v3

    #@8f
    .line 331
    nop

    #@90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 262
    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    #@2
    .line 261
    return-void
.end method

.method public skipValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 547
    const/4 v2, 0x1

    #@2
    iput-boolean v2, p0, Landroid/util/JsonReader;->skipping:Z

    #@4
    .line 549
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@d
    move-result-object v2

    #@e
    sget-object v3, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 550
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v3, "No element left to skip"

    #@17
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 561
    :catchall_0
    move-exception v2

    #@1c
    .line 562
    iput-boolean v4, p0, Landroid/util/JsonReader;->skipping:Z

    #@1e
    .line 561
    throw v2

    #@1f
    .line 552
    :cond_1
    const/4 v0, 0x0

    #@20
    .line 554
    .local v0, "count":I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    #@23
    move-result-object v1

    #@24
    .line 555
    .local v1, "token":Landroid/util/JsonToken;
    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    #@26
    if-eq v1, v2, :cond_3

    #@28
    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    if-ne v1, v2, :cond_5

    #@2c
    .line 556
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@2e
    .line 560
    :cond_4
    :goto_0
    if-nez v0, :cond_2

    #@30
    .line 562
    iput-boolean v4, p0, Landroid/util/JsonReader;->skipping:Z

    #@32
    .line 546
    return-void

    #@33
    .line 557
    :cond_5
    :try_start_2
    sget-object v2, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    #@35
    if-eq v1, v2, :cond_6

    #@37
    sget-object v2, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    if-ne v1, v2, :cond_4

    #@3b
    .line 558
    :cond_6
    add-int/lit8 v0, v0, -0x1

    #@3d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Landroid/util/JsonReader;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, " near "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method
