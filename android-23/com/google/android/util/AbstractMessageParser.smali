.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Resources;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$Format;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Part;
    }
.end annotation


# static fields
.field private static synthetic -com_google_android_util_AbstractMessageParser$Token$TypeSwitchesValues:[I = null

.field public static final musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextChar:I

.field private nextClass:I

.field private parseAcronyms:Z

.field private parseFormatting:Z

.field private parseMeText:Z

.field private parseMusic:Z

.field private parseSmilies:Z

.field private parseUrls:Z

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_google_android_util_AbstractMessageParser$Token$TypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/google/android/util/AbstractMessageParser;->-com_google_android_util_AbstractMessageParser$Token$TypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/google/android/util/AbstractMessageParser;->-com_google_android_util_AbstractMessageParser$Token$TypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@10
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@19
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@22
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@25
    move-result v1

    #@26
    const/16 v2, 0x9

    #@28
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    #@2a
    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@2c
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x3

    #@31
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    #@33
    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@35
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@38
    move-result v1

    #@39
    const/16 v2, 0xa

    #@3b
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    #@3d
    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@3f
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@42
    move-result v1

    #@43
    const/4 v2, 0x4

    #@44
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    #@46
    :goto_5
    :try_start_6
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@48
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@4b
    move-result v1

    #@4c
    const/4 v2, 0x5

    #@4d
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    #@4f
    :goto_6
    :try_start_7
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@51
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@54
    move-result v1

    #@55
    const/4 v2, 0x6

    #@56
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    #@58
    :goto_7
    :try_start_8
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@5a
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@5d
    move-result v1

    #@5e
    const/4 v2, 0x7

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@63
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0x8

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    #@6b
    :goto_9
    sput-object v0, Lcom/google/android/util/AbstractMessageParser;->-com_google_android_util_AbstractMessageParser$Token$TypeSwitchesValues:[I

    #@6d
    return-object v0

    #@6e
    :catch_0
    move-exception v1

    #@6f
    goto :goto_9

    #@70
    :catch_1
    move-exception v1

    #@71
    goto :goto_8

    #@72
    :catch_2
    move-exception v1

    #@73
    goto :goto_7

    #@74
    :catch_3
    move-exception v1

    #@75
    goto :goto_6

    #@76
    :catch_4
    move-exception v1

    #@77
    goto :goto_5

    #@78
    :catch_5
    move-exception v1

    #@79
    goto :goto_4

    #@7a
    :catch_6
    move-exception v1

    #@7b
    goto :goto_3

    #@7c
    :catch_7
    move-exception v1

    #@7d
    goto :goto_2

    #@7e
    :catch_8
    move-exception v1

    #@7f
    goto :goto_1

    #@80
    :catch_9
    move-exception v1

    #@81
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v3, v2

    #@4
    move v4, v2

    #@5
    move v5, v2

    #@6
    move v6, v2

    #@7
    move v7, v2

    #@8
    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    #@b
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parseSmilies"    # Z
    .param p3, "parseAcronyms"    # Z
    .param p4, "parseFormatting"    # Z
    .param p5, "parseUrls"    # Z
    .param p6, "parseMusic"    # Z
    .param p7, "parseMeText"    # Z

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@5
    .line 102
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@8
    .line 103
    const/16 v0, 0xa

    #@a
    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    #@c
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@13
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@1a
    .line 106
    new-instance v0, Ljava/util/HashMap;

    #@1c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    #@21
    .line 107
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    #@23
    .line 108
    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    #@25
    .line 109
    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    #@27
    .line 110
    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    #@29
    .line 111
    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    #@2b
    .line 112
    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    #@2d
    .line 100
    return-void
.end method

.method private addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .locals 1
    .param p1, "token"    # Lcom/google/android/util/AbstractMessageParser$Token;

    #@0
    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 1235
    return-void
.end method

.method private addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 465
    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@7
    .line 464
    return-void
.end method

.method private buildParts(Ljava/lang/String;)V
    .locals 5
    .param p1, "meText"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 234
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    if-ge v0, v2, :cond_3

    #@a
    .line 235
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/util/AbstractMessageParser$Token;

    #@12
    .line 236
    .local v1, "token":Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 237
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@22
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Part;

    #@24
    invoke-direct {v3}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    #@27
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v1}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@31
    .line 234
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 236
    :cond_2
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    #@3b
    move-result v2

    #@3c
    if-eqz v2, :cond_1

    #@3e
    goto :goto_1

    #@3f
    .line 243
    .end local v1    # "token":Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_3
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v2

    #@45
    if-lez v2, :cond_4

    #@47
    .line 244
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Part;

    #@4f
    invoke-virtual {v2, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    #@52
    .line 233
    :cond_4
    return-void
.end method

.method private getCharClass(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 576
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-gt v1, p1, :cond_1

    #@b
    .line 577
    :cond_0
    return v2

    #@c
    .line 580
    :cond_1
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 581
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 582
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 583
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_3

    #@20
    .line 584
    const/4 v1, 0x2

    #@21
    return v1

    #@22
    .line 585
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_4

    #@28
    .line 586
    const/4 v1, 0x3

    #@29
    return v1

    #@2a
    .line 587
    :cond_4
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_5

    #@30
    .line 591
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    #@32
    add-int/lit8 v1, v1, 0x1

    #@34
    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    #@36
    return v1

    #@37
    .line 593
    :cond_5
    const/4 v1, 0x4

    #@38
    return v1
.end method

.method private isDomainChar(C)Z
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 328
    const/16 v0, 0x2d

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method private static isFormatChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 644
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 649
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 646
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 644
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPunctuation(C)Z
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 629
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 635
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 632
    :sswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 629
    nop

    #@8
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSmileyBreak(CC)Z
    .locals 1
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    #@0
    .prologue
    .line 604
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 624
    :goto_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 612
    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    #@8
    goto :goto_0

    #@9
    .line 620
    :sswitch_1
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 604
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch

    #@52
    .line 612
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2f -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x40 -> :sswitch_1
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x5e -> :sswitch_1
        0x7e -> :sswitch_1
    .end sparse-switch
.end method

.method private isSmileyBreak(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 547
    if-lez p1, :cond_0

    #@3
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-ge p1, v0, :cond_0

    #@b
    .line 548
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@d
    add-int/lit8 v1, p1, -0x1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v0

    #@13
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 549
    const/4 v0, 0x1

    #@20
    return v0

    #@21
    .line 553
    :cond_0
    return v2
.end method

.method private isURLBreak(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 561
    add-int/lit8 v0, p1, -0x1

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 570
    const/4 v0, 0x1

    #@a
    return v0

    #@b
    .line 565
    :pswitch_0
    const/4 v0, 0x0

    #@c
    return v0

    #@d
    .line 561
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidDomain(Ljava/lang/String;)Z
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@7
    move-result-object v0

    #@8
    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 335
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 337
    :cond_0
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method private isWordBreak(I)Z
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 542
    add-int/lit8 v0, p1, -0x1

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    #@9
    move-result v1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method private lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .locals 2

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    #@10
    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "p"    # Lcom/google/android/util/AbstractMessageParser;
    .param p2, "start"    # I

    #@0
    .prologue
    .line 1400
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 4
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "p"    # Lcom/google/android/util/AbstractMessageParser;
    .param p2, "start"    # I
    .param p3, "smiley"    # Z

    #@0
    .prologue
    .line 1410
    move v1, p2

    #@1
    .line 1411
    .local v1, "index":I
    const/4 v0, 0x0

    #@2
    .line 1412
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 1413
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    #@15
    move-result v3

    #@16
    invoke-virtual {p0, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@19
    move-result-object p0

    #@1a
    .line 1414
    if-nez p0, :cond_1

    #@1c
    move v1, v2

    #@1d
    .line 1424
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0

    #@1e
    .line 1416
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_2

    #@24
    .line 1417
    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 1418
    move-object v0, p0

    #@2b
    :cond_2
    :goto_1
    move v1, v2

    #@2c
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@2d
    .line 1419
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :cond_3
    if-eqz p3, :cond_2

    #@2f
    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 1420
    move-object v0, p0

    #@36
    .local v0, "bestMatch":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    goto :goto_1
.end method

.method private static matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .locals 3
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1382
    const/4 v0, 0x0

    #@1
    .line 1383
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1384
    add-int/lit8 v1, v0, 0x1

    #@9
    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@10
    move-result-object p0

    #@11
    .line 1385
    if-nez p0, :cond_1

    #@13
    move v0, v1

    #@14
    .line 1391
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    const/4 v2, 0x0

    #@15
    return v2

    #@16
    .line 1387
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_2

    #@1c
    .line 1388
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    :cond_2
    move v0, v1

    #@1f
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0
.end method

.method private parseAcronym()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 313
    iget-boolean v1, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 314
    return v3

    #@6
    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@d
    move-result-object v1

    #@e
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@10
    invoke-static {v1, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@13
    move-result-object v0

    #@14
    .line 317
    .local v0, "match":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_1

    #@16
    .line 318
    return v3

    #@17
    .line 320
    :cond_1
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    #@19
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@27
    .line 321
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@29
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@30
    move-result v2

    #@31
    add-int/2addr v1, v2

    #@32
    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@34
    .line 322
    const/4 v1, 0x1

    #@35
    return v1
.end method

.method private parseFormatting()Z
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 485
    iget-boolean v8, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    #@4
    if-nez v8, :cond_0

    #@6
    .line 486
    return v10

    #@7
    .line 488
    :cond_0
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@9
    .line 489
    .local v2, "endChar":I
    :goto_0
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@e
    move-result v8

    #@f
    if-ge v2, v8, :cond_1

    #@11
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@13
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v8

    #@17
    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    #@1a
    move-result v8

    #@1b
    if-eqz v8, :cond_1

    #@1d
    .line 490
    add-int/lit8 v2, v2, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 493
    :cond_1
    iget v8, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@22
    if-eq v2, v8, :cond_2

    #@24
    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    #@27
    move-result v8

    #@28
    if-eqz v8, :cond_2

    #@2a
    .line 501
    new-instance v6, Ljava/util/LinkedHashMap;

    #@2c
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    #@2f
    .line 503
    .local v6, "seenCharacters":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@31
    .local v3, "index":I
    :goto_1
    if-ge v3, v2, :cond_5

    #@33
    .line 504
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@35
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v0

    #@39
    .line 505
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3c
    move-result-object v4

    #@3d
    .line 506
    .local v4, "key":Ljava/lang/Character;
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_3

    #@43
    .line 509
    new-instance v8, Lcom/google/android/util/AbstractMessageParser$Format;

    #@45
    invoke-direct {v8, v0, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    #@48
    invoke-direct {p0, v8}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@4b
    .line 503
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 494
    .end local v0    # "ch":C
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/Character;
    .end local v6    # "seenCharacters":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    :cond_2
    return v10

    #@4f
    .line 511
    .restart local v0    # "ch":C
    .restart local v3    # "index":I
    .restart local v4    # "key":Ljava/lang/Character;
    .restart local v6    # "seenCharacters":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Character;Ljava/lang/Boolean;>;"
    :cond_3
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    #@51
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    move-result-object v7

    #@55
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    #@57
    .line 512
    .local v7, "start":Lcom/google/android/util/AbstractMessageParser$Format;
    if-eqz v7, :cond_4

    #@59
    .line 514
    invoke-virtual {v7, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    #@5c
    .line 515
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    #@5e
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 516
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@63
    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_2

    #@67
    .line 519
    :cond_4
    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Format;

    #@69
    .end local v7    # "start":Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-direct {v7, v0, v11}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    #@6c
    .line 520
    .restart local v7    # "start":Lcom/google/android/util/AbstractMessageParser$Format;
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    #@6e
    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 521
    invoke-direct {p0, v7}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@74
    .line 522
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@76
    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    goto :goto_2

    #@7a
    .line 528
    .end local v0    # "ch":C
    .end local v4    # "key":Ljava/lang/Character;
    .end local v7    # "start":Lcom/google/android/util/AbstractMessageParser$Format;
    :cond_5
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@7d
    move-result-object v8

    #@7e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v5

    #@82
    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v8

    #@86
    if-eqz v8, :cond_7

    #@88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v4

    #@8c
    check-cast v4, Ljava/lang/Character;

    #@8e
    .line 529
    .restart local v4    # "key":Ljava/lang/Character;
    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    move-result-object v8

    #@92
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@94
    if-ne v8, v9, :cond_6

    #@96
    .line 530
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Format;

    #@98
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    #@9b
    move-result v8

    #@9c
    invoke-direct {v1, v8, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    #@9f
    .line 531
    .local v1, "end":Lcom/google/android/util/AbstractMessageParser$Format;
    invoke-virtual {v1, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    #@a2
    .line 532
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@a5
    goto :goto_3

    #@a6
    .line 536
    .end local v1    # "end":Lcom/google/android/util/AbstractMessageParser$Format;
    .end local v4    # "key":Ljava/lang/Character;
    :cond_7
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@a8
    .line 537
    return v11
.end method

.method private parseMusicTrack()Z
    .locals 3

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@6
    const-string/jumbo v1, "\u266b "

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 258
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    #@11
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "\u266b "

    #@16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    #@21
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@24
    .line 259
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@2c
    .line 260
    const/4 v0, 0x1

    #@2d
    return v0

    #@2e
    .line 262
    :cond_0
    const/4 v0, 0x0

    #@2f
    return v0
.end method

.method private parseSmiley()Z
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 290
    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    #@6
    if-nez v3, :cond_0

    #@8
    .line 291
    return v5

    #@9
    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    #@c
    move-result-object v3

    #@d
    invoke-interface {v3}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@10
    move-result-object v3

    #@11
    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@13
    invoke-static {v3, p0, v4, v6}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@16
    move-result-object v0

    #@17
    .line 295
    .local v0, "match":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v0, :cond_1

    #@19
    .line 296
    return v5

    #@1a
    .line 298
    :cond_1
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@1c
    add-int/lit8 v3, v3, -0x1

    #@1e
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    #@21
    move-result v2

    #@22
    .line 299
    .local v2, "previousCharClass":I
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@24
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@2b
    move-result v4

    #@2c
    add-int/2addr v3, v4

    #@2d
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    #@30
    move-result v1

    #@31
    .line 300
    .local v1, "nextCharClass":I
    if-eq v2, v7, :cond_2

    #@33
    if-ne v2, v8, :cond_4

    #@35
    .line 301
    :cond_2
    if-eq v1, v7, :cond_3

    #@37
    if-ne v1, v8, :cond_4

    #@39
    .line 302
    :cond_3
    return v5

    #@3a
    .line 304
    :cond_4
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Smiley;

    #@3c
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    #@43
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@46
    .line 305
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@48
    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4f
    move-result v4

    #@50
    add-int/2addr v3, v4

    #@51
    iput v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@53
    .line 306
    return v6
.end method

.method private parseText()V
    .locals 6

    #@0
    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 268
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@7
    .line 270
    .local v2, "start":I
    :cond_0
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@9
    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@b
    add-int/lit8 v5, v4, 0x1

    #@d
    iput v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v1

    #@13
    .line 271
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    #@16
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 280
    :goto_0
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@1b
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 282
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Html;

    #@23
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@25
    iget v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@27
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    invoke-direct {v3, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@32
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    #@35
    .line 266
    return-void

    #@36
    .line 272
    :sswitch_0
    const-string/jumbo v3, "&lt;"

    #@39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_0

    #@3d
    .line 273
    :sswitch_1
    const-string/jumbo v3, "&gt;"

    #@40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    goto :goto_0

    #@44
    .line 274
    :sswitch_2
    const-string/jumbo v3, "&amp;"

    #@47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_0

    #@4b
    .line 275
    :sswitch_3
    const-string/jumbo v3, "&quot;"

    #@4e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_0

    #@52
    .line 276
    :sswitch_4
    const-string/jumbo v3, "&apos;"

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    goto :goto_0

    #@59
    .line 277
    :sswitch_5
    const-string/jumbo v3, "<br>"

    #@5c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    goto :goto_0

    #@60
    .line 271
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseURL()Z
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x3a

    #@2
    const/16 v10, 0x2e

    #@4
    const/4 v11, 0x0

    #@5
    .line 346
    iget-boolean v9, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    #@7
    if-eqz v9, :cond_0

    #@9
    iget v9, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@b
    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    #@e
    move-result v9

    #@f
    if-eqz v9, :cond_0

    #@11
    .line 350
    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@13
    .line 353
    .local v6, "start":I
    move v4, v6

    #@14
    .line 354
    .local v4, "index":I
    :goto_0
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@16
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@19
    move-result v9

    #@1a
    if-ge v4, v9, :cond_1

    #@1c
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@1e
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v9

    #@22
    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    #@25
    move-result v9

    #@26
    if-eqz v9, :cond_1

    #@28
    .line 355
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 347
    .end local v4    # "index":I
    .end local v6    # "start":I
    :cond_0
    return v11

    #@2c
    .line 358
    .restart local v4    # "index":I
    .restart local v6    # "start":I
    :cond_1
    const-string/jumbo v7, ""

    #@2f
    .line 359
    .local v7, "url":Ljava/lang/String;
    const/4 v3, 0x0

    #@30
    .line 361
    .local v3, "done":Z
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@32
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@35
    move-result v9

    #@36
    if-ne v4, v9, :cond_2

    #@38
    .line 362
    return v11

    #@39
    .line 363
    :cond_2
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@3b
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@3e
    move-result v9

    #@3f
    if-ne v9, v12, :cond_3

    #@41
    .line 365
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@43
    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@45
    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .line 366
    .local v5, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    #@4c
    move-result-object v9

    #@4d
    invoke-interface {v9}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    #@50
    move-result-object v9

    #@51
    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@54
    move-result v9

    #@55
    if-nez v9, :cond_9

    #@57
    .line 367
    return v11

    #@58
    .line 369
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@5a
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v9

    #@5e
    if-ne v9, v10, :cond_11

    #@60
    .line 371
    :goto_1
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@62
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@65
    move-result v9

    #@66
    if-ge v4, v9, :cond_5

    #@68
    .line 372
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@6a
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@6d
    move-result v0

    #@6e
    .line 373
    .local v0, "ch":C
    if-eq v0, v10, :cond_4

    #@70
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    #@73
    move-result v9

    #@74
    if-eqz v9, :cond_5

    #@76
    .line 376
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_1

    #@79
    .line 382
    .end local v0    # "ch":C
    :cond_5
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@7b
    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@7d
    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    .line 383
    .local v2, "domain":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    #@84
    move-result v9

    #@85
    if-nez v9, :cond_6

    #@87
    .line 384
    return v11

    #@88
    .line 389
    :cond_6
    add-int/lit8 v9, v4, 0x1

    #@8a
    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@8c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@8f
    move-result v10

    #@90
    if-ge v9, v10, :cond_7

    #@92
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@94
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@97
    move-result v9

    #@98
    if-ne v9, v12, :cond_7

    #@9a
    .line 390
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@9c
    add-int/lit8 v10, v4, 0x1

    #@9e
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    #@a1
    move-result v0

    #@a2
    .line 391
    .restart local v0    # "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@a5
    move-result v9

    #@a6
    if-eqz v9, :cond_7

    #@a8
    .line 392
    add-int/lit8 v4, v4, 0x1

    #@aa
    .line 393
    :goto_2
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@ac
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@af
    move-result v9

    #@b0
    if-ge v4, v9, :cond_7

    #@b2
    .line 394
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@b4
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@b7
    move-result v9

    #@b8
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    #@bb
    move-result v9

    #@bc
    .line 393
    if-eqz v9, :cond_7

    #@be
    .line 395
    add-int/lit8 v4, v4, 0x1

    #@c0
    goto :goto_2

    #@c1
    .line 406
    .end local v0    # "ch":C
    :cond_7
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@c3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@c6
    move-result v9

    #@c7
    if-ne v4, v9, :cond_b

    #@c9
    .line 407
    const/4 v3, 0x1

    #@ca
    .line 436
    :cond_8
    :goto_3
    const-string/jumbo v7, "http://"

    #@cd
    .line 443
    .end local v2    # "domain":Ljava/lang/String;
    :cond_9
    if-nez v3, :cond_a

    #@cf
    .line 444
    :goto_4
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@d1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@d4
    move-result v9

    #@d5
    if-ge v4, v9, :cond_a

    #@d7
    .line 445
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@d9
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@dc
    move-result v9

    #@dd
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    #@e0
    move-result v9

    #@e1
    if-eqz v9, :cond_12

    #@e3
    .line 450
    :cond_a
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@e5
    invoke-virtual {v9, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e8
    move-result-object v8

    #@e9
    .line 451
    .local v8, "urlText":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@eb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@ee
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v9

    #@f2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v9

    #@f6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v7

    #@fa
    .line 454
    invoke-direct {p0, v7, v8}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    #@fd
    .line 456
    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@ff
    .line 457
    const/4 v9, 0x1

    #@100
    return v9

    #@101
    .line 409
    .end local v8    # "urlText":Ljava/lang/String;
    .restart local v2    # "domain":Ljava/lang/String;
    :cond_b
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@103
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    #@106
    move-result v0

    #@107
    .line 410
    .restart local v0    # "ch":C
    const/16 v9, 0x3f

    #@109
    if-ne v0, v9, :cond_e

    #@10b
    .line 413
    add-int/lit8 v9, v4, 0x1

    #@10d
    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@10f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@112
    move-result v10

    #@113
    if-ne v9, v10, :cond_c

    #@115
    .line 414
    const/4 v3, 0x1

    #@116
    goto :goto_3

    #@117
    .line 416
    :cond_c
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@119
    add-int/lit8 v10, v4, 0x1

    #@11b
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    #@11e
    move-result v1

    #@11f
    .line 417
    .local v1, "ch2":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    #@122
    move-result v9

    #@123
    if-nez v9, :cond_d

    #@125
    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    #@128
    move-result v9

    #@129
    if-eqz v9, :cond_8

    #@12b
    .line 418
    :cond_d
    const/4 v3, 0x1

    #@12c
    goto :goto_3

    #@12d
    .line 421
    .end local v1    # "ch2":C
    :cond_e
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    #@130
    move-result v9

    #@131
    if-eqz v9, :cond_f

    #@133
    .line 422
    const/4 v3, 0x1

    #@134
    goto :goto_3

    #@135
    .line 423
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    #@138
    move-result v9

    #@139
    if-eqz v9, :cond_10

    #@13b
    .line 424
    const/4 v3, 0x1

    #@13c
    goto :goto_3

    #@13d
    .line 425
    :cond_10
    const/16 v9, 0x2f

    #@13f
    if-eq v0, v9, :cond_8

    #@141
    const/16 v9, 0x23

    #@143
    if-eq v0, v9, :cond_8

    #@145
    .line 429
    return v11

    #@146
    .line 438
    .end local v0    # "ch":C
    .end local v2    # "domain":Ljava/lang/String;
    :cond_11
    return v11

    #@147
    .line 446
    :cond_12
    add-int/lit8 v4, v4, 0x1

    #@149
    goto :goto_4
.end method

.method protected static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1332
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v1, v2, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@d
    .line 1333
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v2

    #@11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 1332
    add-int/lit8 v1, v1, -0x1

    #@16
    goto :goto_0

    #@17
    .line 1335
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2
.end method

.method public static tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 196
    if-nez p0, :cond_0

    #@3
    .line 197
    return-object v4

    #@4
    .line 201
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    #@7
    move-result-object v2

    #@8
    .line 202
    .local v2, "video":Lcom/google/android/util/AbstractMessageParser$Video;
    if-eqz v2, :cond_1

    #@a
    .line 203
    return-object v2

    #@b
    .line 207
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    #@e
    move-result-object v3

    #@f
    .line 208
    .local v3, "ytVideo":Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    if-eqz v3, :cond_2

    #@11
    .line 209
    return-object v3

    #@12
    .line 213
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    #@15
    move-result-object v1

    #@16
    .line 214
    .local v1, "photo":Lcom/google/android/util/AbstractMessageParser$Photo;
    if-eqz v1, :cond_3

    #@18
    .line 215
    return-object v1

    #@19
    .line 219
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    #@1c
    move-result-object v0

    #@1d
    .line 220
    .local v0, "flickrPhoto":Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;
    if-eqz v0, :cond_4

    #@1f
    .line 221
    return-object v0

    #@20
    .line 225
    :cond_4
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Link;

    #@22
    invoke-direct {v4, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    return-object v4
.end method


# virtual methods
.method public final getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    #@8
    return-object v0
.end method

.method public final getPartCount()I
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected abstract getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public parse()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x0

    #@3
    .line 131
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 132
    const/4 v3, 0x0

    #@a
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    #@d
    .line 133
    return-void

    #@e
    .line 137
    :cond_0
    const/4 v1, 0x0

    #@f
    .line 138
    .local v1, "meText":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    #@11
    if-eqz v3, :cond_1

    #@13
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@15
    const-string/jumbo v4, "/me"

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_1

    #@1e
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@23
    move-result v3

    #@24
    if-le v3, v6, :cond_1

    #@26
    .line 139
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@28
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v3

    #@2c
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    #@2f
    move-result v3

    #@30
    .line 138
    if-eqz v3, :cond_1

    #@32
    .line 140
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@34
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 141
    .local v1, "meText":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@3a
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    iput-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@40
    .line 145
    .end local v1    # "meText":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@41
    .line 146
    .local v2, "wasSmiley":Z
    :cond_2
    :goto_0
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@43
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    #@45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@48
    move-result v4

    #@49
    if-ge v3, v4, :cond_6

    #@4b
    .line 147
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@4d
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    #@50
    move-result v3

    #@51
    if-nez v3, :cond_3

    #@53
    .line 148
    if-eqz v2, :cond_4

    #@55
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    #@57
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_4

    #@5d
    .line 153
    :cond_3
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_5

    #@63
    .line 154
    const/4 v2, 0x1

    #@64
    goto :goto_0

    #@65
    .line 149
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    #@67
    const-string/jumbo v4, "last chunk did not end at word break"

    #@6a
    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6d
    throw v3

    #@6e
    .line 156
    :cond_5
    const/4 v2, 0x0

    #@6f
    .line 158
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    #@72
    move-result v3

    #@73
    if-nez v3, :cond_2

    #@75
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    #@78
    move-result v3

    #@79
    if-nez v3, :cond_2

    #@7b
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    #@7e
    move-result v3

    #@7f
    if-nez v3, :cond_2

    #@81
    .line 159
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    #@84
    goto :goto_0

    #@85
    .line 165
    :cond_6
    const/4 v0, 0x0

    #@86
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@88
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8b
    move-result v3

    #@8c
    if-ge v0, v3, :cond_9

    #@8e
    .line 166
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@93
    move-result-object v3

    #@94
    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    #@96
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_8

    #@9c
    .line 167
    if-lez v0, :cond_7

    #@9e
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@a0
    add-int/lit8 v4, v0, -0x1

    #@a2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a5
    move-result-object v3

    #@a6
    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    #@a8
    if-eqz v3, :cond_7

    #@aa
    .line 168
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@ac
    add-int/lit8 v4, v0, -0x1

    #@ae
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b1
    move-result-object v3

    #@b2
    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    #@b4
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    #@b7
    .line 170
    :cond_7
    add-int/lit8 v3, v0, 0x1

    #@b9
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@bb
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@be
    move-result v4

    #@bf
    if-ge v3, v4, :cond_8

    #@c1
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@c3
    add-int/lit8 v4, v0, 0x1

    #@c5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c8
    move-result-object v3

    #@c9
    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    #@cb
    if-eqz v3, :cond_8

    #@cd
    .line 171
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@cf
    add-int/lit8 v4, v0, 0x1

    #@d1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d4
    move-result-object v3

    #@d5
    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    #@d7
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    #@da
    .line 165
    :cond_8
    add-int/lit8 v0, v0, 0x1

    #@dc
    goto :goto_1

    #@dd
    .line 177
    :cond_9
    const/4 v0, 0x0

    #@de
    :goto_2
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@e0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@e3
    move-result v3

    #@e4
    if-ge v0, v3, :cond_b

    #@e6
    .line 178
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@e8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@eb
    move-result-object v3

    #@ec
    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    #@ee
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    #@f1
    move-result v3

    #@f2
    if-eqz v3, :cond_a

    #@f4
    .line 179
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@f6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f9
    move-result-object v3

    #@fa
    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    #@fc
    const/4 v4, 0x1

    #@fd
    invoke-virtual {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    #@100
    move-result-object v3

    #@101
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@104
    move-result v3

    #@105
    if-nez v3, :cond_a

    #@107
    .line 180
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    #@109
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10c
    .line 181
    add-int/lit8 v0, v0, -0x1

    #@10e
    .line 177
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@110
    goto :goto_2

    #@111
    .line 185
    :cond_b
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    #@114
    .line 128
    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1243
    .local v1, "html":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    #@7
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v4

    #@b
    .local v4, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v7

    #@f
    if-eqz v7, :cond_3

    #@11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Part;

    #@17
    .line 1244
    .local v3, "part":Lcom/google/android/util/AbstractMessageParser$Part;
    const/4 v0, 0x0

    #@18
    .line 1246
    .local v0, "caps":Z
    const-string/jumbo v7, "<p>"

    #@1b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1247
    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    #@21
    move-result-object v7

    #@22
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v6

    #@26
    .end local v0    # "caps":Z
    .local v6, "token$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v7

    #@2a
    if-eqz v7, :cond_2

    #@2c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Token;

    #@32
    .line 1248
    .local v5, "token":Lcom/google/android/util/AbstractMessageParser$Token;
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_1

    #@38
    .line 1249
    invoke-virtual {v5, v0}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 1319
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_0

    #@45
    .line 1320
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    #@48
    move-result v0

    #@49
    .local v0, "caps":Z
    goto :goto_1

    #@4a
    .line 1251
    .end local v0    # "caps":Z
    :cond_1
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser;->-getcom_google_android_util_AbstractMessageParser$Token$TypeSwitchesValues()[I

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    #@55
    move-result v8

    #@56
    aget v7, v7, v8

    #@58
    packed-switch v7, :pswitch_data_0

    #@5b
    .line 1315
    new-instance v7, Ljava/lang/AssertionError;

    #@5d
    new-instance v8, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v9, "unknown token type: "

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v8

    #@71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v8

    #@75
    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@78
    throw v7

    #@79
    .line 1253
    :pswitch_0
    const-string/jumbo v7, "<a href=\""

    #@7c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-object v7, v5

    #@80
    .line 1254
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Link;

    #@82
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    .line 1255
    const-string/jumbo v7, "\">"

    #@8c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 1256
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    .line 1257
    const-string/jumbo v7, "</a>"

    #@99
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    goto :goto_2

    #@9d
    .line 1262
    :pswitch_1
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    goto :goto_2

    #@a5
    .line 1266
    :pswitch_2
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@a8
    move-result-object v7

    #@a9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    goto :goto_2

    #@ad
    :pswitch_3
    move-object v7, v5

    #@ae
    .line 1271
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    #@b0
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    goto :goto_2

    #@b8
    .line 1276
    :pswitch_4
    const-string/jumbo v7, "<a href=\""

    #@bb
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-object v7, v5

    #@bf
    .line 1277
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Video;

    #@c1
    move-object v7, v5

    #@c2
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Video;

    #@c4
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    #@c7
    move-result-object v7

    #@c8
    invoke-static {v7}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    #@cb
    move-result-object v7

    #@cc
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    .line 1278
    const-string/jumbo v7, "\">"

    #@d2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    .line 1279
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@d8
    move-result-object v7

    #@d9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    .line 1280
    const-string/jumbo v7, "</a>"

    #@df
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    goto/16 :goto_2

    #@e4
    .line 1285
    :pswitch_5
    const-string/jumbo v7, "<a href=\""

    #@e7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-object v7, v5

    #@eb
    .line 1286
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    #@ed
    move-object v7, v5

    #@ee
    .line 1287
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    #@f0
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    #@f3
    move-result-object v7

    #@f4
    .line 1286
    invoke-static {v7}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    #@f7
    move-result-object v7

    #@f8
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    .line 1288
    const-string/jumbo v7, "\">"

    #@fe
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    .line 1289
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@104
    move-result-object v7

    #@105
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 1290
    const-string/jumbo v7, "</a>"

    #@10b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    goto/16 :goto_2

    #@110
    .line 1295
    :pswitch_6
    const-string/jumbo v7, "<a href=\""

    #@113
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-object v7, v5

    #@117
    .line 1297
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Photo;

    #@119
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    #@11c
    move-result-object v8

    #@11d
    move-object v7, v5

    #@11e
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Photo;

    #@120
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    #@123
    move-result-object v7

    #@124
    .line 1296
    invoke-static {v8, v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@127
    move-result-object v7

    #@128
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    .line 1298
    const-string/jumbo v7, "\">"

    #@12e
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    .line 1299
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@134
    move-result-object v7

    #@135
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    .line 1300
    const-string/jumbo v7, "</a>"

    #@13b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    goto/16 :goto_2

    #@140
    :pswitch_7
    move-object v2, v5

    #@141
    .line 1306
    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Photo;

    #@143
    .line 1307
    .local v2, "p":Lcom/google/android/util/AbstractMessageParser$Photo;
    const-string/jumbo v7, "<a href=\""

    #@146
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-object v7, v5

    #@14a
    .line 1308
    check-cast v7, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    #@14c
    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    #@14f
    move-result-object v7

    #@150
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    .line 1309
    const-string/jumbo v7, "\">"

    #@156
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    .line 1310
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    #@15c
    move-result-object v7

    #@15d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    .line 1311
    const-string/jumbo v7, "</a>"

    #@163
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    goto/16 :goto_2

    #@168
    .line 1323
    .end local v2    # "p":Lcom/google/android/util/AbstractMessageParser$Photo;
    .end local v5    # "token":Lcom/google/android/util/AbstractMessageParser$Token;
    :cond_2
    const-string/jumbo v7, "</p>\n"

    #@16b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    goto/16 :goto_0

    #@170
    .line 1326
    .end local v3    # "part":Lcom/google/android/util/AbstractMessageParser$Part;
    .end local v6    # "token$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v7

    #@174
    return-object v7

    #@175
    .line 1251
    nop

    #@176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
