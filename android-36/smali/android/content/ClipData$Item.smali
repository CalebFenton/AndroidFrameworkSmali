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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item$Builder;
    }
.end annotation


# instance fields
.field private blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field final greylist-max-o mHtmlText:Ljava/lang/String;

.field final greylist-max-o mIntent:Landroid/content/Intent;

.field final blacklist mIntentSender:Landroid/content/IntentSender;

.field final greylist-max-o mText:Ljava/lang/CharSequence;

.field private blacklist mTextLinks:Landroid/view/textclassifier/TextLinks;

.field private blacklist mTokenVerificationEnabled:Z

.field greylist-max-p mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityInfo(Landroid/content/ClipData$Item;)Landroid/content/pm/ActivityInfo;
    .registers 1

    iget-object p0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextLinks(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;
    .registers 1

    iget-object p0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ClipData$Item;)V
    .registers 3
    .param p1, "other"    # Landroid/content/ClipData$Item;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 313
    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 314
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 315
    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    .line 316
    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 317
    iget-object v0, p1, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 318
    iget-object v0, p1, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 319
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 345
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 346
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 352
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .end local p1    # "uri":Landroid/net/Uri;
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 353
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 325
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "text":Ljava/lang/CharSequence;
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 326
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 360
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p3    # "uri":Landroid/net/Uri;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v3, "intent":Landroid/content/Intent;
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 361
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 338
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "htmlText":Ljava/lang/String;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "htmlText":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 339
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "intentSender"    # Landroid/content/IntentSender;
    .param p5, "uri"    # Landroid/net/Uri;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    if-eqz p2, :cond_10

    if-eqz p1, :cond_8

    goto :goto_10

    .line 379
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_10
    :goto_10
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    .line 383
    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    .line 384
    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 385
    iput-object p4, p0, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    .line 386
    iput-object p5, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 387
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;Landroid/content/ClipData-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "uri"    # Landroid/net/Uri;

    .line 370
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "htmlText":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    .end local p4    # "uri":Landroid/net/Uri;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "htmlText":Ljava/lang/String;
    .local v3, "intent":Landroid/content/Intent;
    .local v5, "uri":Landroid/net/Uri;
    invoke-direct/range {v0 .. v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;)V

    .line 371
    return-void
.end method

