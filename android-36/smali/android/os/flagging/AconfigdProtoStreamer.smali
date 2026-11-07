.class public final Landroid/os/flagging/AconfigdProtoStreamer;
.super Ljava/lang/Object;
.source "AconfigdProtoStreamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    }
.end annotation


# static fields
.field private static final blacklist MAINLINE_SOCKET_ADDRESS:Ljava/lang/String; = "aconfigd_mainline"

.field private static final blacklist SYSTEM_SOCKET_ADDRESS:Ljava/lang/String; = "aconfigd_system"

.field private static final blacklist TAG:Ljava/lang/String; = "FlagManager"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist parseAconfigdResponse(Ljava/io/InputStream;J)V
    .registers 15
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "responseMessageToken"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    new-instance v0, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 209
    .local v0, "proto":Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;
    :goto_5
    invoke-virtual {v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    int-to-long v1, v1

    .line 211
    .local v1, "currentToken":J
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_11

    .line 212
    return-void

    .line 215
    :cond_11
    const-wide/16 v5, 0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_18

    .line 216
    goto :goto_5

    .line 219
    :cond_18
    const-wide v5, 0x20b00000001L

    invoke-virtual {v0, v5, v6}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 220
    .local v5, "msgsToken":J
    invoke-virtual {v0}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    int-to-long v7, v7

    .line 222
    .local v7, "nextToken":J
    long-to-int v9, p2

    int-to-long v9, v9

    cmp-long v9, v7, v9

    if-nez v9, :cond_34

    .line 223
    invoke-virtual {v0, p2, p3}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 224
    .local v3, "msgToken":J
    invoke-virtual {v0, v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->end(J)V

    .line 225
    .end local v3    # "msgToken":J
    goto :goto_3e

    :cond_34
    const-wide/16 v9, 0x8

    cmp-long v9, v7, v9

    if-eqz v9, :cond_4a

    .line 228
    cmp-long v3, v7, v3

    if-nez v3, :cond_42

    .line 236
    :goto_3e
    invoke-virtual {v0, v5, v6}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->end(J)V

    .line 237
    .end local v1    # "currentToken":J
    .end local v5    # "msgsToken":J
    .end local v7    # "nextToken":J
    goto :goto_5

    .line 231
    .restart local v1    # "currentToken":J
    .restart local v5    # "msgsToken":J
    .restart local v7    # "nextToken":J
    :cond_42
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid message type, expecting only return message or error message"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_4a
    const-wide v3, 0x10900000008L

    invoke-virtual {v0, v3, v4}, Landroid/provider/internal/aconfig/storage/android/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "errmsg":Ljava/lang/String;
    new-instance v4, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "override request failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist sendBytesAndParseResponse([BJ)V
    .registers 9
    .param p1, "requestBytes"    # [B
    .param p2, "responseMessageToken"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 155
    .local v0, "systemSocket":Landroid/net/LocalSocket;
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "aconfigd_system"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 158
    .local v1, "systemAddress":Landroid/net/LocalSocketAddress;
    invoke-virtual {v0}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_17

    .line 159
    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 162
    :cond_17
    invoke-direct {p0, p1, v0}, Landroid/os/flagging/AconfigdProtoStreamer;->sendBytesOverSocket([BLandroid/net/LocalSocket;)Ljava/io/InputStream;

    move-result-object v2

    .line 163
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v2, p2, p3}, Landroid/os/flagging/AconfigdProtoStreamer;->parseAconfigdResponse(Ljava/io/InputStream;J)V

    .line 165
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 166
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 167
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 189
    .end local v0    # "systemSocket":Landroid/net/LocalSocket;
    .end local v1    # "systemAddress":Landroid/net/LocalSocketAddress;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_57

    .line 169
    :catch_28
    move-exception v0

    .line 170
    .local v0, "systemException":Ljava/io/IOException;
    const-string v1, "FlagManager"

    const-string v2, "failed to send request to system socket; trying mainline socket"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 176
    .local v1, "mainlineSocket":Landroid/net/LocalSocket;
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "aconfigd_mainline"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 179
    .local v2, "mainlineAddress":Landroid/net/LocalSocketAddress;
    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_47

    .line 180
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 183
    :cond_47
    invoke-direct {p0, p1, v1}, Landroid/os/flagging/AconfigdProtoStreamer;->sendBytesOverSocket([BLandroid/net/LocalSocket;)Ljava/io/InputStream;

    move-result-object v3

    .line 184
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v3, p2, p3}, Landroid/os/flagging/AconfigdProtoStreamer;->parseAconfigdResponse(Ljava/io/InputStream;J)V

    .line 186
    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 187
    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 188
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 190
    .end local v0    # "systemException":Ljava/io/IOException;
    .end local v1    # "mainlineSocket":Landroid/net/LocalSocket;
    .end local v2    # "mainlineAddress":Landroid/net/LocalSocketAddress;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :goto_57
    return-void
.end method

.method private blacklist sendBytesOverSocket([BLandroid/net/LocalSocket;)Ljava/io/InputStream;
    .registers 7
    .param p1, "requestBytes"    # [B
    .param p2, "socket"    # Landroid/net/LocalSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "responseInputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v1, "inputStream":Ljava/io/DataInputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 199
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 200
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 202
    return-object v0
.end method


# virtual methods
.method public blacklist sendClearFlagOverrideRequests(Ljava/util/Set;J)V
    .registers 14
    .param p2, "removeType"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 69
    .local v0, "requestOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-static {p1}, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->buildFlagsWithoutValues(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v3, 0x10b00000005L

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;

    .line 70
    .local v2, "flag":Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    const-wide v5, 0x20b00000001L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 71
    .local v5, "msgsToken":J
    nop

    .line 72
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 73
    .local v3, "msgToken":J
    const-wide v7, 0x10900000002L

    iget-object v9, v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 76
    const-wide v7, 0x10900000003L

    iget-object v9, v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->flagName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 78
    const-wide v7, 0x10800000001L

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 80
    const-wide v7, 0x10e00000004L

    invoke-virtual {v0, v7, v8, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 83
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 84
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 85
    .end local v2    # "flag":Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    .end local v3    # "msgToken":J
    .end local v5    # "msgsToken":J
    goto :goto_d

    .line 87
    :cond_58
    nop

    .line 88
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    .line 87
    invoke-direct {p0, v1, v3, v4}, Landroid/os/flagging/AconfigdProtoStreamer;->sendBytesAndParseResponse([BJ)V

    .line 89
    return-void
.end method

.method public blacklist sendFlagOverrideRequests(Ljava/util/Map;J)V
    .registers 14
    .param p2, "overrideType"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 132
    .local v0, "requestOutputStream":Landroid/util/proto/ProtoOutputStream;
    invoke-static {p1}, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->buildFlags(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v3, 0x10b00000002L

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;

    .line 133
    .local v2, "flag":Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    const-wide v5, 0x20b00000001L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 134
    .local v5, "msgsToken":J
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 135
    .local v3, "msgToken":J
    const-wide v7, 0x10900000001L

    iget-object v9, v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 137
    const-wide v7, 0x10900000002L

    iget-object v9, v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->flagName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 139
    const-wide v7, 0x10900000003L

    iget-object v9, v2, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->value:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 141
    const-wide v7, 0x10e00000004L

    invoke-virtual {v0, v7, v8, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 143
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 144
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 145
    .end local v2    # "flag":Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    .end local v3    # "msgToken":J
    .end local v5    # "msgsToken":J
    goto :goto_d

    .line 147
    :cond_58
    nop

    .line 148
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    .line 147
    invoke-direct {p0, v1, v3, v4}, Landroid/os/flagging/AconfigdProtoStreamer;->sendBytesAndParseResponse([BJ)V

    .line 149
    return-void
.end method

.method public blacklist sendOtaFlagOverrideRequests(Ljava/util/Map;Ljava/lang/String;)V
    .registers 19
    .param p2, "buildFingerprint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 102
    .local v0, "requestOutputStream":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 103
    .local v1, "msgsToken":J
    const-wide v3, 0x10b00000003L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 104
    .local v5, "msgToken":J
    const-wide v7, 0x10900000001L

    move-object/from16 v9, p2

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->buildFlags(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_61

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/flagging/AconfigdProtoStreamer$Flag;

    .line 107
    .local v11, "flag":Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    nop

    .line 108
    const-wide v12, 0x10b00000002L

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 109
    .local v12, "flagOverrideMsgToken":J
    iget-object v14, v11, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 111
    const-wide v14, 0x10900000002L

    iget-object v7, v11, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->flagName:Ljava/lang/String;

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 113
    const-wide v7, 0x10900000003L

    iget-object v14, v11, Landroid/os/flagging/AconfigdProtoStreamer$Flag;->value:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 115
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 116
    .end local v11    # "flag":Landroid/os/flagging/AconfigdProtoStreamer$Flag;
    .end local v12    # "flagOverrideMsgToken":J
    const-wide v7, 0x10900000001L

    goto :goto_29

    .line 117
    :cond_61
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 120
    nop

    .line 121
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v7

    .line 120
    move-object/from16 v8, p0

    invoke-direct {v8, v7, v3, v4}, Landroid/os/flagging/AconfigdProtoStreamer;->sendBytesAndParseResponse([BJ)V

    .line 122
    return-void
.end method
