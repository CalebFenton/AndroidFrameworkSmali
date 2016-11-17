.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 58
    new-instance v0, Landroid/text/AutoText;

    #@2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    #@9
    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    #@b
    .line 59
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    #@12
    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@6
    move-result-object v0

    #@7
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@9
    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    #@b
    .line 78
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    #@e
    .line 76
    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "off"    # C

    #@0
    .prologue
    const v8, 0xffff

    #@3
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v5

    #@7
    .line 214
    .local v5, "slen":I
    const/4 v2, 0x0

    #@8
    .line 216
    .local v2, "herep":I
    iget v6, p0, Landroid/text/AutoText;->mSize:I

    #@a
    add-int/lit8 v6, v6, 0x1

    #@c
    iput v6, p0, Landroid/text/AutoText;->mSize:I

    #@e
    .line 218
    const/4 v3, 0x0

    #@f
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_5

    #@11
    .line 219
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 220
    .local v0, "c":C
    const/4 v1, 0x0

    #@16
    .line 222
    .local v1, "found":Z
    :goto_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@18
    aget-char v6, v6, v2

    #@1a
    if-eq v6, v8, :cond_1

    #@1c
    .line 224
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@1e
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@20
    aget-char v7, v7, v2

    #@22
    add-int/lit8 v7, v7, 0x0

    #@24
    aget-char v6, v6, v7

    #@26
    if-ne v0, v6, :cond_2

    #@28
    .line 228
    add-int/lit8 v6, v5, -0x1

    #@2a
    if-ne v3, v6, :cond_0

    #@2c
    .line 229
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@2e
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@30
    aget-char v7, v7, v2

    #@32
    add-int/lit8 v7, v7, 0x1

    #@34
    aput-char p2, v6, v7

    #@36
    .line 230
    return-void

    #@37
    .line 236
    :cond_0
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@39
    aget-char v6, v6, v2

    #@3b
    add-int/lit8 v2, v6, 0x2

    #@3d
    .line 237
    const/4 v1, 0x1

    #@3e
    .line 242
    :cond_1
    if-nez v1, :cond_4

    #@40
    .line 245
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    #@43
    move-result v4

    #@44
    .line 246
    .local v4, "node":C
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@46
    aput-char v4, v6, v2

    #@48
    .line 248
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@4a
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@4c
    aget-char v7, v7, v2

    #@4e
    add-int/lit8 v7, v7, 0x0

    #@50
    aput-char v0, v6, v7

    #@52
    .line 249
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@54
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@56
    aget-char v7, v7, v2

    #@58
    add-int/lit8 v7, v7, 0x1

    #@5a
    aput-char v8, v6, v7

    #@5c
    .line 250
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@5e
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@60
    aget-char v7, v7, v2

    #@62
    add-int/lit8 v7, v7, 0x3

    #@64
    aput-char v8, v6, v7

    #@66
    .line 251
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@68
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@6a
    aget-char v7, v7, v2

    #@6c
    add-int/lit8 v7, v7, 0x2

    #@6e
    aput-char v8, v6, v7

    #@70
    .line 255
    add-int/lit8 v6, v5, -0x1

    #@72
    if-ne v3, v6, :cond_3

    #@74
    .line 256
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@76
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    #@78
    aget-char v7, v7, v2

    #@7a
    add-int/lit8 v7, v7, 0x1

    #@7c
    aput-char p2, v6, v7

    #@7e
    .line 257
    return-void

    #@7f
    .line 223
    .end local v4    # "node":C
    :cond_2
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@81
    aget-char v6, v6, v2

    #@83
    add-int/lit8 v2, v6, 0x3

    #@85
    goto :goto_1

    #@86
    .line 262
    .restart local v4    # "node":C
    :cond_3
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    #@88
    aget-char v6, v6, v2

    #@8a
    add-int/lit8 v2, v6, 0x2

    #@8c
    .line 218
    .end local v4    # "node":C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 212
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_5
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 111
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v2

    #@8
    .line 89
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v3

    #@c
    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@e
    .line 92
    .local v1, "locale":Ljava/util/Locale;
    sget-object v4, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    #@10
    monitor-enter v4

    #@11
    .line 93
    :try_start_0
    sget-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    #@13
    .line 95
    .local v0, "instance":Landroid/text/AutoText;
    iget-object v3, v0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    #@15
    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-nez v3, :cond_0

    #@1b
    .line 96
    new-instance v0, Landroid/text/AutoText;

    #@1d
    .end local v0    # "instance":Landroid/text/AutoText;
    invoke-direct {v0, v2}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    #@20
    .line 97
    .restart local v0    # "instance":Landroid/text/AutoText;
    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    :cond_0
    monitor-exit v4

    #@23
    .line 101
    return-object v0

    #@24
    .line 92
    .end local v0    # "instance":Landroid/text/AutoText;
    :catchall_0
    move-exception v3

    #@25
    monitor-exit v4

    #@26
    throw v3
.end method

