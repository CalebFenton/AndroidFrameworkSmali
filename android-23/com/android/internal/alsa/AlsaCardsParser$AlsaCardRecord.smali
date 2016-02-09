.class public Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaCardsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaCardRecord"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlsaCardRecord"

.field private static final kUsbCardKeyStr:Ljava/lang/String; = "at usb-"


# instance fields
.field public mCardDescription:Ljava/lang/String;

.field public mCardName:Ljava/lang/String;

.field public mCardNum:I

.field public mField1:Ljava/lang/String;

.field public mIsUsb:Z

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaCardsParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaCardsParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/alsa/AlsaCardsParser;

    #@0
    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->this$0:Lcom/android/internal/alsa/AlsaCardsParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    #@8
    .line 45
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    #@d
    .line 46
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    #@12
    .line 47
    const-string/jumbo v0, ""

    #@15
    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    #@17
    .line 48
    const/4 v0, 0x0

    #@18
    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    #@1a
    .line 50
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "lineIndex"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 53
    const/4 v3, 0x0

    #@4
    .line 54
    .local v3, "tokenIndex":I
    const/4 v0, 0x0

    #@5
    .line 56
    .local v0, "delimIndex":I
    if-nez p2, :cond_1

    #@7
    .line 58
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {v6, p1, v3}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    #@e
    move-result v3

    #@f
    .line 59
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6, p1, v3}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    .line 63
    :try_start_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1e
    move-result v6

    #@1f
    iput v6, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 71
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    #@28
    move-result v3

    #@29
    .line 72
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4, p1, v3}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    #@30
    move-result v0

    #@31
    .line 73
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    #@37
    .line 76
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    #@3e
    move-result v3

    #@3f
    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    #@45
    .line 91
    :cond_0
    :goto_0
    return v5

    #@46
    .line 64
    :catch_0
    move-exception v1

    #@47
    .line 65
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "AlsaCardRecord"

    #@4a
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v7, "Failed to parse line "

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    const-string/jumbo v7, " of "

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    const-string/jumbo v7, "/proc/asound/cards"

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    .line 66
    const-string/jumbo v7, ": "

    #@6b
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    .line 66
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v7

    #@73
    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 67
    return v4

    #@7f
    .line 80
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-ne p2, v5, :cond_0

    #@81
    .line 81
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v6, p1, v4}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    #@88
    move-result v3

    #@89
    .line 82
    if-eq v3, v7, :cond_0

    #@8b
    .line 83
    const-string/jumbo v6, "at usb-"

    #@8e
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@91
    move-result v2

    #@92
    .line 84
    .local v2, "keyIndex":I
    if-eq v2, v7, :cond_2

    #@94
    move v4, v5

    #@95
    :cond_2
    iput-boolean v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    #@97
    .line 85
    iget-boolean v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    #@99
    if-eqz v4, :cond_0

    #@9b
    .line 86
    add-int/lit8 v4, v2, -0x1

    #@9d
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a0
    move-result-object v4

    #@a1
    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    #@a3
    goto :goto_0
.end method

.method public textFormat()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, " : "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
