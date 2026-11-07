.class public Lgov/nist/javax/sip/stack/UDPMessageChannel;
.super Lgov/nist/javax/sip/stack/MessageChannel;
.source "UDPMessageChannel.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/ParseExceptionListener;
.implements Ljava/lang/Runnable;
.implements Lgov/nist/javax/sip/stack/RawMessageChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;
    }
.end annotation


# instance fields
.field private greylist incomingPacket:Ljava/net/DatagramPacket;

.field private greylist myAddress:Ljava/lang/String;

.field protected greylist myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

.field protected greylist myPort:I

.field private greylist peerAddress:Ljava/net/InetAddress;

.field private greylist peerPacketSourceAddress:Ljava/net/InetAddress;

.field private greylist peerPacketSourcePort:I

.field private greylist peerPort:I

.field private greylist peerProtocol:Ljava/lang/String;

.field private greylist pingBackRecord:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;",
            ">;"
        }
    .end annotation
.end field

.field private greylist receptionTime:J

.field protected greylist sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetpingBackRecord(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;
    .registers 1

    iget-object p0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    return-object p0
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .registers 5
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    .line 173
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 174
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 175
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 177
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    .local v0, "mythread":Ljava/lang/Thread;
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 180
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 182
    const-string v1, "UDPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;Ljava/net/DatagramPacket;)V
    .registers 6
    .param p1, "stack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;
    .param p3, "packet"    # Ljava/net/DatagramPacket;

    .line 200
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 202
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 203
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 204
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 206
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 207
    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 208
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 209
    .local v0, "mythread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 210
    const-string v1, "UDPMessageChannelThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method protected constructor greylist <init>(Ljava/net/InetAddress;ILgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/UDPMessageProcessor;)V
    .registers 8
    .param p1, "targetAddr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "sipStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p4, "messageProcessor"    # Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    .line 227
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/MessageChannel;-><init>()V

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    .line 228
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 229
    iput p2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 230
    const-string v0, "UDP"

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 231
    iput-object p4, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 232
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    .line 233
    invoke-virtual {p4}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    .line 234
    iput-object p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 235
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 236
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating message channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 239
    :cond_56
    return-void
.end method

.method private greylist processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    .registers 16
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    const-string v0, "rport"

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 319
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 321
    .local v1, "packetLength":I
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    .line 322
    .local v2, "bytes":[B
    new-array v3, v1, [B

    .line 323
    .local v3, "msgBytes":[B
    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 327
    iget-object v5, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UDPMessageChannel: processIncomingDataPacket : peerAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 329
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 330
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 334
    :cond_58
    const/4 v5, 0x0

    .line 336
    .local v5, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    const/4 v6, 0x0

    :try_start_5a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    .line 337
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPMessage([B)Lgov/nist/javax/sip/message/SIPMessage;

    move-result-object v7

    move-object v5, v7

    .line 338
    iput-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;
    :try_end_69
    .catch Ljava/text/ParseException; {:try_start_5a .. :try_end_69} :catch_219

    .line 379
    nop

    .line 384
    if-nez v5, :cond_e5

    .line 385
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 386
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v4, "Rejecting message !  + Null message parsed."

    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 388
    :cond_7f
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e4

    .line 389
    const-string v0, "\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 390
    .local v7, "retval":[B
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v9, v7

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v11}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 391
    .local v6, "keepalive":Ljava/net/DatagramPacket;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 392
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v4, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 393
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-direct {v4, p0, v8, v9}, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;-><init>(Lgov/nist/javax/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V

    .line 392
    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v4, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 395
    .end local v6    # "keepalive":Ljava/net/DatagramPacket;
    .end local v7    # "retval":[B
    :cond_e4
    return-void

    .line 397
    :cond_e5
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    .line 399
    .local v4, "viaList":Lgov/nist/javax/sip/header/ViaList;
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v6

    if-eqz v6, :cond_197

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v6

    if-eqz v6, :cond_197

    .line 400
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v6

    if-eqz v6, :cond_197

    .line 401
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    if-eqz v6, :cond_197

    .line 402
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v6

    if-nez v6, :cond_109

    goto/16 :goto_197

    .line 418
    :cond_109
    instance-of v6, v5, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v6, :cond_16f

    .line 419
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/Via;

    .line 420
    .local v6, "v":Lgov/nist/javax/sip/header/Via;
    iget-object v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getHop()Ljavax/sip/address/Hop;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v7

    .line 421
    .local v7, "hop":Ljavax/sip/address/Hop;
    invoke-interface {v7}, Ljavax/sip/address/Hop;->getPort()I

    move-result v8

    iput v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 422
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 425
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    iput v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 427
    :try_start_137
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 432
    invoke-virtual {v6, v0}, Lgov/nist/javax/sip/header/Via;->hasParameter(Ljava/lang/String;)Z

    move-result v8

    .line 433
    .local v8, "hasRPort":Z
    if-nez v8, :cond_153

    .line 434
    invoke-interface {v7}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 435
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15e

    .line 436
    :cond_153
    const-string v9, "received"

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 437
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v6, v9, v10}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_15e
    if-eqz v8, :cond_169

    .line 441
    iget v9, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 442
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-virtual {v6, v0, v9}, Lgov/nist/javax/sip/header/Via;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_169
    .catch Ljava/text/ParseException; {:try_start_137 .. :try_end_169} :catch_16a

    .line 446
    .end local v8    # "hasRPort":Z
    :cond_169
    goto :goto_16e

    .line 444
    :catch_16a
    move-exception v0

    .line 445
    .local v0, "ex1":Ljava/text/ParseException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 448
    .end local v0    # "ex1":Ljava/text/ParseException;
    .end local v6    # "v":Lgov/nist/javax/sip/header/Via;
    .end local v7    # "hop":Ljavax/sip/address/Hop;
    :goto_16e
    goto :goto_193

    .line 450
    :cond_16f
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    .line 451
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    .line 452
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 453
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    iput v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 454
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    .line 457
    :goto_193
    invoke-virtual {p0, v5}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 459
    return-void

    .line 403
    :cond_197
    :goto_197
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 404
    .local v0, "badmsg":Ljava/lang/String;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_218

    .line 405
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 406
    iget-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> Dropped Bad Msg From = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 407
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "To = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 408
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CallId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 409
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CSeq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 410
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Via = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 411
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 413
    :cond_218
    return-void

    .line 339
    .end local v0    # "badmsg":Ljava/lang/String;
    .end local v4    # "viaList":Lgov/nist/javax/sip/header/ViaList;
    :catch_219
    move-exception v0

    move-object v7, v0

    .line 340
    .local v7, "ex":Ljava/text/ParseException;
    iput-object v6, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 341
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_26f

    .line 342
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rejecting message !  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error message "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 345
    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 344
    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 352
    :cond_26f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v4, v0

    .line 353
    .local v4, "msgString":Ljava/lang/String;
    const-string v0, "SIP/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2dc

    const-string v0, "ACK "

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2dc

    .line 355
    invoke-virtual {p0, v4, v7}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->createBadReqRes(Ljava/lang/String;Ljava/text/ParseException;)Ljava/lang/String;

    move-result-object v6

    .line 356
    .local v6, "badReqRes":Ljava/lang/String;
    if-eqz v6, :cond_2c7

    .line 357
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a7

    .line 358
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v8, "Sending automatic 400 Bad Request:"

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 363
    :cond_2a7
    :try_start_2a7
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    .line 364
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v11

    const-string v12, "UDP"
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2b3} :catch_2bb

    .line 363
    const/4 v13, 0x0

    move-object v8, p0

    :try_start_2b5
    invoke-virtual/range {v8 .. v13}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_2b8} :catch_2b9

    goto :goto_2c6

    .line 365
    :catch_2b9
    move-exception v0

    goto :goto_2bd

    :catch_2bb
    move-exception v0

    move-object v8, p0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    :goto_2bd
    iget-object v9, v8, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2c6
    goto :goto_2dd

    .line 369
    :cond_2c7
    move-object v8, p0

    iget-object v0, v8, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 370
    iget-object v0, v8, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 371
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 372
    const-string v9, "Could not formulate automatic 400 Bad Request"

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2dd

    .line 353
    .end local v6    # "badReqRes":Ljava/lang/String;
    :cond_2dc
    move-object v8, p0

    .line 378
    :cond_2dd
    :goto_2dd
    return-void
.end method


# virtual methods
.method public greylist close()V
    .registers 1

    .line 938
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 869
    if-nez p1, :cond_4

    .line 870
    const/4 v0, 0x0

    return v0

    .line 872
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 873
    const/4 v0, 0x0

    .local v0, "retval":Z
    goto :goto_24

    .line 875
    .end local v0    # "retval":Z
    :cond_14
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageChannel;

    .line 876
    .local v0, "that":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 879
    .local v0, "retval":Z
    :goto_24
    return v0
.end method

.method public greylist getHost()Ljava/lang/String;
    .registers 2

    .line 827
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 4

    .line 883
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    const-string v2, "UDP"

    invoke-static {v0, v1, v2}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getKey(Ljava/net/InetAddress;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPeerAddress()Ljava/lang/String;
    .registers 2

    .line 854
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist getPeerInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 858
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerName()Ljava/lang/String;
    .registers 2

    .line 845
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getPeerPacketSourceAddress()Ljava/net/InetAddress;
    .registers 2

    .line 891
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourceAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public greylist getPeerPacketSourcePort()I
    .registers 2

    .line 887
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPacketSourcePort:I

    return v0
.end method

.method public greylist getPeerPort()I
    .registers 2

    .line 927
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    return v0
.end method

.method public greylist getPeerProtocol()Ljava/lang/String;
    .registers 2

    .line 931
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPort()I
    .registers 2

    .line 836
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public greylist getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .registers 2

    .line 809
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public greylist getTransport()Ljava/lang/String;
    .registers 2

    .line 818
    const-string v0, "udp"

    return-object v0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .registers 2

    .line 900
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getViaPort()I
    .registers 2

    .line 909
    iget v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    return v0
.end method

.method public greylist handleException(Ljava/text/ParseException;Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "ex"    # Ljava/text/ParseException;
    .param p2, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .param p3, "hdrClass"    # Ljava/lang/Class;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 585
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 587
    :cond_11
    if-eqz p3, :cond_68

    const-class v0, Lgov/nist/javax/sip/header/From;

    .line 588
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CSeq;

    .line 589
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/Via;

    .line 590
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/CallID;

    .line 591
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/RequestLine;

    .line 592
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-class v0, Lgov/nist/javax/sip/header/StatusLine;

    .line 593
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 594
    :cond_4b
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 595
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "BAD MESSAGE!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, p5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 598
    :cond_67
    throw p1

    .line 600
    :cond_68
    invoke-virtual {p2, p4}, Lgov/nist/javax/sip/message/SIPMessage;->addUnparsed(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public greylist isReliable()Z
    .registers 2

    .line 916
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isSecure()Z
    .registers 2

    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public greylist processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 11
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 468
    instance-of v0, p1, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_f3

    .line 469
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 474
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 476
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    .line 477
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getPeerHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myPort:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v7, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->receptionTime:J

    .line 476
    const/4 v6, 0x0

    move-object v3, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local v3, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    invoke-interface/range {v2 .. v8}, Lgov/nist/core/ServerLogger;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_47

    .line 474
    .end local v3    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_46
    move-object v3, p1

    .line 481
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v3    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_47
    iget-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 482
    invoke-virtual {p1, v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerRequestInterface;

    move-result-object p1

    .line 484
    .local p1, "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    if-nez p1, :cond_63

    .line 485
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 486
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    .line 487
    const-string v2, "Null request interface returned -- dropping request"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 491
    :cond_62
    return-void

    .line 493
    :cond_63
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    const-string v2, "/"

    if-eqz v0, :cond_95

    .line 494
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 495
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 497
    :cond_95
    :try_start_95
    invoke-interface {p1, v1, p0}, Lgov/nist/javax/sip/stack/ServerRequestInterface;->processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_de

    .line 499
    instance-of v0, p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_ac

    .line 500
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 501
    .local v0, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 502
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 504
    .end local v0    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_ab
    nop

    .line 506
    :cond_ac
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 508
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 513
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :cond_dc
    goto/16 :goto_187

    .line 499
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p1    # "sipServerRequest":Lgov/nist/javax/sip/stack/ServerRequestInterface;
    :catchall_de
    move-exception v0

    instance-of v2, p1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_f2

    .line 500
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 501
    .local v2, "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v4

    if-nez v4, :cond_f2

    .line 502
    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 505
    .end local v2    # "sipServerTx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_f2
    throw v0

    .line 515
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v3    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .local p1, "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :cond_f3
    move-object v3, p1

    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    .restart local v3    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    move-object p1, v3

    check-cast p1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 517
    .local p1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :try_start_f7
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->checkHeaders()V
    :try_end_fa
    .catch Ljava/text/ParseException; {:try_start_f7 .. :try_end_fa} :catch_188

    .line 524
    nop

    .line 525
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 526
    invoke-virtual {v0, p1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->newSIPServerResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/ServerResponseInterface;

    move-result-object v1

    .line 527
    .local v1, "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    if-eqz v1, :cond_174

    .line 529
    :try_start_103
    instance-of v0, v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_148

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 531
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 532
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_134

    .line 533
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping response message with invalid tag >>> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V
    :try_end_134
    .catchall {:try_start_103 .. :try_end_134} :catchall_15f

    .line 541
    :cond_134
    instance-of v0, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_147

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 543
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-nez v0, :cond_147

    .line 544
    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 536
    :cond_147
    return-void

    .line 539
    :cond_148
    :try_start_148
    invoke-interface {v1, p1, p0}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_15f

    .line 541
    instance-of v0, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_15e

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 543
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-nez v0, :cond_15e

    .line 544
    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 545
    :cond_15e
    goto :goto_187

    .line 541
    :catchall_15f
    move-exception v0

    instance-of v2, v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v2, :cond_173

    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 543
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v2

    if-nez v2, :cond_173

    .line 544
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 545
    :cond_173
    throw v0

    .line 549
    :cond_174
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 550
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "null sipServerResponse!"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 555
    .end local v1    # "sipServerResponse":Lgov/nist/javax/sip/stack/ServerResponseInterface;
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_187
    :goto_187
    return-void

    .line 518
    .restart local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    :catch_188
    move-exception v0

    .line 519
    .local v0, "ex":Ljava/text/ParseException;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 520
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping Badly formatted response message >>> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 523
    :cond_1ad
    return-void
.end method

.method public whitelist test-api run()V
    .registers 7

    .line 246
    const/4 v0, 0x0

    .line 250
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    if-nez v1, :cond_11

    .line 251
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    .line 252
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->myParser:Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/parser/StringMsgParser;->setParseExceptionListener(Lgov/nist/javax/sip/parser/ParseExceptionListener;)V

    .line 257
    :cond_11
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_72

    .line 258
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v1, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v1, v1, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 259
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 260
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 262
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-boolean v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v3, :cond_35

    .line 263
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_6f

    return-void

    .line 267
    :cond_35
    if-nez v0, :cond_42

    .line 268
    :try_start_37
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v3

    .line 269
    invoke-virtual {v3}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v3

    move-object v0, v3

    .line 273
    :cond_42
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 278
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 280
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v4

    .line 279
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_52} :catch_53
    .catchall {:try_start_37 .. :try_end_52} :catchall_6f

    goto :goto_5e

    .line 281
    :catch_53
    move-exception v3

    .line 282
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_54
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->isRunning:Z

    if-nez v4, :cond_5e

    .line 283
    monitor-exit v1

    return-void

    .line 284
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_5e
    :goto_5e
    goto :goto_1f

    .line 286
    :cond_5f
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v3, v3, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->messageQueue:Ljava/util/LinkedList;

    .line 287
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/DatagramPacket;

    .line 289
    .local v3, "packet":Ljava/net/DatagramPacket;
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_6f

    .line 290
    iput-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    goto :goto_74

    .line 289
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2

    .line 292
    :cond_72
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->incomingPacket:Ljava/net/DatagramPacket;

    .line 297
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    :goto_74
    :try_start_74
    invoke-direct {p0, v3}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->processIncomingDataPacket(Ljava/net/DatagramPacket;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    .line 302
    goto :goto_84

    .line 298
    :catch_78
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Error while processing incoming UDP packet"

    invoke-interface {v4, v5, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_84
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I

    if-ne v1, v2, :cond_8b

    .line 305
    return-void

    .line 307
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    :cond_8b
    goto/16 :goto_1
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .registers 18
    .param p1, "sipMessage"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v7, "An exception occured while sending message"

    const-string v8, "Sent EMPTY Message"

    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    const/16 v9, 0x10

    if-eqz v0, :cond_3a

    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 615
    instance-of v0, v2, Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v0, :cond_31

    move-object v0, v2

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    .line 616
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 620
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    goto :goto_3a

    .line 622
    :cond_31
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 629
    :cond_3a
    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 631
    .local v5, "time":J
    const/16 v10, 0x20

    :try_start_40
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 632
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getMessageProcessors()[Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    .line 631
    array-length v3, v0
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_47} :catch_147
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_137
    .catchall {:try_start_40 .. :try_end_47} :catchall_135

    const/4 v4, 0x0

    :goto_48
    if-ge v4, v3, :cond_e4

    :try_start_4a
    aget-object v11, v0, v4

    .line 633
    .local v11, "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v12

    iget-object v13, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ce

    .line 634
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/MessageProcessor;->getPort()I

    move-result v12

    iget v13, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    if-ne v12, v13, :cond_cb

    .line 635
    invoke-virtual {v11}, Lgov/nist/javax/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 637
    iget-object v12, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v13, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    .line 638
    invoke-virtual {v11, v12, v13}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v12

    .line 640
    .local v12, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    instance-of v13, v12, Lgov/nist/javax/sip/stack/RawMessageChannel;

    if-eqz v13, :cond_c5

    .line 641
    move-object v0, v12

    check-cast v0, Lgov/nist/javax/sip/stack/RawMessageChannel;

    .line 642
    invoke-interface {v0, v2}, Lgov/nist/javax/sip/stack/RawMessageChannel;->processMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 643
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_84} :catch_df
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_84} :catch_db
    .catchall {:try_start_4a .. :try_end_84} :catchall_d6

    if-eqz v0, :cond_91

    .line 644
    :try_start_86
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v3, "Self routing message"

    invoke-interface {v0, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_91} :catch_147
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_91} :catch_137
    .catchall {:try_start_86 .. :try_end_91} :catchall_135

    .line 663
    :cond_91
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 664
    iget-object v3, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .local v14, "time":J
    goto :goto_c4

    .line 663
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :cond_ad
    move-object v13, v2

    move-wide v14, v5

    .line 665
    .end local v5    # "time":J
    .restart local v14    # "time":J
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v10}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 666
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 645
    :cond_c4
    :goto_c4
    return-void

    .line 640
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :cond_c5
    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    goto :goto_d0

    .line 635
    .end local v12    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :cond_c8
    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    goto :goto_d0

    .line 634
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :cond_cb
    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    goto :goto_d0

    .line 633
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :cond_ce
    move-object v13, v2

    move-wide v14, v5

    .line 631
    .end local v5    # "time":J
    .end local v11    # "messageProcessor":Lgov/nist/javax/sip/stack/MessageProcessor;
    .restart local v14    # "time":J
    :goto_d0
    add-int/lit8 v4, v4, 0x1

    move-object v2, v13

    move-wide v5, v14

    goto/16 :goto_48

    .line 663
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :catchall_d6
    move-exception v0

    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    goto/16 :goto_14a

    .line 658
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :catch_db
    move-exception v0

    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    goto :goto_138

    .line 656
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :catch_df
    move-exception v0

    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    goto/16 :goto_148

    .line 651
    .end local v14    # "time":J
    .restart local v5    # "time":J
    :cond_e4
    move-object v13, v2

    move-wide v14, v5

    .end local v5    # "time":J
    .restart local v14    # "time":J
    :try_start_e6
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->getTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lgov/nist/javax/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 653
    .local v2, "msg":[B
    iget-object v3, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    iget-object v5, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerProtocol:Ljava/lang/String;

    instance-of v6, v13, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_f9} :catch_132
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f9} :catch_12f
    .catchall {:try_start_e6 .. :try_end_f9} :catchall_12c

    .line 663
    .end local v2    # "msg":[B
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-virtual {v13}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v0

    if-nez v0, :cond_115

    .line 664
    iget-object v3, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    move-object v2, v13

    move-wide v5, v14

    .end local v14    # "time":J
    .restart local v5    # "time":J
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_12b

    .line 663
    .end local v5    # "time":J
    .restart local v14    # "time":J
    :cond_115
    move-wide v5, v14

    .line 665
    .end local v14    # "time":J
    .restart local v5    # "time":J
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v10}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 666
    iget-object v0, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 668
    :cond_12b
    :goto_12b
    return-void

    .line 663
    .end local v5    # "time":J
    .restart local v14    # "time":J
    :catchall_12c
    move-exception v0

    move-wide v5, v14

    .end local v14    # "time":J
    .restart local v5    # "time":J
    goto :goto_14a

    .line 658
    .end local v5    # "time":J
    .restart local v14    # "time":J
    :catch_12f
    move-exception v0

    move-wide v5, v14

    .end local v14    # "time":J
    .restart local v5    # "time":J
    goto :goto_138

    .line 656
    .end local v5    # "time":J
    .restart local v14    # "time":J
    :catch_132
    move-exception v0

    move-wide v5, v14

    .end local v14    # "time":J
    .restart local v5    # "time":J
    goto :goto_148

    .line 663
    :catchall_135
    move-exception v0

    goto :goto_14a

    .line 658
    :catch_137
    move-exception v0

    .line 659
    .local v0, "ex":Ljava/lang/Exception;
    :goto_138
    :try_start_138
    iget-object v2, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v7, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 660
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "time":J
    .end local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    throw v2

    .line 656
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v5    # "time":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :catch_147
    move-exception v0

    .line 657
    .local v0, "ex":Ljava/io/IOException;
    :goto_148
    nop

    .end local v5    # "time":J
    .end local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .end local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    throw v0
    :try_end_14a
    .catchall {:try_start_138 .. :try_end_14a} :catchall_135

    .line 663
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v5    # "time":J
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/UDPMessageChannel;
    .restart local p1    # "sipMessage":Lgov/nist/javax/sip/message/SIPMessage;
    :goto_14a
    iget-object v2, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v9}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_167

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPMessage;->isNullRequest()Z

    move-result v2

    if-eqz v2, :cond_15d

    goto :goto_167

    .line 664
    :cond_15d
    iget-object v3, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerAddress:Ljava/net/InetAddress;

    iget v4, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->peerPort:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->logMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljava/net/InetAddress;IJ)V

    goto :goto_17c

    .line 665
    :cond_167
    :goto_167
    iget-object v2, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v10}, Lgov/nist/core/StackLogger;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 666
    iget-object v2, v1, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 667
    :cond_17c
    :goto_17c
    throw v0