.method private getSize()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    #@2
    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 122
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 12
    .param p1, "r"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 162
    const v9, 0x1110002

    #@3
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v6

    #@7
    .line 164
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v7, Ljava/lang/StringBuilder;

    #@9
    const/16 v9, 0x2454

    #@b
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 165
    .local v7, "right":Ljava/lang/StringBuilder;
    const/16 v9, 0x3801

    #@10
    new-array v9, v9, [C

    #@12
    iput-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    #@14
    .line 166
    iget-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    #@16
    const v10, 0xffff

    #@19
    const/4 v11, 0x0

    #@1a
    aput-char v10, v9, v11

    #@1c
    .line 167
    const/4 v9, 0x1

    #@1d
    iput-char v9, p0, Landroid/text/AutoText;->mTrieUsed:C

    #@1f
    .line 170
    :try_start_0
    const-string/jumbo v9, "words"

    #@22
    invoke-static {v6, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@25
    .line 171
    const-string/jumbo v4, ""

    #@28
    .line 175
    .local v4, "odest":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2b
    .line 177
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    .line 178
    .local v3, "element":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@31
    const-string/jumbo v9, "word"

    #@34
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v9

    #@38
    if-eqz v9, :cond_2

    #@3a
    .line 182
    const-string/jumbo v9, "src"

    #@3d
    const/4 v10, 0x0

    #@3e
    invoke-interface {v6, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    .line 183
    .local v8, "src":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    #@45
    move-result v9

    #@46
    const/4 v10, 0x4

    #@47
    if-ne v9, v10, :cond_0

    #@49
    .line 184
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 187
    .local v0, "dest":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v9

    #@51
    if-eqz v9, :cond_1

    #@53
    .line 172
    const/4 v5, 0x0

    #@54
    .line 195
    :goto_1
    invoke-direct {p0, v8, v5}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    goto :goto_0

    #@58
    .line 201
    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "odest":Ljava/lang/String;
    .end local v8    # "src":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@59
    .line 202
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v9, Ljava/lang/RuntimeException;

    #@5b
    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@5e
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5f
    .line 205
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    #@60
    .line 206
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@63
    .line 205
    throw v9

    #@64
    .line 190
    .restart local v0    # "dest":Ljava/lang/String;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "odest":Ljava/lang/String;
    .restart local v8    # "src":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@67
    move-result v9

    #@68
    int-to-char v5, v9

    #@69
    .line 191
    .local v5, "off":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6c
    move-result v9

    #@6d
    int-to-char v9, v9

    #@6e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    goto :goto_1

    #@75
    .line 203
    .end local v0    # "dest":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "odest":Ljava/lang/String;
    .end local v5    # "off":C
    .end local v8    # "src":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@76
    .line 204
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    #@78
    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@7b
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "element":Ljava/lang/String;
    .restart local v4    # "odest":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7f
    .line 206
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@82
    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v9

    #@86
    iput-object v9, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    #@88
    .line 161
    return-void
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 9
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const v7, 0xffff

    #@4
    .line 133
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    #@6
    const/4 v6, 0x0

    #@7
    aget-char v1, v5, v6

    #@9
    .line 135
    .local v1, "here":I
    move v2, p2

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    #@c
    .line 136
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 138
    .local v0, "c":C
    :goto_1
    if-eq v1, v7, :cond_1

    #@12
    .line 139
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    #@14
    add-int/lit8 v6, v1, 0x0

    #@16
    aget-char v5, v5, v6

    #@18
    if-ne v0, v5, :cond_2

    #@1a
    .line 140
    add-int/lit8 v5, p3, -0x1

    #@1c
    if-ne v2, v5, :cond_0

    #@1e
    .line 141
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    #@20
    add-int/lit8 v6, v1, 0x1

    #@22
    aget-char v5, v5, v6

    #@24
    if-eq v5, v7, :cond_0

    #@26
    .line 142
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    #@28
    add-int/lit8 v6, v1, 0x1

    #@2a
    aget-char v4, v5, v6

    #@2c
    .line 143
    .local v4, "off":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    #@2e
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v3

    #@32
    .line 145
    .local v3, "len":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    #@34
    add-int/lit8 v6, v4, 0x1

    #@36
    add-int/lit8 v7, v4, 0x1

    #@38
    add-int/2addr v7, v3

    #@39
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    return-object v5

    #@3e
    .line 148
    .end local v3    # "len":I
    .end local v4    # "off":I
    :cond_0
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    #@40
    add-int/lit8 v6, v1, 0x2

    #@42
    aget-char v1, v5, v6

    #@44
    .line 153
    :cond_1
    if-ne v1, v7, :cond_3

    #@46
    .line 154
    return-object v8

    #@47
    .line 138
    :cond_2
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    #@49
    add-int/lit8 v6, v1, 0x3

    #@4b
    aget-char v1, v5, v6

    #@4d
    goto :goto_1

    #@4e
    .line 135
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_0

    #@51
    .line 158
    .end local v0    # "c":C
    :cond_4
    return-object v8
.end method

.method private newTrieNode()C
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 268
    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    #@3
    add-int/lit8 v2, v2, 0x4

    #@5
    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    #@7
    array-length v3, v3

    #@8
    if-le v2, v3, :cond_0

    #@a
    .line 269
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    #@c
    array-length v2, v2

    #@d
    add-int/lit16 v2, v2, 0x400

    #@f
    new-array v0, v2, [C

    #@11
    .line 270
    .local v0, "copy":[C
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    #@13
    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    #@15
    array-length v3, v3

    #@16
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@19
    .line 271
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    #@1b
    .line 274
    .end local v0    # "copy":[C
    :cond_0
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    #@1d
    .line 275
    .local v1, "ret":C
    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    #@1f
    add-int/lit8 v2, v2, 0x4

    #@21
    int-to-char v2, v2

    #@22
    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    #@24
    .line 277
    return v1
.end method
