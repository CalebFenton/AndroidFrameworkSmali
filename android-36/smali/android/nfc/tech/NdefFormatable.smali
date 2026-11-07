.class public final Landroid/nfc/tech/NdefFormatable;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NdefFormatable.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "NFC"


# direct methods
.method public constructor greylist-max-o <init>(Landroid/nfc/Tag;)V
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 73
    return-void
.end method

.method public static whitelist get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .line 59
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 61
    :cond_9
    :try_start_9
    new-instance v0, Landroid/nfc/tech/NdefFormatable;

    invoke-direct {v0, p0}, Landroid/nfc/tech/NdefFormatable;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v0

    .line 62
    :catch_f
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method


# virtual methods
.method public bridge synthetic whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic whitelist connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public whitelist format(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    .line 95
    return-void
.end method

.method greylist-max-o format(Landroid/nfc/NdefMessage;Z)V
    .registers 7
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .param p2, "makeReadOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/nfc/tech/NdefFormatable;->checkConnected()V

    .line 125
    :try_start_3
    iget-object v0, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v0

    .line 126
    .local v0, "serviceHandle":I
    iget-object v1, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    .line 127
    .local v1, "tagService":Landroid/nfc/INfcTag;
    if-eqz v1, :cond_76

    .line 130
    sget-object v2, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-interface {v1, v0, v2}, Landroid/nfc/INfcTag;->formatNdef(I[B)I

    move-result v2

    .line 131
    .local v2, "errorCode":I
    sparse-switch v2, :sswitch_data_86

    .line 140
    new-instance v3, Ljava/io/IOException;

    goto :goto_72

    .line 133
    :sswitch_1d
    nop

    .line 143
    invoke-interface {v1, v0}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 148
    if-eqz p1, :cond_42

    .line 149
    invoke-interface {v1, v0, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v3

    move v2, v3

    .line 150
    sparse-switch v2, :sswitch_data_94

    .line 159
    new-instance v3, Ljava/io/IOException;

    goto :goto_3e

    .line 152
    :sswitch_31
    goto :goto_42

    .line 154
    :sswitch_32
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 156
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_38
    new-instance v3, Landroid/nfc/FormatException;

    invoke-direct {v3}, Landroid/nfc/FormatException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 159
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :goto_3e
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 164
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :cond_42
    :goto_42
    if-eqz p2, :cond_5f

    .line 165
    invoke-interface {v1, v0}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v3

    .line 166
    .end local v2    # "errorCode":I
    .local v3, "errorCode":I
    sparse-switch v3, :sswitch_data_a2

    .line 175
    new-instance v2, Ljava/io/IOException;

    goto :goto_5b

    .line 168
    :sswitch_4e
    goto :goto_5f

    .line 170
    :sswitch_4f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v2

    .line 172
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_55
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v2

    .line 175
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :goto_5b
    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v2

    .line 180
    .end local v0    # "serviceHandle":I
    .end local v1    # "tagService":Landroid/nfc/INfcTag;
    .end local v3    # "errorCode":I
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :cond_5f
    :goto_5f
    goto :goto_84

    .line 144
    .restart local v0    # "serviceHandle":I
    .restart local v1    # "tagService":Landroid/nfc/INfcTag;
    .restart local v2    # "errorCode":I
    :cond_60
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 135
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_66
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 137
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :sswitch_6c
    new-instance v3, Landroid/nfc/FormatException;

    invoke-direct {v3}, Landroid/nfc/FormatException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 140
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :goto_72
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v3

    .line 128
    .end local v2    # "errorCode":I
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :cond_76
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .end local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .end local p2    # "makeReadOnly":Z
    throw v2
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7c} :catch_7c

    .line 178
    .end local v0    # "serviceHandle":I
    .end local v1    # "tagService":Landroid/nfc/INfcTag;
    .restart local p0    # "this":Landroid/nfc/tech/NdefFormatable;
    .restart local p1    # "firstMessage":Landroid/nfc/NdefMessage;
    .restart local p2    # "makeReadOnly":Z
    :catch_7c
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_84
    return-void

    nop

    :sswitch_data_86
    .sparse-switch
        -0x8 -> :sswitch_6c
        -0x1 -> :sswitch_66
        0x0 -> :sswitch_1d
    .end sparse-switch

    :sswitch_data_94
    .sparse-switch
        -0x8 -> :sswitch_38
        -0x1 -> :sswitch_32
        0x0 -> :sswitch_31
    .end sparse-switch

    :sswitch_data_a2
    .sparse-switch
        -0x8 -> :sswitch_55
        -0x1 -> :sswitch_4f
        0x0 -> :sswitch_4e
    .end sparse-switch
.end method

.method public whitelist formatReadOnly(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "firstMessage"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    .line 118
    return-void
.end method

.method public bridge synthetic whitelist getTag()Landroid/nfc/Tag;
    .registers 2

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist isConnected()Z
    .registers 2

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method