.end method

.method protected greylist sendMessage([BLjava/net/InetAddress;ILjava/lang/String;Z)V
    .registers 15
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "peerProtocol"    # Ljava/lang/String;
    .param p5, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    const/4 v0, -0x1

    if-ne p3, v0, :cond_37

    .line 753
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 754
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":sendMessage: Dropping reply!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 757
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Receiver port not set "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_37
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_74

    .line 760
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":sendMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n messageSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 764
    :cond_74
    const-string v0, "UDP"

    invoke-virtual {p4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f1

    .line 765
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v2, p1

    invoke-direct {v0, p1, v2, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move-object v2, v0

    .line 770
    .local v2, "reply":Ljava/net/DatagramPacket;
    :try_start_83
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-eqz v0, :cond_90

    .line 771
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .local v0, "sock":Ljava/net/DatagramSocket;
    goto :goto_9a

    .line 775
    .end local v0    # "sock":Ljava/net/DatagramSocket;
    :cond_90
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNetworkLayer()Lgov/nist/core/net/NetworkLayer;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/net/NetworkLayer;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    .line 777
    .restart local v0    # "sock":Ljava/net/DatagramSocket;
    :goto_9a
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 778
    iget-object v3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 779
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    invoke-interface {v3, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 782
    :cond_d9
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 783
    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-nez v1, :cond_e5

    .line 784
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_e5} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_e5} :catch_e6

    .line 789
    .end local v0    # "sock":Ljava/net/DatagramSocket;
    :cond_e5
    goto :goto_ea

    .line 787
    :catch_e6
    move-exception v0

    .line 788
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 791
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "reply":Ljava/net/DatagramPacket;
    :goto_ea
    move-object v6, p1

    move-object v3, p2

    move v4, p3

    move v7, p5

    goto :goto_112

    .line 785
    .restart local v2    # "reply":Ljava/net/DatagramPacket;
    :catch_ef
    move-exception v0

    .line 786
    .local v0, "ex":Ljava/io/IOException;
    throw v0

    .line 793
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "reply":Ljava/net/DatagramPacket;
    :cond_f1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->ioHandler:Lgov/nist/javax/sip/stack/IOHandler;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 794
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 793
    const-string v5, "tcp"

    move-object v8, p0

    move-object v6, p1

    move-object v3, p2

    move v4, p3

    move v7, p5

    .end local p1    # "msg":[B
    .end local p2    # "peerAddress":Ljava/net/InetAddress;
    .end local p3    # "peerPort":I
    .end local p5    # "retry":Z
    .local v3, "peerAddress":Ljava/net/InetAddress;
    .local v4, "peerPort":I
    .local v6, "msg":[B
    .local v7, "retry":Z
    invoke-virtual/range {v1 .. v8}, Lgov/nist/javax/sip/stack/IOHandler;->sendBytes(Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/lang/String;[BZLgov/nist/javax/sip/stack/MessageChannel;)Ljava/net/Socket;

    move-result-object p1

    .line 796
    .local p1, "outputSocket":Ljava/net/Socket;
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 797
    .local p2, "myOutputStream":Ljava/io/OutputStream;
    const/4 p3, 0x0

    array-length p5, v6

    invoke-virtual {p2, v6, p3, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 798
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 801
    .end local p1    # "outputSocket":Ljava/net/Socket;
    .end local p2    # "myOutputStream":Ljava/io/OutputStream;
    :goto_112
    return-void
.end method

.method protected greylist sendMessage([BLjava/net/InetAddress;IZ)V
    .registers 8
    .param p1, "msg"    # [B
    .param p2, "peerAddress"    # Ljava/net/InetAddress;
    .param p3, "peerPort"    # I
    .param p4, "reConnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLogStackTraceOnMessageSend()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 686
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logStackTrace(I)V

    .line 688
    :cond_1b
    const/4 v0, -0x1

    if-ne p3, v0, :cond_52

    .line 689
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 690
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":sendMessage: Dropping reply!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 693
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Receiver port not set "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_52
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 696
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nmessageSize =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "*******************\n"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 702
    :cond_a9
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    invoke-direct {v0, p1, v1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 706
    .local v0, "reply":Ljava/net/DatagramPacket;
    const/4 v1, 0x0

    .line 708
    .local v1, "created":Z
    :try_start_b0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->udpFlag:Z

    if-eqz v2, :cond_bd

    .line 713
    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    check-cast v2, Lgov/nist/javax/sip/stack/UDPMessageProcessor;

    iget-object v2, v2, Lgov/nist/javax/sip/stack/UDPMessageProcessor;->sock:Ljava/net/DatagramSocket;

    .local v2, "sock":Ljava/net/DatagramSocket;
    goto :goto_c3

    .line 721
    .end local v2    # "sock":Ljava/net/DatagramSocket;
    :cond_bd
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 722
    .restart local v2    # "sock":Ljava/net/DatagramSocket;
    const/4 v1, 0x1

    .line 724
    :goto_c3
    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 725
    if-eqz v1, :cond_cb

    .line 726
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_cb} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cb} :catch_cc

    .line 731
    .end local v1    # "created":Z
    .end local v2    # "sock":Ljava/net/DatagramSocket;
    :cond_cb
    goto :goto_d0

    .line 729
    :catch_cc
    move-exception v1

    .line 730
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 732
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_d0
    return-void

    .line 727
    :catch_d1
    move-exception v1

    .line 728
    .local v1, "ex":Ljava/io/IOException;
    throw v1
.end method
