.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final greylist-max-o DEFAULT:I = 0x3801

.field private static final greylist-max-o INCREMENT:I = 0x400

.field private static final greylist-max-o RIGHT:I = 0x2454

.field private static final greylist-max-o TRIE_C:I = 0x0

.field private static final greylist-max-o TRIE_CHILD:I = 0x2

.field private static final greylist-max-o TRIE_NEXT:I = 0x3

.field private static final greylist-max-o TRIE_NULL:C = '\uffff'

.field private static final greylist-max-o TRIE_OFF:I = 0x1

.field private static final greylist-max-o TRIE_ROOT:I = 0x0

.field private static final greylist-max-o TRIE_SIZEOF:I = 0x4

.field private static greylist-max-o sInstance:Landroid/text/AutoText;

.field private static greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mSize:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTrie:[C

.field private greylist-max-o mTrieUsed:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 78
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    .line 79
    return-void
.end method

.method private greylist-max-o add(Ljava/lang/String;C)V
    .registers 12
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "off"    # C

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 214
    .local v0, "slen":I
    const/4 v1, 0x0

    .line 216
    .local v1, "herep":I
    iget v2, p0, Landroid/text/AutoText;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/AutoText;->mSize:I

    .line 218
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_92

    .line 219
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 220
    .local v3, "c":C
    const/4 v4, 0x0

    .line 222
    .local v4, "found":Z
    :goto_13
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v5, v5, v1

    const v6, 0xffff

    if-eq v5, v6, :cond_46

    .line 224
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v1

    add-int/lit8 v7, v7, 0x0

    aget-char v5, v5, v7

    if-ne v3, v5, :cond_3f

    .line 228
    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_37

    .line 229
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v1

    add-int/lit8 v6, v6, 0x1

    aput-char p2, v5, v6

    .line 230
    return-void

    .line 236
    :cond_37
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v5, v5, v1

    add-int/lit8 v1, v5, 0x2

    .line 237
    const/4 v4, 0x1

    .line 238
    goto :goto_46

    .line 223
    :cond_3f
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v5, v5, v1

    add-int/lit8 v1, v5, 0x3

    goto :goto_13

    .line 242
    :cond_46
    :goto_46
    if-nez v4, :cond_8e

    .line 245
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v5

    .line 246
    .local v5, "node":C
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v5, v7, v1

    .line 248
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v1

    add-int/lit8 v8, v8, 0x0

    aput-char v3, v7, v8

    .line 249
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v1

    add-int/lit8 v8, v8, 0x1

    aput-char v6, v7, v8

    .line 250
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v1

    add-int/lit8 v8, v8, 0x3

    aput-char v6, v7, v8

    .line 251
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v1

    add-int/lit8 v8, v8, 0x2

    aput-char v6, v7, v8

    .line 255
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_87

    .line 256
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v1

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    .line 257
    return-void

    .line 262
    :cond_87
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v1

    add-int/lit8 v6, v6, 0x2

    move v1, v6

    .line 218
    .end local v3    # "c":C
    .end local v4    # "found":Z
    .end local v5    # "node":C
    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 265
    .end local v2    # "i":I
    :cond_92
    return-void
.end method

.method public static whitelist get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 5
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 111
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 92
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_11
    sget-object v3, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 95
    .local v3, "instance":Landroid/text/AutoText;
    iget-object v4, v3, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 96
    new-instance v4, Landroid/text/AutoText;

    invoke-direct {v4, v0}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    move-object v3, v4

    .line 97
    sput-object v3, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 99
    :cond_23
    monitor-exit v2

    .line 101
    return-object v3

    .line 99
    .end local v3    # "instance":Landroid/text/AutoText;
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private greylist-max-o getSize()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static whitelist getSize(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 122
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    move-result v0

    return v0
.end method

.method private greylist-max-o init(Landroid/content/res/Resources;)V
    .registers 11
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 162
    const v0, 0x1170003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 164
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2454

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v1, "right":Ljava/lang/StringBuilder;
    const/16 v2, 0x3801

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    .line 166
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v3, 0x0

    const v4, 0xffff

    aput-char v4, v2, v3

    .line 167
    const/4 v2, 0x1

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 170
    :try_start_1f
    const-string/jumbo v2, "words"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 171
    const-string v2, ""

    .line 172
    .local v2, "odest":Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .local v3, "ooff":C
    :goto_28
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 177
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_6a

    const-string/jumbo v5, "word"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 179
    goto :goto_6a

    .line 182
    :cond_3b
    const-string/jumbo v5, "src"

    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "src":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_69

    .line 184
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "dest":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 188
    move v7, v3

    .local v7, "off":C
    goto :goto_66

    .line 190
    .end local v7    # "off":C
    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    int-to-char v7, v7

    .line 191
    .restart local v7    # "off":C
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_66
    invoke-direct {p0, v5, v7}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V

    .line 197
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "src":Ljava/lang/String;
    .end local v6    # "dest":Ljava/lang/String;
    .end local v7    # "off":C
    :cond_69
    goto :goto_28

    .line 200
    :cond_6a
    :goto_6a
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_6d} :catch_81
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_6d} :catch_7a
    .catchall {:try_start_1f .. :try_end_6d} :catchall_78

    .line 206
    .end local v2    # "odest":Ljava/lang/String;
    .end local v3    # "ooff":C
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 207
    nop

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 210
    return-void

    .line 206
    :catchall_78
    move-exception v2

    goto :goto_88

    .line 203
    :catch_7a
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    :try_start_7b
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "right":Ljava/lang/StringBuilder;
    .end local p0    # "this":Landroid/text/AutoText;
    .end local p1    # "r":Landroid/content/res/Resources;
    throw v3

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "right":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Landroid/text/AutoText;
    .restart local p1    # "r":Landroid/content/res/Resources;
    :catch_81
    move-exception v2

    .line 202
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v1    # "right":Ljava/lang/StringBuilder;
    .end local p0    # "this":Landroid/text/AutoText;
    .end local p1    # "r":Landroid/content/res/Resources;
    throw v3
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_78

    .line 206
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "right":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Landroid/text/AutoText;
    .restart local p1    # "r":Landroid/content/res/Resources;
    :goto_88
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 207
    throw v2