.method private greylist-max-o coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styled"    # Z

    .line 656
    const-string v0, "ClipData"

    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string v2, ""

    if-eqz v1, :cond_128

    .line 661
    const/4 v1, 0x0

    .line 663
    .local v1, "types":[Ljava/lang/String;
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    const-string/jumbo v5, "text/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_16} :catch_18

    move-object v1, v3

    .line 666
    goto :goto_19

    .line 664
    :catch_18
    move-exception v3

    .line 667
    :goto_19
    const/4 v3, 0x0

    .line 668
    .local v3, "hasHtml":Z
    const/4 v4, 0x0

    .line 669
    .local v4, "hasText":Z
    const-string/jumbo v5, "text/html"

    const/4 v6, 0x0

    if-eqz v1, :cond_3c

    .line 670
    array-length v7, v1

    move v8, v6

    :goto_23
    if-ge v8, v7, :cond_3c

    aget-object v9, v1, v8

    .line 671
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 672
    const/4 v3, 0x1

    goto :goto_39

    .line 673
    :cond_2f
    const-string/jumbo v10, "text/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 674
    const/4 v4, 0x1

    .line 670
    .end local v9    # "type":Ljava/lang/String;
    :cond_39
    :goto_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 680
    :cond_3c
    if-nez v3, :cond_40

    if-eqz v4, :cond_e8

    .line 681
    :cond_40
    const/4 v7, 0x0

    .line 684
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 686
    if-eqz v3, :cond_4a

    goto :goto_4d

    :cond_4a
    const-string/jumbo v5, "text/plain"

    .line 685
    :goto_4d
    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 687
    .local v5, "descr":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    move-object v7, v8

    .line 688
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 691
    .local v8, "reader":Ljava/io/InputStreamReader;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 692
    .local v9, "builder":Ljava/lang/StringBuilder;
    const/16 v10, 0x2000

    new-array v10, v10, [C

    .line 694
    .local v10, "buffer":[C
    :goto_69
    invoke-virtual {v8, v10}, Ljava/io/InputStreamReader;->read([C)I

    move-result v11

    move v12, v11

    .local v12, "len":I
    if-lez v11, :cond_74

    .line 695
    invoke-virtual {v9, v10, v6, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 697
    :cond_74
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_78
    .catch Ljava/lang/SecurityException; {:try_start_41 .. :try_end_78} :catch_db
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_78} :catch_d2
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_78} :catch_bc
    .catchall {:try_start_41 .. :try_end_78} :catchall_ba

    .line 698
    .local v6, "text":Ljava/lang/String;
    if-eqz v3, :cond_a3

    .line 699
    if-eqz p2, :cond_97

    .line 703
    :try_start_7c
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_80} :catch_8d
    .catch Ljava/lang/SecurityException; {:try_start_7c .. :try_end_80} :catch_db
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_80} :catch_d2
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_bc
    .catchall {:try_start_7c .. :try_end_80} :catchall_ba

    .line 704
    .local v0, "newText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_84

    move-object v2, v0

    goto :goto_85

    :cond_84
    move-object v2, v6

    .line 737
    :goto_85
    if-eqz v7, :cond_8c

    .line 739
    :try_start_87
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 741
    goto :goto_8c

    .line 740
    :catch_8b
    move-exception v11

    .line 704
    :cond_8c
    :goto_8c
    return-object v2

    .line 705
    .end local v0    # "newText":Ljava/lang/CharSequence;
    :catch_8d
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/RuntimeException;
    nop

    .line 737
    if-eqz v7, :cond_96

    .line 739
    :try_start_91
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    .line 741
    goto :goto_96

    .line 740
    :catch_95
    move-exception v2

    .line 706
    :cond_96
    :goto_96
    return-object v6

    .line 711
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_97
    :try_start_97
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9b
    .catch Ljava/lang/SecurityException; {:try_start_97 .. :try_end_9b} :catch_db
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9b} :catch_d2
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9b} :catch_bc
    .catchall {:try_start_97 .. :try_end_9b} :catchall_ba

    .line 737
    if-eqz v7, :cond_a2

    .line 739
    :try_start_9d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 741
    goto :goto_a2

    .line 740
    :catch_a1
    move-exception v2

    .line 711
    :cond_a2
    :goto_a2
    return-object v0

    .line 714
    :cond_a3
    if-eqz p2, :cond_ae

    .line 717
    nop

    .line 737
    if-eqz v7, :cond_ad

    .line 739
    :try_start_a8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    .line 741
    goto :goto_ad

    .line 740
    :catch_ac
    move-exception v0

    .line 717
    :cond_ad
    :goto_ad
    return-object v6

    .line 721
    :cond_ae
    :try_start_ae
    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_b2
    .catch Ljava/lang/SecurityException; {:try_start_ae .. :try_end_b2} :catch_db
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b2} :catch_d2
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b2} :catch_bc
    .catchall {:try_start_ae .. :try_end_b2} :catchall_ba

    .line 737
    if-eqz v7, :cond_b9

    .line 739
    :try_start_b4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    .line 741
    goto :goto_b9

    .line 740
    :catch_b8
    move-exception v2

    .line 721
    :cond_b9
    :goto_b9
    return-object v0

    .line 737
    .end local v5    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v6    # "text":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .end local v9    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "buffer":[C
    .end local v12    # "len":I
    :catchall_ba
    move-exception v0

    goto :goto_120

    .line 731
    :catch_bc
    move-exception v2

    .line 733
    .local v2, "e":Ljava/io/IOException;
    :try_start_bd
    const-string v5, "Failure loading text"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_ca
    .catchall {:try_start_bd .. :try_end_ca} :catchall_ba

    .line 737
    if-eqz v7, :cond_d1

    .line 739
    :try_start_cc
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    .line 741
    goto :goto_d1

    .line 740
    :catch_d0
    move-exception v5

    .line 734
    :cond_d1
    :goto_d1
    return-object v0

    .line 727
    .end local v2    # "e":Ljava/io/IOException;
    :catch_d2
    move-exception v0

    .line 737
    if-eqz v7, :cond_e8

    .line 739
    :try_start_d5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    .line 741
    :goto_d8
    goto :goto_e8

    .line 740
    :catch_d9
    move-exception v0

    goto :goto_d8

    .line 724
    :catch_db
    move-exception v5

    .line 725
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_dc
    const-string v6, "Failure opening stream"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e1
    .catchall {:try_start_dc .. :try_end_e1} :catchall_ba

    .line 737
    nop

    .end local v5    # "e":Ljava/lang/SecurityException;
    if-eqz v7, :cond_e8

    .line 739
    :try_start_e4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_d9

    goto :goto_d8

    .line 748
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_e8
    :goto_e8
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11f

    .line 750
    const-string v5, "android.resource"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11f

    .line 751
    const-string v5, "file"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_107

    goto :goto_11f

    .line 755
    :cond_107
    if-eqz p2, :cond_114

    .line 756
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 758
    :cond_114
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 752
    :cond_11f
    :goto_11f
    return-object v2

    .line 737
    .end local v0    # "scheme":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_120
    if-eqz v7, :cond_127

    .line 739
    :try_start_122
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126

    .line 741
    goto :goto_127

    .line 740
    :catch_126
    move-exception v2

    .line 743
    :cond_127
    :goto_127
    throw v0

    .line 764
    .end local v1    # "types":[Ljava/lang/String;
    .end local v3    # "hasHtml":Z
    .end local v4    # "hasText":Z
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_128
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_145

    .line 765
    const/4 v0, 0x1

    if-eqz p2, :cond_13a

    .line 766
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 768
    :cond_13a
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 773
    :cond_145
    return-object v2
