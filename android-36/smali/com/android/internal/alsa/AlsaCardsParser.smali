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
.field protected static final blacklist DEBUG:Z = false

.field public static final blacklist SCANSTATUS_EMPTY:I = 0x2

.field public static final blacklist SCANSTATUS_FAIL:I = 0x1

.field public static final blacklist SCANSTATUS_NOTSCANNED:I = -0x1

.field public static final blacklist SCANSTATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final blacklist kAlsaFolderPath:Ljava/lang/String; = "/proc/asound"

.field private static final blacklist kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static final blacklist kDeviceAddressPrefix:Ljava/lang/String; = "/dev/bus/usb/"

.field private static blacklist mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private blacklist mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;
    .registers 1

    sget-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    .line 134
    return-void
.end method

.method private blacklist Log(Ljava/lang/String;)V
    .registers 2
    .param p1, "heading"    # Ljava/lang/String;

    .line 219
    return-void
.end method


# virtual methods
.method public blacklist findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 202
    .local v1, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$fgetmUsbDeviceAddress(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 203
    return-object v1

    .line 205
    .end local v1    # "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_23
    goto :goto_6

    .line 206
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getScanStatus()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    return v0
.end method

.method public blacklist scan()I
    .registers 14

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/asound/cards"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "cardsFile":Ljava/io/File;
    const/4 v1, 0x1

    :try_start_f
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 146
    .local v2, "reader":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 148
    .local v4, "line":Ljava/lang/String;
    :goto_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    const/4 v6, 0x0

    if-eqz v5, :cond_99

    .line 149
    new-instance v5, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v5, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    .line 153
    .local v5, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    invoke-static {v5, v4, v6}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    .line 155
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 156
    if-nez v4, :cond_33

    .line 157
    goto :goto_99

    .line 162
    :cond_33
    invoke-static {v5, v4, v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    .line 165
    iget v6, v5, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 166
    .local v6, "cardNum":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/asound/card"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "cardFolderPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/usbbus"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v8, "usbbusFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_92

    .line 170
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 171
    .local v9, "usbbusReader":Ljava/io/FileReader;
    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "deviceAddress":Ljava/lang/String;
    if-eqz v10, :cond_8f

    .line 173
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/dev/bus/usb/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->setDeviceAddress(Ljava/lang/String;)V

    .line 175
    :cond_8f
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 177
    .end local v9    # "usbbusReader":Ljava/io/FileReader;
    .end local v10    # "deviceAddress":Ljava/lang/String;
    :cond_92
    iget-object v9, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    nop

    .end local v5    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v6    # "cardNum":I
    .end local v7    # "cardFolderPath":Ljava/lang/String;
    .end local v8    # "usbbusFile":Ljava/io/File;
    goto :goto_1b

    .line 179
    :cond_99
    :goto_99
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 180
    iget-object v5, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a7

    .line 181
    iput v6, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    goto :goto_b2

    .line 183
    :cond_a7
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_aa} :catch_af
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_aa} :catch_ab

    goto :goto_b2

    .line 187
    .end local v2    # "reader":Ljava/io/FileReader;
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_ab
    move-exception v2

    .line 188
    .local v2, "e":Ljava/io/IOException;
    iput v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    goto :goto_b3

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    :catch_af
    move-exception v2

    .line 186
    .local v2, "e":Ljava/io/FileNotFoundException;
    iput v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    .line 189
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_b2
    nop

    .line 193
    :goto_b3
    iget v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    return v1
.end method
