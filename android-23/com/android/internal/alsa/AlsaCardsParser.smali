.class public Lcom/android/internal/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/android/internal/alsa/LineTokenizer;
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 36
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    #@2
    const-string/jumbo v1, " :[]"

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    #@a
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@a
    .line 99
    return-void
.end method

.method public static hasCardNumber(Ljava/util/ArrayList;I)Z
    .locals 3
    .param p1, "cardNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;I)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 195
    .local p0, "recs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    .local v1, "cardRec$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@10
    .line 196
    .local v0, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@12
    if-ne v2, p1, :cond_0

    #@14
    .line 197
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 200
    .end local v0    # "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "heading"    # Ljava/lang/String;

    #@0
    .prologue
    .line 217
    return-void
.end method

.method public getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@8
    return-object v0
.end method

.method public getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .locals 3
    .param p1, "cardNum"    # I

    #@0
    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@12
    .line 148
    .local v0, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 149
    return-object v0

    #@17
    .line 153
    .end local v0    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method public getDefaultCard()I
    .locals 2

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    #@3
    move-result v0

    #@4
    .line 187
    .local v0, "card":I
    if-gez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getNumCardRecords()I

    #@9
    move-result v1

    #@a
    if-lez v1, :cond_0

    #@c
    .line 189
    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getNumCardRecords()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@15
    move-result-object v1

    #@16
    iget v0, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@18
    .line 191
    :cond_0
    return v0
.end method

.method public getDefaultUsbCard()I
    .locals 3

    #@0
    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@12
    .line 175
    .local v0, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-boolean v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 176
    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@18
    return v2

    #@19
    .line 180
    .end local v0    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_1
    const/4 v2, -0x1

    #@1a
    return v2
.end method

.method public getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 204
    .local p1, "prevScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 205
    .local v0, "newRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    iget-object v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@17
    .line 207
    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v3, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@19
    invoke-static {p1, v3}, Lcom/android/internal/alsa/AlsaCardsParser;->hasCardNumber(Ljava/util/ArrayList;I)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_0

    #@23
    .line 211
    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_1
    return-object v0
.end method

.method public getNumCardRecords()I
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getScanRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public isCardUsb(I)Z
    .locals 3
    .param p1, "cardNum"    # I

    #@0
    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "rec$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@12
    .line 162
    .local v0, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 163
    iget-boolean v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    #@18
    return v2

    #@19
    .line 167
    .end local v0    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_1
    const/4 v2, 0x0

    #@1a
    return v2
.end method

.method public scan()V
    .locals 8

    #@0
    .prologue
    .line 105
    new-instance v7, Ljava/util/ArrayList;

    #@2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@5
    iput-object v7, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@7
    .line 107
    new-instance v2, Ljava/io/File;

    #@9
    const-string/jumbo v7, "/proc/asound/cards"

    #@c
    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 109
    .local v2, "cardsFile":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    #@11
    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@14
    .line 110
    .local v6, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    #@16
    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@19
    .line 111
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string/jumbo v5, ""

    #@1c
    .line 112
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 113
    new-instance v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@24
    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    #@27
    .line 117
    .local v1, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    const/4 v7, 0x0

    #@28
    invoke-virtual {v1, v5, v7}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    #@2b
    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    .line 120
    if-nez v5, :cond_1

    #@31
    .line 130
    .end local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    #@34
    .line 101
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :goto_1
    return-void

    #@35
    .line 126
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_1
    const/4 v7, 0x1

    #@36
    invoke-virtual {v1, v5, v7}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    #@39
    .line 128
    iget-object v7, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@3e
    goto :goto_0

    #@3f
    .line 131
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    #@40
    .line 132
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@43
    goto :goto_1

    #@44
    .line 133
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    #@45
    .line 134
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    #@48
    goto :goto_1
.end method
