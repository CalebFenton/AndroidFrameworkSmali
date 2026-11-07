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
.field private static final blacklist TAG:Ljava/lang/String; = "AlsaCardRecord"

.field private static final blacklist kUsbCardKeyStr:Ljava/lang/String; = "at usb-"


# instance fields
.field blacklist mCardDescription:Ljava/lang/String;

.field blacklist mCardName:Ljava/lang/String;

.field blacklist mCardNum:I

.field blacklist mField1:Ljava/lang/String;

.field private blacklist mUsbDeviceAddress:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmUsbDeviceAddress(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/alsa/AlsaCardsParser;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/alsa/AlsaCardsParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private blacklist parse(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "lineIndex"    # I

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "tokenIndex":I
    const/4 v1, 0x0

    .line 81
    .local v1, "delimIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_7a

    .line 83
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    .line 84
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v1

    .line 88
    :try_start_16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_20} :catch_46

    .line 93
    nop

    .line 96
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    .line 97
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v1

    .line 98
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mField1:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    goto :goto_9a

    .line 89
    :catch_46
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/proc/asound/cards"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    const-string v5, "AlsaCardRecord"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v2

    .line 105
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_7a
    if-ne p2, v3, :cond_9a

    .line 106
    invoke-static {}, Lcom/android/internal/alsa/AlsaCardsParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v0

    .line 107
    const/4 v4, -0x1

    if-eq v0, v4, :cond_9a

    .line 108
    const-string v5, "at usb-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, "keyIndex":I
    if-eq v5, v4, :cond_90

    move v2, v3

    .line 110
    .local v2, "isUsb":Z
    :cond_90
    if-eqz v2, :cond_9a

    .line 111
    add-int/lit8 v4, v5, -0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    .line 116
    .end local v2    # "isUsb":Z
    .end local v5    # "keyIndex":I
    :cond_9a
    :goto_9a
    return v3
.end method


# virtual methods
.method public blacklist getCardDescription()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCardName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCardNum()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    return v0
.end method

.method blacklist isUsb()Z
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist log(I)V
    .registers 4
    .param p1, "listIndex"    # I

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->isUsb()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "AlsaCardRecord"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public blacklist setDeviceAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "usbDeviceAddress"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public blacklist textFormat()Ljava/lang/String;
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mUsbDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