.end method

.method private greylist-max-o uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 778
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "uri"    # Ljava/lang/String;

    .line 787
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 788
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 789
    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 791
    return-object v0
.end method


# virtual methods
.method public whitelist coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 635
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "htmlText":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 637
    return-object v0

    .line 641
    :cond_7
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 642
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1e

    .line 643
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_19

    .line 644
    move-object v2, v1

    check-cast v2, Landroid/text/Spanned;

    invoke-static {v2}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 646
    :cond_19
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 649
    :cond_1e
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return-object v2
.end method

.method public whitelist coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 583
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 584
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_9

    .line 585
    return-object v0

    .line 587
    :cond_9
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "htmlText":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 590
    :try_start_f
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_17

    .line 591
    .local v2, "newText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_16

    .line 592
    return-object v2

    .line 596
    .end local v2    # "newText":Ljava/lang/CharSequence;
    :cond_16
    goto :goto_18

    .line 594
    :catch_17
    move-exception v2

    .line 599
    :cond_18
    :goto_18
    if-eqz v0, :cond_1b

    .line 600
    return-object v0

    .line 602
    :cond_1b
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public whitelist coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 492
    const-string v0, "ClipData"

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 493
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_9

    .line 494
    return-object v1

    .line 498
    :cond_9
    const/4 v2, 0x0

    .line 500
    .local v2, "resolver":Landroid/content/ContentResolver;
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_10

    move-object v2, v3

    .line 503
    goto :goto_27

    .line 501
    :catch_10
    move-exception v3

    .line 502
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain ContentResolver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_27
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 507
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_a3

    if-eqz v2, :cond_a3

    .line 511
    const/4 v4, 0x0

    .line 512
    .local v4, "descr":Landroid/content/res/AssetFileDescriptor;
    const/4 v5, 0x0

    .line 513
    .local v5, "stream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 517
    .local v6, "reader":Ljava/io/InputStreamReader;
    :try_start_32
    const-string/jumbo v7, "text/*"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_3a} :catch_40
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_3a} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3a} :catch_3e
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3c

    move-object v4, v7

    .line 523
    goto :goto_47

    .line 544
    :catchall_3c
    move-exception v0

    goto :goto_99

    .line 520
    :catch_3e
    move-exception v7

    goto :goto_47

    .line 518
    :catch_40
    move-exception v7

    .line 519
    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_41
    const-string v8, "Failure opening stream"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3c

    .line 523
    nop

    .line 524
    .end local v7    # "e":Ljava/lang/SecurityException;
    :goto_47
    if-eqz v4, :cond_8f

    .line 526
    :try_start_49
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v5, v7

    .line 527
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v6, v7

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/16 v8, 0x2000

    new-array v8, v8, [C

    .line 533
    .local v8, "buffer":[C
    :goto_61
    invoke-virtual {v6, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    move v10, v9

    .local v10, "len":I
    if-lez v9, :cond_6d

    .line 534
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 536
    :cond_6d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_71} :catch_7b
    .catchall {:try_start_49 .. :try_end_71} :catchall_3c

    .line 544
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 546
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 536
    return-object v0

    .line 537
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "buffer":[C
    .end local v10    # "len":I
    :catch_7b
    move-exception v7

    .line 539
    .local v7, "e":Ljava/io/IOException;
    :try_start_7c
    const-string v8, "Failure loading text"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_3c

    .line 544
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 546
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 540
    return-object v0

    .line 544
    .end local v7    # "e":Ljava/io/IOException;
    :cond_8f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 546
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 547
    goto :goto_a3

    .line 544
    :goto_99
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 545
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 546
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 547
    throw v0

    .line 549
    .end local v4    # "descr":Landroid/content/res/AssetFileDescriptor;
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_a3
    :goto_a3
    const-string v0, ""

    if-eqz v3, :cond_ca

    .line 552
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "scheme":Ljava/lang/String;
    const-string v5, "content"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 554
    const-string v5, "android.resource"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    .line 555
    const-string v5, "file"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    goto :goto_c9

    .line 558
    :cond_c4
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 556
    :cond_c9
    :goto_c9
    return-object v0

    .line 563
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_ca
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 564
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_d6

    .line 565
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 569
    :cond_d6
    return-object v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 855
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 857
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 858
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v4, p1

    goto :goto_5a

    .line 859
    :cond_14
    iget-object v2, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_28

    .line 860
    iget-object v2, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v4, p1

    goto :goto_5a

    .line 861
    :cond_28
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_3c

    .line 862
    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object v4, p1

    goto :goto_5a

    .line 863
    :cond_3c
    iget-object v2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_50

    .line 864
    iget-object v3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide v5, 0x10b00000004L

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {v3 .. v10}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    goto :goto_5a

    .line 866
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :cond_50
    move-object v4, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v2, 0x10800000005L

    const/4 p1, 0x1

    invoke-virtual {v4, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 869
    :goto_5a
    invoke-virtual {v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 870
    return-void
.end method

.method public blacklist getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public whitelist getHtmlText()Ljava/lang/String;
    .registers 2

    .line 400
    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 407
    iget-boolean v0, p0, Landroid/content/ClipData$Item;->mTokenVerificationEnabled:Z

    if-eqz v0, :cond_9

    .line 408
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V

    .line 410
    :cond_9
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getIntentSender()Landroid/content/IntentSender;
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 393
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTextLinks()Landroid/view/textclassifier/TextLinks;
    .registers 2

    .line 458
    iget-object v0, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    return-object v0
.end method

.method public whitelist getUri()Landroid/net/Uri;
    .registers 2

    .line 426
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist setActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 442
    iput-object p1, p0, Landroid/content/ClipData$Item;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 443
    return-void
.end method

.method public blacklist setTextLinks(Landroid/view/textclassifier/TextLinks;)V
    .registers 2
    .param p1, "textLinks"    # Landroid/view/textclassifier/TextLinks;

    .line 465
    iput-object p1, p0, Landroid/content/ClipData$Item;->mTextLinks:Landroid/view/textclassifier/TextLinks;

    .line 466
    return-void
.end method

.method blacklist setTokenVerificationEnabled()V
    .registers 2

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/ClipData$Item;->mTokenVerificationEnabled:Z

    .line 228
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)V
    .registers 11
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "redactContent"    # Z

    .line 812
    const/4 v0, 0x1

    .line 813
    .local v0, "first":Z
    iget-object v1, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    const/16 v2, 0x29

    if-eqz v1, :cond_29

    .line 814
    const/4 v0, 0x0

    .line 815
    if-eqz p2, :cond_1e

    .line 816
    const-string v1, "H("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 818
    :cond_1e
    const-string v1, "H:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_29
    :goto_29
    iget-object v1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/16 v3, 0x20

    if-eqz v1, :cond_56

    .line 822
    if-nez v0, :cond_34

    .line 823
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    :cond_34
    const/4 v0, 0x0

    .line 826
    if-eqz p2, :cond_4b

    .line 827
    const-string v1, "T("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 829
    :cond_4b
    const-string v1, "T:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 832
    :cond_56
    :goto_56
    iget-object v1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_81

    .line 833
    if-nez v0, :cond_5f

    .line 834
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    :cond_5f
    const/4 v0, 0x0

    .line 837
    if-eqz p2, :cond_76

    .line 838
    const-string v1, "U("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 840
    :cond_76
    const-string v1, "U:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 843
    :cond_81
    :goto_81
    iget-object v1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9b

    .line 844
    if-nez v0, :cond_8a

    .line 845
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    :cond_8a
    const/4 v0, 0x0

    .line 848
    const-string v1, "I:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    move-object v3, p1

    move v4, p2

    .end local p1    # "b":Ljava/lang/StringBuilder;
    .end local p2    # "redactContent":Z
    .local v3, "b":Ljava/lang/StringBuilder;
    .local v4, "redactContent":Z
    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_9d

    .line 843
    .end local v3    # "b":Ljava/lang/StringBuilder;
    .end local v4    # "redactContent":Z
    .restart local p1    # "b":Ljava/lang/StringBuilder;
    .restart local p2    # "redactContent":Z
    :cond_9b
    move-object v3, p1

    move v4, p2

    .line 851
    .end local p1    # "b":Ljava/lang/StringBuilder;
    .end local p2    # "redactContent":Z
    .restart local v3    # "b":Ljava/lang/StringBuilder;
    .restart local v4    # "redactContent":Z
    :goto_9d
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 798
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 800
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
