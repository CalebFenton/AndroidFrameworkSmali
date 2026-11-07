.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Part;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Resources;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$Format;
    }
.end annotation


# static fields
.field public static final blacklist musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private blacklist formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist nextChar:I

.field private blacklist nextClass:I

.field private blacklist parseAcronyms:Z

.field private blacklist parseFormatting:Z

.field private blacklist parseMeText:Z

.field private blacklist parseMusic:Z

.field private blacklist parseSmilies:Z

.field private blacklist parseUrls:Z

.field private blacklist parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist text:Ljava/lang/String;

.field private blacklist tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "text"    # Ljava/lang/String;

    .line 91
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v1, "text":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZZZZ)V
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parseSmilies"    # Z
    .param p3, "parseAcronyms"    # Z
    .param p4, "parseFormatting"    # Z
    .param p5, "parseUrls"    # Z
    .param p6, "parseMusic"    # Z
    .param p7, "parseMeText"    # Z

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 105
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    .line 109
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    .line 110
    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    .line 111
    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    .line 112
    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    .line 113
    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    .line 114
    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    .line 115
    return-void
.end method

.method private blacklist addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .registers 3
    .param p1, "token"    # Lcom/google/android/util/AbstractMessageParser$Token;

    .line 1250
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    return-void
.end method

.method private blacklist addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 467
    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 468
    return-void
.end method

