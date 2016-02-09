.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 219
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 220
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 221
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 222
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 229
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 230
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 231
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 232
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 196
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 197
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 198
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 199
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 240
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@5
    .line 241
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 242
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 243
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 209
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 210
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 211
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 212
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 253
    if-eqz p2, :cond_0

    #@5
    if-nez p1, :cond_0

    #@7
    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 255
    const-string/jumbo v1, "Plain text must be supplied if HTML text is supplied"

    #@c
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 257
    :cond_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@12
    .line 258
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@14
    .line 259
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@16
    .line 260
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@18
    .line 252
    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    #@0
    .prologue
    .line 459
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@4
    move-object/from16 v19, v0

    #@6
    if-eqz v19, :cond_13

    #@8
    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@b
    move-result-object v19

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@10
    move-object/from16 v20, v0

    #@12
    const-string/jumbo v21, "text/*"

    #@15
    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v18

    #@19
    .line 465
    .local v18, "types":[Ljava/lang/String;
    const/4 v10, 0x0

    #@1a
    .line 466
    .local v10, "hasHtml":Z
    const/4 v11, 0x0

    #@1b
    .line 467
    .local v11, "hasText":Z
    if-eqz v18, :cond_2

    #@1d
    .line 468
    const/16 v19, 0x0

    #@1f
    move-object/from16 v0, v18

    #@21
    array-length v0, v0

    #@22
    move/from16 v20, v0

    #@24
    :goto_0
    move/from16 v0, v19

    #@26
    move/from16 v1, v20

    #@28
    if-ge v0, v1, :cond_2

    #@2a
    aget-object v17, v18, v19

    #@2c
    .line 469
    .local v17, "type":Ljava/lang/String;
    const-string/jumbo v21, "text/html"

    #@2f
    move-object/from16 v0, v21

    #@31
    move-object/from16 v1, v17

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v21

    #@37
    if-eqz v21, :cond_1

    #@39
    .line 470
    const/4 v10, 0x1

    #@3a
    .line 468
    :cond_0
    :goto_1
    add-int/lit8 v19, v19, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 471
    :cond_1
    const-string/jumbo v21, "text/"

    #@40
    move-object/from16 v0, v17

    #@42
    move-object/from16 v1, v21

    #@44
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@47
    move-result v21

    #@48
    if-eqz v21, :cond_0

    #@4a
    .line 472
    const/4 v11, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 478
    .end local v17    # "type":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_3

    #@4e
    if-eqz v11, :cond_4

    #@50
    .line 479
    :cond_3
    const/4 v15, 0x0

    #@51
    .line 482
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@54
    move-result-object v20

    #@55
    .line 483
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@59
    move-object/from16 v21, v0

    #@5b
    .line 484
    if-eqz v10, :cond_5

    #@5d
    const-string/jumbo v19, "text/html"

    #@60
    :goto_2
    const/16 v22, 0x0

    #@62
    .line 482
    move-object/from16 v0, v20

    #@64
    move-object/from16 v1, v21

    #@66
    move-object/from16 v2, v19

    #@68
    move-object/from16 v3, v22

    #@6a
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@6d
    move-result-object v6

    #@6e
    .line 485
    .local v6, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    #@71
    move-result-object v15

    #@72
    .line 486
    .local v15, "stream":Ljava/io/FileInputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    #@74
    const-string/jumbo v19, "UTF-8"

    #@77
    move-object/from16 v0, v19

    #@79
    invoke-direct {v14, v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@7c
    .line 489
    .local v14, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/lang/StringBuilder;

    #@7e
    const/16 v19, 0x80

    #@80
    move/from16 v0, v19

    #@82
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@85
    .line 490
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v19, 0x2000

    #@87
    move/from16 v0, v19

    #@89
    new-array v4, v0, [C

    #@8b
    .line 492
    .local v4, "buffer":[C
    :goto_3
    invoke-virtual {v14, v4}, Ljava/io/InputStreamReader;->read([C)I

    #@8e
    move-result v12

    #@8f
    .local v12, "len":I
    if-lez v12, :cond_6

    #@91
    .line 493
    const/16 v19, 0x0

    #@93
    move/from16 v0, v19

    #@95
    invoke-virtual {v5, v4, v0, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@98
    goto :goto_3

    #@99
    .line 522
    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v12    # "len":I
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    #@9a
    .line 532
    .local v7, "e":Ljava/io/FileNotFoundException;
    if-eqz v15, :cond_4

    #@9c
    .line 534
    :try_start_1
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    #@9f
    .line 544
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    if-eqz p2, :cond_12

    #@a1
    .line 545
    move-object/from16 v0, p0

    #@a3
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@a5
    move-object/from16 v19, v0

    #@a7
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@aa
    move-result-object v19

    #@ab
    move-object/from16 v0, p0

    #@ad
    move-object/from16 v1, v19

    #@af
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b2
    move-result-object v19

    #@b3
    return-object v19

    #@b4
    .line 484
    .local v15, "stream":Ljava/io/FileInputStream;
    :cond_5
    :try_start_2
    const-string/jumbo v19, "text/plain"

    #@b7
    goto :goto_2

    #@b8
    .line 495
    .restart local v4    # "buffer":[C
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v12    # "len":I
    .restart local v14    # "reader":Ljava/io/InputStreamReader;
    .local v15, "stream":Ljava/io/FileInputStream;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bb
    move-result-object v16

    #@bc
    .line 496
    .local v16, "text":Ljava/lang/String;
    if-eqz v10, :cond_c

    #@be
    .line 497
    if-eqz p2, :cond_a

    #@c0
    .line 501
    :try_start_3
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c3
    move-result-object v13

    #@c4
    .line 502
    .local v13, "newText":Ljava/lang/CharSequence;
    if-eqz v13, :cond_8

    #@c6
    .line 532
    .end local v13    # "newText":Ljava/lang/CharSequence;
    :goto_5
    if-eqz v15, :cond_7

    #@c8
    .line 534
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    #@cb
    .line 502
    :cond_7
    :goto_6
    return-object v13

    #@cc
    .restart local v13    # "newText":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v13, v16

    #@ce
    goto :goto_5

    #@cf
    .line 535
    .end local v13    # "newText":Ljava/lang/CharSequence;
    :catch_1
    move-exception v8

    #@d0
    .local v8, "e":Ljava/io/IOException;
    goto :goto_6

    #@d1
    .line 503
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    #@d2
    .line 532
    .local v9, "e":Ljava/lang/RuntimeException;
    if-eqz v15, :cond_9

    #@d4
    .line 534
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@d7
    .line 504
    :cond_9
    :goto_7
    return-object v16

    #@d8
    .line 535
    :catch_3
    move-exception v8

    #@d9
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_7

    #@da
    .line 509
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@dd
    move-result-object v19

    #@de
    .line 532
    if-eqz v15, :cond_b

    #@e0
    .line 534
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@e3
    .line 509
    :cond_b
    :goto_8
    return-object v19

    #@e4
    .line 535
    :catch_4
    move-exception v8

    #@e5
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_8

    #@e6
    .line 512
    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    if-eqz p2, :cond_e

    #@e8
    .line 532
    if-eqz v15, :cond_d

    #@ea
    .line 534
    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@ed
    .line 515
    :cond_d
    :goto_9
    return-object v16

    #@ee
    .line 535
    :catch_5
    move-exception v8

    #@ef
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_9

    #@f0
    .line 519
    .end local v8    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_9
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@f3
    move-result-object v19

    #@f4
    .line 532
    if-eqz v15, :cond_f

    #@f6
    .line 534
    :try_start_a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    #@f9
    .line 519
    :cond_f
    :goto_a
    return-object v19

    #@fa
    .line 535
    :catch_6
    move-exception v8

    #@fb
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_a

    #@fc
    .line 526
    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v12    # "len":I
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "text":Ljava/lang/String;
    :catch_7
    move-exception v8

    #@fd
    .line 528
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v19, "ClippedData"

    #@100
    const-string/jumbo v20, "Failure loading text"

    #@103
    move-object/from16 v0, v19

    #@105
    move-object/from16 v1, v20

    #@107
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10a
    .line 529
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@10d
    move-result-object v19

    #@10e
    invoke-static/range {v19 .. v19}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@111
    move-result-object v19

    #@112
    .line 532
    if-eqz v15, :cond_10

    #@114
    .line 534
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    #@117
    .line 529
    :cond_10
    :goto_b
    return-object v19

    #@118
    .line 535
    :catch_8
    move-exception v8

    #@119
    goto :goto_b

    #@11a
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v8

    #@11b
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_4

    #@11c
    .line 531
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    #@11d
    .line 532
    if-eqz v15, :cond_11

    #@11f
    .line 534
    :try_start_d
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    #@122
    .line 531
    :cond_11
    :goto_c
    throw v19

    #@123
    .line 535
    :catch_a
    move-exception v8

    #@124
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_c

    #@125
    .line 547
    .end local v8    # "e":Ljava/io/IOException;
    :cond_12
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@129
    move-object/from16 v19, v0

    #@12b
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@12e
    move-result-object v19

    #@12f
    move-object/from16 v0, p0

    #@131
    move-object/from16 v1, v19

    #@133
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    #@136
    move-result-object v19

    #@137
    return-object v19

    #@138
    .line 553
    .end local v10    # "hasHtml":Z
    .end local v11    # "hasText":Z
    .end local v18    # "types":[Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13c
    move-object/from16 v19, v0

    #@13e
    if-eqz v19, :cond_15

    #@140
    .line 554
    if-eqz p2, :cond_14

    #@142
    .line 555
    move-object/from16 v0, p0

    #@144
    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@146
    move-object/from16 v19, v0

    #@148
    const/16 v20, 0x1

    #@14a
    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@14d
    move-result-object v19

    #@14e
    move-object/from16 v0, p0

    #@150
    move-object/from16 v1, v19

    #@152
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@155
    move-result-object v19

    #@156
    return-object v19

    #@157
    .line 557
    :cond_14
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@15b
    move-object/from16 v19, v0

    #@15d
    const/16 v20, 0x1

    #@15f
    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@162
    move-result-object v19

    #@163
    move-object/from16 v0, p0

    #@165
    move-object/from16 v1, v19

    #@167
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    #@16a
    move-result-object v19

    #@16b
    return-object v19

    #@16c
    .line 562
    :cond_15
    const-string/jumbo v19, ""

    #@16f
    return-object v19
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x100

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 567
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<a href=\""

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 568
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 569
    const-string/jumbo v1, "\">"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 570
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 571
    const-string/jumbo v1, "</a>"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 576
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@5
    .line 577
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@8
    .line 578
    new-instance v1, Landroid/text/style/URLSpan;

    #@a
    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    #@10
    move-result v2

    #@11
    const/4 v3, 0x0

    #@12
    .line 579
    const/16 v4, 0x21

    #@14
    .line 578
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@17
    .line 580
    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 439
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 440
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 441
    return-object v0

    #@8
    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    .line 446
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    #@e
    .line 447
    instance-of v2, v1, Landroid/text/Spanned;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 448
    check-cast v1, Landroid/text/Spanned;

    #@14
    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 450
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 453
    :cond_2
    const/4 v3, 0x0

    #@1f
    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    .line 454
    if-eqz v1, :cond_3

    #@25
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    :cond_3
    return-object v2
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v3

    #@4
    .line 389
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spanned;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 390
    return-object v3

    #@9
    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 393
    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@f
    .line 395
    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    .line 396
    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    #@15
    .line 397
    return-object v2

    #@16
    .line 399
    .end local v2    # "newText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    #@17
    .line 404
    :cond_1
    if-eqz v3, :cond_2

    #@19
    .line 405
    return-object v3

    #@1a
    .line 407
    :cond_2
    const/4 v4, 0x1

    #@1b
    invoke-direct {p0, p1, v4}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    #@1e
    move-result-object v4

    #@1f
    return-object v4
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v9

    #@4
    .line 316
    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v9, :cond_0

    #@6
    .line 317
    return-object v9

    #@7
    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@a
    move-result-object v10

    #@b
    .line 322
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_6

    #@d
    .line 327
    const/4 v8, 0x0

    #@e
    .line 330
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v11

    #@12
    .line 331
    const-string/jumbo v12, "text/*"

    #@15
    const/4 v13, 0x0

    #@16
    .line 330
    invoke-virtual {v11, v10, v12, v13}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@19
    move-result-object v2

    #@1a
    .line 332
    .local v2, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    #@1d
    move-result-object v8

    #@1e
    .line 333
    .local v8, "stream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    #@20
    const-string/jumbo v11, "UTF-8"

    #@23
    invoke-direct {v7, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@26
    .line 336
    .local v7, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    const/16 v11, 0x80

    #@2a
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2d
    .line 337
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v11, 0x2000

    #@2f
    new-array v0, v11, [C

    #@31
    .line 339
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStreamReader;->read([C)I

    #@34
    move-result v6

    #@35
    .local v6, "len":I
    if-lez v6, :cond_2

    #@37
    .line 340
    const/4 v11, 0x0

    #@38
    invoke-virtual {v1, v0, v11, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .line 344
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    #@3d
    .line 354
    .local v3, "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_1

    #@3f
    .line 356
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    #@42
    .line 364
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    return-object v11

    #@47
    .line 342
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[C
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v6    # "len":I
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    move-result-object v11

    #@4b
    .line 354
    if-eqz v8, :cond_3

    #@4d
    .line 356
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@50
    .line 342
    :cond_3
    :goto_2
    return-object v11

    #@51
    .line 357
    :catch_1
    move-exception v4

    #@52
    .local v4, "e":Ljava/io/IOException;
    goto :goto_2

    #@53
    .line 348
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    #@54
    .line 350
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v11, "ClippedData"

    #@57
    const-string/jumbo v12, "Failure loading text"

    #@5a
    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 351
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    move-result-object v11

    #@61
    .line 354
    if-eqz v8, :cond_4

    #@63
    .line 356
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@66
    .line 351
    :cond_4
    :goto_3
    return-object v11

    #@67
    .line 357
    :catch_3
    move-exception v4

    #@68
    goto :goto_3

    #@69
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    #@6a
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    #@6b
    .line 353
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@6c
    .line 354
    if-eqz v8, :cond_5

    #@6e
    .line 356
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@71
    .line 353
    :cond_5
    :goto_4
    throw v11

    #@72
    .line 357
    :catch_5
    move-exception v4

    #@73
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    #@74
    .line 369
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@77
    move-result-object v5

    #@78
    .line 370
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    #@7a
    .line 371
    const/4 v11, 0x1

    #@7b
    invoke-virtual {v5, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@7e
    move-result-object v11

    #@7f
    return-object v11

    #@80
    .line 375
    :cond_7
    const-string/jumbo v11, ""

    #@83
    return-object v11
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 596
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 597
    const-string/jumbo v0, "H:"

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 598
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 595
    :goto_0
    return-void

    #@11
    .line 599
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 600
    const-string/jumbo v0, "T:"

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 601
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_0

    #@21
    .line 602
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 603
    const-string/jumbo v0, "U:"

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 604
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_0

    #@31
    .line 605
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 606
    const-string/jumbo v0, "I:"

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 607
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@3d
    move-object v1, p1

    #@3e
    move v3, v2

    #@3f
    move v4, v2

    #@40
    move v5, v2

    #@41
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@44
    goto :goto_0

    #@45
    .line 609
    :cond_3
    const-string/jumbo v0, "NULL"

    #@48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 587
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipData.Item { "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 588
    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 589
    const-string/jumbo v1, " }"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method
