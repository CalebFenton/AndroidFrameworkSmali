.class public final Landroid/nfc/tech/NdefFormatable;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NdefFormatable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 72
    const/4 v0, 0x7

    #@1
    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    #@4
    .line 71
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 59
    const/4 v1, 0x7

    #@2
    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return-object v2

    #@9
    .line 61
    :cond_0
    :try_start_0
    new-instance v1, Landroid/nfc/tech/NdefFormatable;

    #@b
    invoke-direct {v1, p0}, Landroid/nfc/tech/NdefFormatable;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    return-object v1

    #@f
    .line 62
    :catch_0
    move-exception v0

    #@10
    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    #@3
    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    #@3
    return-void
.end method

.method public format(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 94
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    #@4
    .line 93
    return-void
.end method

.method format(Landroid/nfc/NdefMessage;Z)V
    .locals 6
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .param p2, "makeReadOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/nfc/tech/NdefFormatable;->checkConnected()V

    #@3
    .line 124
    :try_start_0
    iget-object v4, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    #@5
    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    #@8
    move-result v2

    #@9
    .line 125
    .local v2, "serviceHandle":I
    iget-object v4, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    #@b
    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    #@e
    move-result-object v3

    #@f
    .line 126
    .local v3, "tagService":Landroid/nfc/INfcTag;
    sget-object v4, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    #@11
    invoke-interface {v3, v2, v4}, Landroid/nfc/INfcTag;->formatNdef(I[B)I

    #@14
    move-result v1

    #@15
    .line 127
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    #@18
    .line 136
    new-instance v4, Ljava/io/IOException;

    #@1a
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@1d
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    .line 174
    .end local v1    # "errorCode":I
    .end local v2    # "serviceHandle":I
    .end local v3    # "tagService":Landroid/nfc/INfcTag;
    :catch_0
    move-exception v0

    #@1f
    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NFC"

    #@22
    const-string/jumbo v5, "NFC service dead"

    #@25
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@28
    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :sswitch_0
    return-void

    #@29
    .line 131
    .restart local v1    # "errorCode":I
    .restart local v2    # "serviceHandle":I
    .restart local v3    # "tagService":Landroid/nfc/INfcTag;
    :sswitch_1
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    #@2b
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@2e
    throw v4

    #@2f
    .line 133
    :sswitch_2
    new-instance v4, Landroid/nfc/FormatException;

    #@31
    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    #@34
    throw v4

    #@35
    .line 139
    :sswitch_3
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    #@38
    move-result v4

    #@39
    if-nez v4, :cond_1

    #@3b
    .line 140
    new-instance v4, Ljava/io/IOException;

    #@3d
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@40
    throw v4

    #@41
    .line 144
    :cond_1
    if-eqz p1, :cond_2

    #@43
    .line 145
    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    #@46
    move-result v1

    #@47
    .line 146
    sparse-switch v1, :sswitch_data_1

    #@4a
    .line 155
    new-instance v4, Ljava/io/IOException;

    #@4c
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@4f
    throw v4

    #@50
    .line 150
    :sswitch_4
    new-instance v4, Ljava/io/IOException;

    #@52
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@55
    throw v4

    #@56
    .line 152
    :sswitch_5
    new-instance v4, Landroid/nfc/FormatException;

    #@58
    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    #@5b
    throw v4

    #@5c
    .line 160
    :cond_2
    :sswitch_6
    if-eqz p2, :cond_0

    #@5e
    .line 161
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    #@61
    move-result v1

    #@62
    .line 162
    sparse-switch v1, :sswitch_data_2

    #@65
    .line 171
    new-instance v4, Ljava/io/IOException;

    #@67
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@6a
    throw v4

    #@6b
    .line 166
    :sswitch_7
    new-instance v4, Ljava/io/IOException;

    #@6d
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@70
    throw v4

    #@71
    .line 168
    :sswitch_8
    new-instance v4, Ljava/io/IOException;

    #@73
    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    #@76
    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@77
    .line 127
    nop

    #@78
    :sswitch_data_0
    .sparse-switch
        -0x8 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_3
    .end sparse-switch

    #@86
    .line 146
    :sswitch_data_1
    .sparse-switch
        -0x8 -> :sswitch_5
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_6
    .end sparse-switch

    #@94
    .line 162
    :sswitch_data_2
    .sparse-switch
        -0x8 -> :sswitch_8
        -0x1 -> :sswitch_7
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public formatReadOnly(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    #@4
    .line 115
    return-void
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    #@3
    return-void
.end method