.end method

.method private greylist-max-o lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 12
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 133
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    .line 135
    .local v0, "here":I
    move v1, p2

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x0

    if-ge v1, p3, :cond_52

    .line 136
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 138
    .local v3, "c":C
    :goto_d
    const v4, 0xffff

    if-eq v0, v4, :cond_4c

    .line 139
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v0, 0x0

    aget-char v5, v5, v6

    if-ne v3, v5, :cond_45

    .line 140
    add-int/lit8 v5, p3, -0x1

    if-ne v1, v5, :cond_3e

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v0, 0x1

    aget-char v5, v5, v6

    if-eq v5, v4, :cond_3e

    .line 142
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v2, v2, v4

    .line 143
    .local v2, "off":I
    iget-object v4, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 145
    .local v4, "len":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 148
    .end local v2    # "off":I
    .end local v4    # "len":I
    :cond_3e
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v0, 0x2

    aget-char v0, v5, v6

    .line 149
    goto :goto_4c

    .line 138
    :cond_45
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v5, v0, 0x3

    aget-char v0, v4, v5

    goto :goto_d

    .line 153
    :cond_4c
    :goto_4c
    if-ne v0, v4, :cond_4f

    .line 154
    return-object v2

    .line 135
    .end local v3    # "c":C
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 158
    .end local v1    # "i":I
    :cond_52
    return-object v2
.end method

.method private greylist-max-o newTrieNode()C
    .registers 5

    .line 268
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v1, v1

    if-le v0, v1, :cond_1b

    .line 269
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v0, v0

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [C

    .line 270
    .local v0, "copy":[C
    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 274
    .end local v0    # "copy":[C
    :cond_1b
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 275
    .local v0, "ret":C
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    iput-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 277
    return v0
.end method
