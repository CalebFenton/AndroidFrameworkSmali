.class public Lsun/net/TransferProtocolClient;
.super Lsun/net/NetworkClient;
.source "TransferProtocolClient.java"


# static fields
.field static final debug:Z


# instance fields
.field protected lastReplyCode:I

.field protected serverResponse:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    #@3
    .line 47
    new-instance v0, Ljava/util/Vector;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@9
    iput-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    #@b
    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lsun/net/NetworkClient;-><init>(Ljava/lang/String;I)V

    #@3
    .line 47
    new-instance v0, Ljava/util/Vector;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    #@9
    iput-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    #@b
    .line 135
    return-void
.end method


# virtual methods
.method public getResponseString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method

.method public getResponseStrings()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method public readServerResponse()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v13, 0xa

    #@2
    const/4 v12, 0x4

    #@3
    const/4 v11, -0x1

    #@4
    const/4 v10, 0x3

    #@5
    const/4 v9, 0x0

    #@6
    .line 58
    new-instance v5, Ljava/lang/StringBuffer;

    #@8
    const/16 v7, 0x20

    #@a
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    #@d
    .line 60
    .local v5, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    #@e
    .line 64
    .local v2, "continuingCode":I
    iget-object v7, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    #@10
    invoke-virtual {v7, v9}, Ljava/util/Vector;->setSize(I)V

    #@13
    .line 66
    :cond_0
    :goto_0
    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@15
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    #@18
    move-result v0

    #@19
    .local v0, "c":I
    if-eq v0, v11, :cond_2

    #@1b
    .line 67
    const/16 v7, 0xd

    #@1d
    if-ne v0, v7, :cond_1

    #@1f
    .line 68
    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@21
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    #@24
    move-result v0

    #@25
    if-eq v0, v13, :cond_1

    #@27
    .line 69
    const/16 v7, 0xd

    #@29
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2c
    .line 71
    :cond_1
    int-to-char v7, v0

    #@2d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@30
    .line 72
    if-ne v0, v13, :cond_0

    #@32
    .line 75
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    .line 76
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@39
    .line 81
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3c
    move-result v7

    #@3d
    if-nez v7, :cond_5

    #@3f
    .line 82
    const/4 v1, -0x1

    #@40
    .line 94
    .local v1, "code":I
    :goto_1
    iget-object v7, p0, Lsun/net/TransferProtocolClient;->serverResponse:Ljava/util/Vector;

    #@42
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@45
    .line 95
    if-eq v2, v11, :cond_6

    #@47
    .line 97
    if-ne v1, v2, :cond_0

    #@49
    .line 98
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@4c
    move-result v7

    #@4d
    if-lt v7, v12, :cond_3

    #@4f
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    #@52
    move-result v7

    #@53
    const/16 v8, 0x2d

    #@55
    if-eq v7, v8, :cond_0

    #@57
    .line 102
    :cond_3
    const/4 v2, -0x1

    #@58
    .line 113
    :cond_4
    iput v1, p0, Lsun/net/TransferProtocolClient;->lastReplyCode:I

    #@5a
    return v1

    #@5b
    .line 85
    .end local v1    # "code":I
    :cond_5
    const/4 v7, 0x0

    #@5c
    const/4 v8, 0x3

    #@5d
    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@60
    move-result-object v7

    #@61
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@64
    move-result v1

    #@65
    .restart local v1    # "code":I
    goto :goto_1

    #@66
    .line 86
    .end local v1    # "code":I
    :catch_0
    move-exception v3

    #@67
    .line 87
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    #@68
    .restart local v1    # "code":I
    goto :goto_1

    #@69
    .line 105
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@6c
    move-result v7

    #@6d
    if-lt v7, v12, :cond_4

    #@6f
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    #@72
    move-result v7

    #@73
    const/16 v8, 0x2d

    #@75
    if-ne v7, v8, :cond_4

    #@77
    .line 106
    move v2, v1

    #@78
    .line 107
    goto :goto_0

    #@79
    .line 88
    .end local v1    # "code":I
    :catch_1
    move-exception v4

    #@7a
    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_0
.end method

.method public sendServer(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5
    .line 117
    return-void
.end method
