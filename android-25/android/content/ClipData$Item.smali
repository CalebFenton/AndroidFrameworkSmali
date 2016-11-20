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
.method public constructor <init>(Landroid/content/ClipData$Item;)V
    .locals 1
    .param p1, "other"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 196
    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@7
    .line 197
    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@b
    .line 198
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@d
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@f
    .line 199
    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@11
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@13
    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

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
    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 232
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 239
    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 240
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 241
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 242
    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 238
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 206
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 207
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 208
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 209
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 250
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@5
    .line 251
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 252
    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 253
    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 249
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
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 219
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@6
    .line 220
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@8
    .line 221
    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@a
    .line 222
    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@c
    .line 218
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
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 263
    if-eqz p2, :cond_0

    #@5
    if-nez p1, :cond_0

    #@7
    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    .line 265
    const-string/jumbo v1, "Plain text must be supplied if HTML text is supplied"

    #@c
    .line 264
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 267
    :cond_0
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@12
    .line 268
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@14
    .line 269
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@16
    .line 270
    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@18
    .line 262
    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    #@0
    .prologue
    .line 469
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@4
    move-object/from16 v20, v0

    #@6
    if-eqz v20, :cond_13

    #@8
    .line 474
    const/16 v19, 0x0

    #@a
    .line 476
    .local v19, "types":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@d
    move-result-object v20

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@12
    move-object/from16 v21, v0

    #@14
    const-string/jumbo v22, "text/*"

    #@17
    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_b

    #@1a
    move-result-object v19

    #@1b
    .line 480
    .end local v19    # "types":[Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    #@1c
    .line 481
    .local v11, "hasHtml":Z
    const/4 v12, 0x0

    #@1d
    .line 482
    .local v12, "hasText":Z
    if-eqz v19, :cond_2

    #@1f
    .line 483
    const/16 v20, 0x0

    #@21
    move-object/from16 v0, v19

    #@23
    array-length v0, v0

    #@24
    move/from16 v21, v0

    #@26
    :goto_1
    move/from16 v0, v20

    #@28
    move/from16 v1, v21

    #@2a
    if-ge v0, v1, :cond_2

    #@2c
    aget-object v18, v19, v20

    #@2e
    .line 484
    .local v18, "type":Ljava/lang/String;
    const-string/jumbo v22, "text/html"

    #@31
    move-object/from16 v0, v22

    #@33
    move-object/from16 v1, v18

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v22

    #@39
    if-eqz v22, :cond_1

    #@3b
    .line 485
    const/4 v11, 0x1

    #@3c
    .line 483
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 486
    :cond_1
    const-string/jumbo v22, "text/"

    #@42
    move-object/from16 v0, v18

    #@44
    move-object/from16 v1, v22

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@49
    move-result v22

    #@4a
    if-eqz v22, :cond_0

    #@4c
    .line 487
    const/4 v12, 0x1

    #@4d
    goto :goto_2

    #@4e
    .line 493
    .end local v18    # "type":Ljava/lang/String;
    :cond_2
    if-nez v11, :cond_3

    #@50
    if-eqz v12, :cond_4

    #@52
    .line 494
    :cond_3
    const/16 v16, 0x0

    #@54
    .line 497
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@57
    move-result-object v21

    #@58
    .line 498
    move-object/from16 v0, p0

    #@5a
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@5c
    move-object/from16 v22, v0

    #@5e
    .line 499
    if-eqz v11, :cond_5

    #@60
    const-string/jumbo v20, "text/html"

    #@63
    :goto_3
    const/16 v23, 0x0

    #@65
    .line 497
    move-object/from16 v0, v21

    #@67
    move-object/from16 v1, v22

    #@69
    move-object/from16 v2, v20

    #@6b
    move-object/from16 v3, v23

    #@6d
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@70
    move-result-object v6

    #@71
    .line 500
    .local v6, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    #@74
    move-result-object v16

    #@75
    .line 501
    .local v16, "stream":Ljava/io/FileInputStream;
    new-instance v15, Ljava/io/InputStreamReader;

    #@77
    const-string/jumbo v20, "UTF-8"

    #@7a
    move-object/from16 v0, v16

    #@7c
    move-object/from16 v1, v20

    #@7e
    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@81
    .line 504
    .local v15, "reader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    const/16 v20, 0x80

    #@85
    move/from16 v0, v20

    #@87
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8a
    .line 505
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/16 v20, 0x2000

    #@8c
    move/from16 v0, v20

    #@8e
    new-array v4, v0, [C

    #@90
    .line 507
    .local v4, "buffer":[C
    :goto_4
    invoke-virtual {v15, v4}, Ljava/io/InputStreamReader;->read([C)I

    #@93
    move-result v13

    #@94
    .local v13, "len":I
    if-lez v13, :cond_6

    #@96
    .line 508
    const/16 v20, 0x0

    #@98
    move/from16 v0, v20

    #@9a
    invoke-virtual {v5, v4, v0, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9d
    goto :goto_4

    #@9e
    .line 537
    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    #@9f
    .line 547
    .local v7, "e":Ljava/io/FileNotFoundException;
    if-eqz v16, :cond_4

    #@a1
    .line 549
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    #@a4
    .line 559
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    if-eqz p2, :cond_12

    #@a6
    .line 560
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@aa
    move-object/from16 v20, v0

    #@ac
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@af
    move-result-object v20

    #@b0
    move-object/from16 v0, p0

    #@b2
    move-object/from16 v1, v20

    #@b4
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b7
    move-result-object v20

    #@b8
    return-object v20

    #@b9
    .line 499
    .local v16, "stream":Ljava/io/FileInputStream;
    :cond_5
    :try_start_3
    const-string/jumbo v20, "text/plain"

    #@bc
    goto :goto_3

    #@bd
    .line 510
    .restart local v4    # "buffer":[C
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "len":I
    .restart local v15    # "reader":Ljava/io/InputStreamReader;
    .local v16, "stream":Ljava/io/FileInputStream;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c0
    move-result-object v17

    #@c1
    .line 511
    .local v17, "text":Ljava/lang/String;
    if-eqz v11, :cond_c

    #@c3
    .line 512
    if-eqz p2, :cond_a

    #@c5
    .line 516
    :try_start_4
    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@c8
    move-result-object v14

    #@c9
    .line 517
    .local v14, "newText":Ljava/lang/CharSequence;
    if-eqz v14, :cond_8

    #@cb
    .line 547
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :goto_6
    if-eqz v16, :cond_7

    #@cd
    .line 549
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    #@d0
    .line 517
    :cond_7
    :goto_7
    return-object v14

    #@d1
    .restart local v14    # "newText":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v14, v17

    #@d3
    goto :goto_6

    #@d4
    .line 550
    .end local v14    # "newText":Ljava/lang/CharSequence;
    :catch_1
    move-exception v8

    #@d5
    .local v8, "e":Ljava/io/IOException;
    goto :goto_7

    #@d6
    .line 518
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    #@d7
    .line 547
    .local v9, "e":Ljava/lang/RuntimeException;
    if-eqz v16, :cond_9

    #@d9
    .line 549
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@dc
    .line 519
    :cond_9
    :goto_8
    return-object v17

    #@dd
    .line 550
    :catch_3
    move-exception v8

    #@de
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_8

    #@df
    .line 524
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_a
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@e2
    move-result-object v20

    #@e3
    .line 547
    if-eqz v16, :cond_b

    #@e5
    .line 549
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    #@e8
    .line 524
    :cond_b
    :goto_9
    return-object v20

    #@e9
    .line 550
    :catch_4
    move-exception v8

    #@ea
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_9

    #@eb
    .line 527
    .end local v8    # "e":Ljava/io/IOException;
    :cond_c
    if-eqz p2, :cond_e

    #@ed
    .line 547
    if-eqz v16, :cond_d

    #@ef
    .line 549
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    #@f2
    .line 530
    :cond_d
    :goto_a
    return-object v17

    #@f3
    .line 550
    :catch_5
    move-exception v8

    #@f4
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_a

    #@f5
    .line 534
    .end local v8    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_a
    invoke-static/range {v17 .. v17}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@f8
    move-result-object v20

    #@f9
    .line 547
    if-eqz v16, :cond_f

    #@fb
    .line 549
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    #@fe
    .line 534
    :cond_f
    :goto_b
    return-object v20

    #@ff
    .line 550
    :catch_6
    move-exception v8

    #@100
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_b

    #@101
    .line 541
    .end local v4    # "buffer":[C
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "len":I
    .end local v15    # "reader":Ljava/io/InputStreamReader;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "text":Ljava/lang/String;
    :catch_7
    move-exception v8

    #@102
    .line 543
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_c
    const-string/jumbo v20, "ClipData"

    #@105
    const-string/jumbo v21, "Failure loading text"

    #@108
    move-object/from16 v0, v20

    #@10a
    move-object/from16 v1, v21

    #@10c
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@10f
    .line 544
    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    #@112
    move-result-object v20

    #@113
    invoke-static/range {v20 .. v20}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@116
    move-result-object v20

    #@117
    .line 547
    if-eqz v16, :cond_10

    #@119
    .line 549
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    #@11c
    .line 544
    :cond_10
    :goto_c
    return-object v20

    #@11d
    .line 550
    :catch_8
    move-exception v8

    #@11e
    goto :goto_c

    #@11f
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v8

    #@120
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_5

    #@121
    .line 546
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    #@122
    .line 547
    if-eqz v16, :cond_11

    #@124
    .line 549
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    #@127
    .line 546
    :cond_11
    :goto_d
    throw v20

    #@128
    .line 550
    :catch_a
    move-exception v8

    #@129
    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_d

    #@12a
    .line 562
    .end local v8    # "e":Ljava/io/IOException;
    :cond_12
    move-object/from16 v0, p0

    #@12c
    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@12e
    move-object/from16 v20, v0

    #@130
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@133
    move-result-object v20

    #@134
    move-object/from16 v0, p0

    #@136
    move-object/from16 v1, v20

    #@138
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    #@13b
    move-result-object v20

    #@13c
    return-object v20

    #@13d
    .line 568
    .end local v11    # "hasHtml":Z
    .end local v12    # "hasText":Z
    :cond_13
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@141
    move-object/from16 v20, v0

    #@143
    if-eqz v20, :cond_15

    #@145
    .line 569
    if-eqz p2, :cond_14

    #@147
    .line 570
    move-object/from16 v0, p0

    #@149
    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@14b
    move-object/from16 v20, v0

    #@14d
    const/16 v21, 0x1

    #@14f
    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@152
    move-result-object v20

    #@153
    move-object/from16 v0, p0

    #@155
    move-object/from16 v1, v20

    #@157
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@15a
    move-result-object v20

    #@15b
    return-object v20

    #@15c
    .line 572
    :cond_14
    move-object/from16 v0, p0

    #@15e
    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@160
    move-object/from16 v20, v0

    #@162
    const/16 v21, 0x1

    #@164
    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@167
    move-result-object v20

    #@168
    move-object/from16 v0, p0

    #@16a
    move-object/from16 v1, v20

    #@16c
    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    #@16f
    move-result-object v20

    #@170
    return-object v20

    #@171
    .line 577
    :cond_15
    const-string/jumbo v20, ""

    #@174
    return-object v20

    #@175
    .line 477
    .restart local v19    # "types":[Ljava/lang/String;
    :catch_b
    move-exception v10

    #@176
    .local v10, "e":Ljava/lang/SecurityException;
    goto/16 :goto_0
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x100

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 582
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "<a href=\""

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 583
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 584
    const-string/jumbo v1, "\">"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 585
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 586
    const-string/jumbo v1, "</a>"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 587
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
    .line 591
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@5
    .line 592
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@8
    .line 593
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
    .line 594
    const/16 v4, 0x21

    #@14
    .line 593
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@17
    .line 595
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
    .line 449
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 450
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    .line 451
    return-object v0

    #@8
    .line 455
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    .line 456
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    #@e
    .line 457
    instance-of v2, v1, Landroid/text/Spanned;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 458
    check-cast v1, Landroid/text/Spanned;

    #@14
    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 460
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    return-object v2

    #@1e
    .line 463
    :cond_2
    const/4 v3, 0x0

    #@1f
    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    .line 464
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
    .line 398
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v3

    #@4
    .line 399
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spanned;

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 400
    return-object v3

    #@9
    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 403
    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@f
    .line 405
    :try_start_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v2

    #@13
    .line 406
    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    #@15
    .line 407
    return-object v2

    #@16
    .line 409
    .end local v2    # "newText":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    #@17
    .line 414
    :cond_1
    if-eqz v3, :cond_2

    #@19
    .line 415
    return-object v3

    #@1a
    .line 417
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
    .line 325
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v9

    #@4
    .line 326
    .local v9, "text":Ljava/lang/CharSequence;
    if-eqz v9, :cond_0

    #@6
    .line 327
    return-object v9

    #@7
    .line 331
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@a
    move-result-object v10

    #@b
    .line 332
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_6

    #@d
    .line 337
    const/4 v8, 0x0

    #@e
    .line 340
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@11
    move-result-object v11

    #@12
    .line 341
    const-string/jumbo v12, "text/*"

    #@15
    const/4 v13, 0x0

    #@16
    .line 340
    invoke-virtual {v11, v10, v12, v13}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    #@19
    move-result-object v2

    #@1a
    .line 342
    .local v2, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    #@1d
    move-result-object v8

    #@1e
    .line 343
    .local v8, "stream":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    #@20
    const-string/jumbo v11, "UTF-8"

    #@23
    invoke-direct {v7, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@26
    .line 346
    .local v7, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    const/16 v11, 0x80

    #@2a
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2d
    .line 347
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v11, 0x2000

    #@2f
    new-array v0, v11, [C

    #@31
    .line 349
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStreamReader;->read([C)I

    #@34
    move-result v6

    #@35
    .local v6, "len":I
    if-lez v6, :cond_2

    #@37
    .line 350
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
    .line 354
    .end local v0    # "buffer":[C
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "len":I
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    #@3d
    .line 364
    .local v3, "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_1

    #@3f
    .line 366
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    #@42
    .line 374
    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@45
    move-result-object v11

    #@46
    return-object v11

    #@47
    .line 352
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
    .line 364
    if-eqz v8, :cond_3

    #@4d
    .line 366
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@50
    .line 352
    :cond_3
    :goto_2
    return-object v11

    #@51
    .line 367
    :catch_1
    move-exception v4

    #@52
    .local v4, "e":Ljava/io/IOException;
    goto :goto_2

    #@53
    .line 358
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
    .line 360
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v11, "ClipData"

    #@57
    const-string/jumbo v12, "Failure loading text"

    #@5a
    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    .line 361
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@60
    move-result-object v11

    #@61
    .line 364
    if-eqz v8, :cond_4

    #@63
    .line 366
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@66
    .line 361
    :cond_4
    :goto_3
    return-object v11

    #@67
    .line 367
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
    .line 363
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    #@6c
    .line 364
    if-eqz v8, :cond_5

    #@6e
    .line 366
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@71
    .line 363
    :cond_5
    :goto_4
    throw v11

    #@72
    .line 367
    :catch_5
    move-exception v4

    #@73
    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    #@74
    .line 379
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@77
    move-result-object v5

    #@78
    .line 380
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_7

    #@7a
    .line 381
    const/4 v11, 0x1

    #@7b
    invoke-virtual {v5, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@7e
    move-result-object v11

    #@7f
    return-object v11

    #@80
    .line 385
    :cond_7
    const-string/jumbo v11, ""

    #@83
    return-object v11
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 284
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 298
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
    .line 611
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 612
    const-string/jumbo v0, "H:"

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 613
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 610
    :goto_0
    return-void

    #@11
    .line 614
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 615
    const-string/jumbo v0, "T:"

    #@18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 616
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@20
    goto :goto_0

    #@21
    .line 617
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@23
    if-eqz v0, :cond_2

    #@25
    .line 618
    const-string/jumbo v0, "U:"

    #@28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 619
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_0

    #@31
    .line 620
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@33
    if-eqz v0, :cond_3

    #@35
    .line 621
    const-string/jumbo v0, "I:"

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 622
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
    .line 624
    :cond_3
    const-string/jumbo v0, "NULL"

    #@48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    goto :goto_0
.end method

.method public toShortSummaryString(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 630
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 631
    const-string/jumbo v0, "HTML"

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 629
    :goto_0
    return-void

    #@c
    .line 632
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 633
    const-string/jumbo v0, "TEXT"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    goto :goto_0

    #@17
    .line 634
    :cond_1
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 635
    const-string/jumbo v0, "U:"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 636
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    goto :goto_0

    #@27
    .line 637
    :cond_2
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 638
    const-string/jumbo v0, "I:"

    #@2e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 639
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@33
    move-object v1, p1

    #@34
    move v3, v2

    #@35
    move v4, v2

    #@36
    move v5, v2

    #@37
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@3a
    goto :goto_0

    #@3b
    .line 641
    :cond_3
    const-string/jumbo v0, "NULL"

    #@3e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 602
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipData.Item { "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 603
    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 604
    const-string/jumbo v1, " }"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method