.method private blacklist buildParts(Ljava/lang/String;)V
    .registers 6
    .param p1, "meText"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 237
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 238
    .local v1, "token":Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 239
    :cond_29
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-direct {v3}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_33
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 236
    .end local v1    # "token":Lcom/google/android/util/AbstractMessageParser$Token;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    :cond_3d
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 246
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-virtual {v0, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    .line 248
    :cond_51
    return-void
.end method

.method private blacklist getCharClass(I)I
    .registers 5
    .param p1, "index"    # I

    .line 578
    if-ltz p1, :cond_37

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_b

    goto :goto_37

    .line 582
    :cond_b
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 583
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 584
    return v2

    .line 585
    :cond_19
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 586
    const/4 v1, 0x2

    return v1

    .line 587
    :cond_21
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 588
    const/4 v1, 0x3

    return v1

    .line 589
    :cond_29
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 593
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    return v1

    .line 595
    :cond_35
    const/4 v1, 0x4

    return v1

    .line 579
    .end local v0    # "ch":C
    :cond_37
    :goto_37
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isDomainChar(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 330
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_13

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static blacklist isFormatChar(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 646
    sparse-switch p0, :sswitch_data_8

    .line 651
    const/4 v0, 0x0

    return v0

    .line 648
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2a -> :sswitch_5
        0x5e -> :sswitch_5
        0x5f -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist isPunctuation(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 631
    sparse-switch p0, :sswitch_data_8

    .line 637
    const/4 v0, 0x0

    return v0

    .line 634
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2c -> :sswitch_5
        0x2e -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist isSmileyBreak(CC)Z
    .registers 3
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .line 606
    sparse-switch p0, :sswitch_data_c

    goto :goto_a

    .line 614
    :sswitch_4
    sparse-switch p1, :sswitch_data_52

    goto :goto_a

    .line 622
    :sswitch_8
    const/4 v0, 0x1

    return v0

    .line 626
    :goto_a
    const/4 v0, 0x0

    return v0

    :sswitch_data_c
    .sparse-switch
        0x24 -> :sswitch_4
        0x26 -> :sswitch_4
        0x2a -> :sswitch_4
        0x2b -> :sswitch_4
        0x2d -> :sswitch_4
        0x2f -> :sswitch_4
        0x3c -> :sswitch_4
        0x3d -> :sswitch_4
        0x3e -> :sswitch_4
        0x40 -> :sswitch_4
        0x5b -> :sswitch_4
        0x5c -> :sswitch_4
        0x5d -> :sswitch_4
        0x5e -> :sswitch_4
        0x7c -> :sswitch_4
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
    .end sparse-switch

    :sswitch_data_52
    .sparse-switch
        0x23 -> :sswitch_8
        0x24 -> :sswitch_8
        0x25 -> :sswitch_8
        0x2a -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x40 -> :sswitch_8
        0x5b -> :sswitch_8
        0x5c -> :sswitch_8
        0x5e -> :sswitch_8
        0x7e -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist isSmileyBreak(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 549
    if-lez p1, :cond_20

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 550
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 551
    const/4 v0, 0x1

    return v0

    .line 555
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isURLBreak(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 563
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 572
    const/4 v0, 0x1

    return v0

    .line 567
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist isValidDomain(Ljava/lang/String;)Z
    .registers 4
    .param p1, "domain"    # Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 337
    const/4 v0, 0x1

    return v0

    .line 339
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isWordBreak(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 544
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method private static blacklist longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 4
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "p"    # Lcom/google/android/util/AbstractMessageParser;
    .param p2, "start"    # I

    .line 1414
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 8
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "p"    # Lcom/google/android/util/AbstractMessageParser;
    .param p2, "start"    # I
    .param p3, "smiley"    # Z

    .line 1424
    move v0, p2

    .line 1425
    .local v0, "index":I
    const/4 v1, 0x0

    .line 1426
    .local v1, "bestMatch":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 1427
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1428
    if-nez p0, :cond_1e

    .line 1429
    move v0, v3

    goto :goto_3a

    .line 1430
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1431
    invoke-direct {p1, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1432
    move-object v1, p0

    move v0, v3

    goto :goto_2

    .line 1433
    :cond_2d
    if-eqz p3, :cond_38

    invoke-direct {p1, v3}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1434
    move-object v1, p0

    move v0, v3

    goto :goto_2

    .line 1426
    :cond_38
    move v0, v3

    goto :goto_2

    .line 1438
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_3a
    :goto_3a
    return-object v1
.end method

.method private static blacklist matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .registers 4
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "str"    # Ljava/lang/String;

    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1398
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1399
    if-nez p0, :cond_15

    .line 1400
    move v0, v1

    goto :goto_1f

    .line 1401
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1402
    const/4 v0, 0x1

    return v0

    .line 1401
    :cond_1d
    move v0, v1

    goto :goto_1

    .line 1405
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist parseAcronym()Z
    .registers 5

    .line 315
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 316
    return v1

    .line 318
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v0, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 319
    .local v0, "match":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_17

    .line 320
    return v1

    .line 322
    :cond_17
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 323
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 324
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist parseFormatting()Z
    .registers 10

    .line 487
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 488
    return v1

    .line 490
    :cond_6
    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 491
    .local v0, "endChar":I
    :goto_8
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 495
    :cond_1f
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    if-eq v0, v2, :cond_aa

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_aa

    .line 502
    :cond_2b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 505
    .local v2, "seenCharacters":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .local v3, "index":I
    :goto_32
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7b

    .line 506
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 507
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 508
    .local v6, "key":Ljava/lang/Character;
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 511
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v4, v5, v1}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-direct {p0, v4}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    goto :goto_78

    .line 513
    :cond_4e
    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    .line 514
    .local v7, "start":Lcom/google/android/util/AbstractMessageParser$Format;
    if-eqz v7, :cond_66

    .line 516
    invoke-virtual {v7, v4}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 517
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 521
    :cond_66
    new-instance v8, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v8, v5, v4}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 522
    .end local v7    # "start":Lcom/google/android/util/AbstractMessageParser$Format;
    .local v8, "start":Lcom/google/android/util/AbstractMessageParser$Format;
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-direct {p0, v8}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 524
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .end local v5    # "ch":C
    .end local v6    # "key":Ljava/lang/Character;
    .end local v8    # "start":Lcom/google/android/util/AbstractMessageParser$Format;
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 530
    .end local v3    # "index":I
    :cond_7b
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 531
    .local v5, "key":Ljava/lang/Character;
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_a6

    .line 532
    new-instance v6, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-direct {v6, v7, v1}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 533
    .local v6, "end":Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-virtual {v6, v4}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 534
    invoke-direct {p0, v6}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 536
    .end local v5    # "key":Ljava/lang/Character;
    .end local v6    # "end":Lcom/google/android/util/AbstractMessageParser$Format;
    :cond_a6
    goto :goto_83

    .line 538
    :cond_a7
    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 539
    return v4

    .line 496
    .end local v2    # "seenCharacters":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    :cond_aa
    :goto_aa
    return v1
.end method

.method private blacklist parseMusicTrack()Z
    .registers 4

    .line 259
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v1, "\u266b "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 260
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 262
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parseSmiley()Z
    .registers 8

    .line 292
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 293
    return v1

    .line 295
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 297
    .local v0, "match":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_18

    .line 298
    return v1

    .line 300
    :cond_18
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v2

    .line 301
    .local v2, "previousCharClass":I
    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v4

    .line 302
    .local v4, "nextCharClass":I
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_34

    if-ne v2, v5, :cond_39

    :cond_34
    if-eq v4, v6, :cond_53

    if-ne v4, v5, :cond_39

    goto :goto_53

    .line 306
    :cond_39
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Smiley;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 307
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 308
    return v3

    .line 304
    :cond_53
    :goto_53
    return v1
.end method

.method private blacklist parseText()V
    .registers 6

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 272
    .local v1, "start":I
    :cond_7
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 273
    .local v2, "ch":C
    sparse-switch v2, :sswitch_data_5a

    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 275
    :sswitch_1a
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 274
    :sswitch_20
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 278
    :sswitch_26
    const-string v3, "&apos;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 276
    :sswitch_2c
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 277
    :sswitch_32
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 279
    :sswitch_38
    const-string v3, "<br>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .end local v2    # "ch":C
    :goto_3d
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 284
    new-instance v2, Lcom/google/android/util/AbstractMessageParser$Html;

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 285
    return-void

    :sswitch_data_5a
    .sparse-switch
        0xa -> :sswitch_38
        0x22 -> :sswitch_32
        0x26 -> :sswitch_2c
        0x27 -> :sswitch_26
        0x3c -> :sswitch_20
        0x3e -> :sswitch_1a
    .end sparse-switch
.end method

.method private blacklist parseURL()Z
    .registers 10

    .line 348
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_154

    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_154

    .line 352
    :cond_f
    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 355
    .local v0, "start":I
    move v2, v0

    .line 356
    .local v2, "index":I
    :goto_12
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 360
    :cond_29
    const-string v3, ""

    .line 361
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 363
    .local v4, "done":Z
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_35

    .line 364
    return v1

    .line 365
    :cond_35
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_58

    .line 367
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 369
    return v1

    .line 371
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_56
    goto/16 :goto_11c

    :cond_58
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_153

    .line 373
    :goto_62
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7d

    .line 374
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 375
    .local v5, "ch":C
    if-eq v5, v7, :cond_79

    invoke-direct {p0, v5}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v8

    if-nez v8, :cond_79

    .line 376
    goto :goto_7d

    .line 378
    :cond_79
    nop

    .end local v5    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 380
    goto :goto_62

    .line 384
    :cond_7d
    :goto_7d
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "domain":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8c

    .line 386
    return v1

    .line 391
    :cond_8c
    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_c5

    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_c5

    .line 392
    iget-object v6, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 393
    .local v6, "ch":C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 394
    add-int/lit8 v2, v2, 0x1

    .line 395
    :goto_ae
    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_c5

    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 396
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 408
    .end local v6    # "ch":C
    :cond_c5
    iget-object v6, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, v6, :cond_d0

    .line 409
    const/4 v1, 0x1

    move v4, v1

    .end local v4    # "done":Z
    .local v1, "done":Z
    goto :goto_119

    .line 411
    .end local v1    # "done":Z
    .restart local v4    # "done":Z
    :cond_d0
    iget-object v6, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 412
    .restart local v6    # "ch":C
    const/16 v7, 0x3f

    if-ne v6, v7, :cond_fd

    .line 415
    add-int/lit8 v1, v2, 0x1

    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_e7

    .line 416
    const/4 v1, 0x1

    move v4, v1

    .end local v4    # "done":Z
    .restart local v1    # "done":Z
    goto :goto_119

    .line 418
    .end local v1    # "done":Z
    .restart local v4    # "done":Z
    :cond_e7
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 419
    .local v1, "ch2":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_fb

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v7

    if-eqz v7, :cond_fc

    .line 420
    :cond_fb
    const/4 v4, 0x1

    .line 422
    .end local v1    # "ch2":C
    :cond_fc
    goto :goto_119

    .line 423
    :cond_fd
    invoke-static {v6}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 424
    const/4 v1, 0x1

    move v4, v1

    .end local v4    # "done":Z
    .local v1, "done":Z
    goto :goto_119

    .line 425
    .end local v1    # "done":Z
    .restart local v4    # "done":Z
    :cond_106
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_10f

    .line 426
    const/4 v1, 0x1

    move v4, v1

    .end local v4    # "done":Z
    .restart local v1    # "done":Z
    goto :goto_119

    .line 427
    .end local v1    # "done":Z
    .restart local v4    # "done":Z
    :cond_10f
    const/16 v7, 0x2f

    if-eq v6, v7, :cond_119

    const/16 v7, 0x23

    if-ne v6, v7, :cond_118

    goto :goto_119

    .line 431
    :cond_118
    return v1

    .line 438
    .end local v6    # "ch":C
    :cond_119
    :goto_119
    const-string v3, "http://"

    .line 439
    .end local v5    # "domain":Ljava/lang/String;
    nop

    .line 445
    :goto_11c
    if-nez v4, :cond_135

    .line 446
    :goto_11e
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_135

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_135

    .line 448
    add-int/lit8 v2, v2, 0x1

    goto :goto_11e

    .line 452
    :cond_135
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "urlText":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-direct {p0, v3, v1}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 459
    const/4 v5, 0x1

    return v5

    .line 440
    .end local v1    # "urlText":Ljava/lang/String;
    :cond_153
    return v1

    .line 349
    .end local v0    # "start":I
    .end local v2    # "index":I
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "done":Z
    :cond_154
    :goto_154
    return v1
.end method

.method protected static blacklist reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1346
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_17

    .line 1347
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1346
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1349
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .line 198
    if-nez p0, :cond_4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    move-result-object v0

    .line 204
    .local v0, "video":Lcom/google/android/util/AbstractMessageParser$Video;
    if-eqz v0, :cond_b

    .line 205
    return-object v0

    .line 209
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-result-object v1

    .line 210
    .local v1, "ytVideo":Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    if-eqz v1, :cond_12

    .line 211
    return-object v1

    .line 215
    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    move-result-object v2

    .line 216
    .local v2, "photo":Lcom/google/android/util/AbstractMessageParser$Photo;
    if-eqz v2, :cond_19

    .line 217
    return-object v2

    .line 221
    :cond_19
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-result-object v3

    .line 222
    .local v3, "flickrPhoto":Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    if-eqz v3, :cond_20

    .line 223
    return-object v3

    .line 227
    :cond_20
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-direct {v4, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public final blacklist getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3
    .param p1, "index"    # I

    .line 124
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method public final blacklist getPartCount()I
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final blacklist getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final blacklist getRawText()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract blacklist getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public blacklist parse()V
    .registers 6

    .line 133
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    .line 135
    return-void

    .line 139
    :cond_b
    const/4 v0, 0x0

    .line 140
    .local v0, "meText":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string v2, "/me"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_3f

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 142
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 147
    :cond_3f
    const/4 v1, 0x0

    .line 148
    .local v1, "wasSmiley":Z
    :cond_40
    :goto_40
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_84

    .line 149
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v2

    if-nez v2, :cond_65

    .line 150
    if-eqz v1, :cond_5d

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    goto :goto_65

    .line 151
    :cond_5d
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "last chunk did not end at word break"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 155
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 156
    const/4 v1, 0x1

    goto :goto_40

    .line 158
    :cond_6d
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    move-result v2

    if-nez v2, :cond_40

    .line 161
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    goto :goto_40

    .line 167
    :cond_84
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_85
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_dc

    .line 168
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 169
    if-lez v2, :cond_b6

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_b6

    .line 170
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    .line 172
    :cond_b6
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d9

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_d9

    .line 173
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    .line 167
    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 179
    .end local v2    # "i":I
    :cond_dc
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_dd
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10f

    .line 180
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_10d

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10d

    .line 182
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    add-int/lit8 v2, v2, -0x1

    .line 179
    :cond_10d
    add-int/2addr v2, v4

    goto :goto_dd

    .line 187
    .end local v2    # "i":I
    :cond_10f
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public blacklist toHtml()Ljava/lang/String;
    .registers 11

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .local v0, "html":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Part;

    .line 1258
    .local v2, "part":Lcom/google/android/util/AbstractMessageParser$Part;
    const/4 v3, 0x0

    .line 1260
    .local v3, "caps":Z
    const-string v4, "<p>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 1262
    .local v5, "token":Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1263
    invoke-virtual {v5, v3}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12f

    .line 1265
    :cond_40
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v6

    const-string v7, "</a>"

    const-string v8, "\">"

    const-string v9, "<a href=\""

    packed-switch v6, :pswitch_data_148

    .line 1329
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown token type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1320
    :pswitch_6f
    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Photo;

    .line 1321
    .local v6, "p":Lcom/google/android/util/AbstractMessageParser$Photo;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1322
    move-object v9, v5

    check-cast v9, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v9}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    goto/16 :goto_12f

    .line 1309
    .end local v6    # "p":Lcom/google/android/util/AbstractMessageParser$Photo;
    :pswitch_8e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Photo;

    .line 1311
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v6

    move-object v9, v5

    check-cast v9, Lcom/google/android/util/AbstractMessageParser$Photo;

    invoke-virtual {v9}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v9

    .line 1310
    invoke-static {v6, v9}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    goto/16 :goto_12f

    .line 1299
    :pswitch_b5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    .line 1301
    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    move-result-object v6

    .line 1300
    invoke-static {v6}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    goto :goto_12f

    .line 1290
    :pswitch_d7
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Video;

    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    goto :goto_12f

    .line 1285
    :pswitch_f9
    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    goto :goto_12f

    .line 1280
    :pswitch_104
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    goto :goto_12f

    .line 1276
    :pswitch_10c
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    goto :goto_12f

    .line 1267
    :pswitch_114
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    move-object v6, v5

    check-cast v6, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-virtual {v6}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    nop

    .line 1333
    :goto_12f
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    move-result v6

    if-eqz v6, :cond_139

    .line 1334
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    move-result v3

    .line 1336
    .end local v5    # "token":Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_139
    goto/16 :goto_25

    .line 1337
    :cond_13b
    const-string v4, "</p>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .end local v2    # "part":Lcom/google/android/util/AbstractMessageParser$Part;
    .end local v3    # "caps":Z
    goto/16 :goto_b

    .line 1340
    :cond_142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_148
    .packed-switch 0x2
        :pswitch_114
        :pswitch_10c
        :pswitch_104
        :pswitch_f9
        :pswitch_d7
        :pswitch_b5
        :pswitch_8e
        :pswitch_6f
    .end packed-switch
.end method
