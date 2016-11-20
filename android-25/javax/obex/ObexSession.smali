.class public Ljavax/obex/ObexSession;
.super Ljava/lang/Object;
.source "ObexSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ObexSession"

.field private static final V:Z


# instance fields
.field protected mAuthenticator:Ljavax/obex/Authenticator;

.field protected mChallengeDigest:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public handleAuthChall(Ljavax/obex/HeaderSet;)Z
    .locals 22
    .param p1, "header"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    #@4
    move-object/from16 v17, v0

    #@6
    if-nez v17, :cond_0

    #@8
    .line 69
    const/16 v17, 0x0

    #@a
    return v17

    #@b
    .line 81
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@f
    move-object/from16 v17, v0

    #@11
    const/16 v18, 0x0

    #@13
    move/from16 v0, v18

    #@15
    move-object/from16 v1, v17

    #@17
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@1a
    move-result-object v5

    #@1b
    .line 82
    .local v5, "challenge":[B
    move-object/from16 v0, p1

    #@1d
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@1f
    move-object/from16 v17, v0

    #@21
    const/16 v18, 0x1

    #@23
    move/from16 v0, v18

    #@25
    move-object/from16 v1, v17

    #@27
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@2a
    move-result-object v11

    #@2b
    .line 83
    .local v11, "option":[B
    move-object/from16 v0, p1

    #@2d
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@2f
    move-object/from16 v17, v0

    #@31
    const/16 v18, 0x2

    #@33
    move/from16 v0, v18

    #@35
    move-object/from16 v1, v17

    #@37
    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@3a
    move-result-object v6

    #@3b
    .line 85
    .local v6, "description":[B
    const/4 v13, 0x0

    #@3c
    .line 86
    .local v13, "realm":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@3e
    .line 87
    array-length v0, v6

    #@3f
    move/from16 v17, v0

    #@41
    add-int/lit8 v17, v17, -0x1

    #@43
    move/from16 v0, v17

    #@45
    new-array v14, v0, [B

    #@47
    .line 88
    .local v14, "realmString":[B
    array-length v0, v14

    #@48
    move/from16 v17, v0

    #@4a
    const/16 v18, 0x1

    #@4c
    const/16 v19, 0x0

    #@4e
    move/from16 v0, v18

    #@50
    move/from16 v1, v19

    #@52
    move/from16 v2, v17

    #@54
    invoke-static {v6, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@57
    .line 90
    const/16 v17, 0x0

    #@59
    aget-byte v17, v6, v17

    #@5b
    move/from16 v0, v17

    #@5d
    and-int/lit16 v0, v0, 0xff

    #@5f
    move/from16 v17, v0

    #@61
    sparse-switch v17, :sswitch_data_0

    #@64
    .line 110
    new-instance v17, Ljava/io/IOException;

    #@66
    const-string/jumbo v18, "Unsupported Encoding Scheme"

    #@69
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v17

    #@6d
    .line 98
    :sswitch_0
    :try_start_0
    new-instance v13, Ljava/lang/String;

    #@6f
    .end local v13    # "realm":Ljava/lang/String;
    const-string/jumbo v17, "ISO8859_1"

    #@72
    move-object/from16 v0, v17

    #@74
    invoke-direct {v13, v14, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@77
    .line 114
    .end local v14    # "realmString":[B
    :cond_1
    :goto_0
    const/4 v10, 0x0

    #@78
    .line 115
    .local v10, "isUserIDRequired":Z
    const/4 v9, 0x1

    #@79
    .line 116
    .local v9, "isFullAccess":Z
    if-eqz v11, :cond_3

    #@7b
    .line 117
    const/16 v17, 0x0

    #@7d
    aget-byte v17, v11, v17

    #@7f
    and-int/lit8 v17, v17, 0x1

    #@81
    if-eqz v17, :cond_2

    #@83
    .line 118
    const/4 v10, 0x1

    #@84
    .line 121
    :cond_2
    const/16 v17, 0x0

    #@86
    aget-byte v17, v11, v17

    #@88
    and-int/lit8 v17, v17, 0x2

    #@8a
    if-eqz v17, :cond_3

    #@8c
    .line 122
    const/4 v9, 0x0

    #@8d
    .line 126
    :cond_3
    const/4 v15, 0x0

    #@8e
    .line 127
    .local v15, "result":Ljavax/obex/PasswordAuthentication;
    const/16 v17, 0x0

    #@90
    move-object/from16 v0, v17

    #@92
    move-object/from16 v1, p1

    #@94
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@96
    .line 130
    :try_start_1
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    #@9a
    move-object/from16 v17, v0

    #@9c
    move-object/from16 v0, v17

    #@9e
    invoke-interface {v0, v13, v10, v9}, Ljavax/obex/Authenticator;->onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@a1
    move-result-object v15

    #@a2
    .line 140
    .local v15, "result":Ljavax/obex/PasswordAuthentication;
    if-nez v15, :cond_4

    #@a4
    .line 141
    const/16 v17, 0x0

    #@a6
    return v17

    #@a7
    .line 99
    .end local v9    # "isFullAccess":Z
    .end local v10    # "isUserIDRequired":Z
    .end local v15    # "result":Ljavax/obex/PasswordAuthentication;
    .restart local v14    # "realmString":[B
    :catch_0
    move-exception v8

    #@a8
    .line 100
    .local v8, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/io/IOException;

    #@aa
    const-string/jumbo v18, "Unsupported Encoding Scheme"

    #@ad
    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v17

    #@b1
    .line 106
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v13    # "realm":Ljava/lang/String;
    :sswitch_1
    const/16 v17, 0x0

    #@b3
    move/from16 v0, v17

    #@b5
    invoke-static {v14, v0}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    #@b8
    move-result-object v13

    #@b9
    .local v13, "realm":Ljava/lang/String;
    goto :goto_0

    #@ba
    .line 132
    .end local v13    # "realm":Ljava/lang/String;
    .end local v14    # "realmString":[B
    .restart local v9    # "isFullAccess":Z
    .restart local v10    # "isUserIDRequired":Z
    .local v15, "result":Ljavax/obex/PasswordAuthentication;
    :catch_1
    move-exception v8

    #@bb
    .line 134
    .restart local v8    # "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    #@bd
    return v17

    #@be
    .line 144
    .end local v8    # "e":Ljava/lang/Exception;
    .local v15, "result":Ljavax/obex/PasswordAuthentication;
    :cond_4
    invoke-virtual {v15}, Ljavax/obex/PasswordAuthentication;->getPassword()[B

    #@c1
    move-result-object v12

    #@c2
    .line 145
    .local v12, "password":[B
    if-nez v12, :cond_5

    #@c4
    .line 146
    const/16 v17, 0x0

    #@c6
    return v17

    #@c7
    .line 149
    :cond_5
    invoke-virtual {v15}, Ljavax/obex/PasswordAuthentication;->getUserName()[B

    #@ca
    move-result-object v16

    #@cb
    .line 159
    .local v16, "userName":[B
    if-eqz v16, :cond_6

    #@cd
    .line 160
    move-object/from16 v0, v16

    #@cf
    array-length v0, v0

    #@d0
    move/from16 v17, v0

    #@d2
    add-int/lit8 v17, v17, 0x26

    #@d4
    move/from16 v0, v17

    #@d6
    new-array v0, v0, [B

    #@d8
    move-object/from16 v17, v0

    #@da
    move-object/from16 v0, v17

    #@dc
    move-object/from16 v1, p1

    #@de
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@e0
    .line 161
    move-object/from16 v0, p1

    #@e2
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@e4
    move-object/from16 v17, v0

    #@e6
    const/16 v18, 0x1

    #@e8
    const/16 v19, 0x24

    #@ea
    aput-byte v18, v17, v19

    #@ec
    .line 162
    move-object/from16 v0, p1

    #@ee
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@f0
    move-object/from16 v17, v0

    #@f2
    move-object/from16 v0, v16

    #@f4
    array-length v0, v0

    #@f5
    move/from16 v18, v0

    #@f7
    move/from16 v0, v18

    #@f9
    int-to-byte v0, v0

    #@fa
    move/from16 v18, v0

    #@fc
    const/16 v19, 0x25

    #@fe
    aput-byte v18, v17, v19

    #@100
    .line 163
    move-object/from16 v0, p1

    #@102
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@104
    move-object/from16 v17, v0

    #@106
    move-object/from16 v0, v16

    #@108
    array-length v0, v0

    #@109
    move/from16 v18, v0

    #@10b
    const/16 v19, 0x0

    #@10d
    const/16 v20, 0x26

    #@10f
    move-object/from16 v0, v16

    #@111
    move/from16 v1, v19

    #@113
    move-object/from16 v2, v17

    #@115
    move/from16 v3, v20

    #@117
    move/from16 v4, v18

    #@119
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11c
    .line 169
    :goto_1
    array-length v0, v5

    #@11d
    move/from16 v17, v0

    #@11f
    array-length v0, v12

    #@120
    move/from16 v18, v0

    #@122
    add-int v17, v17, v18

    #@124
    add-int/lit8 v17, v17, 0x1

    #@126
    move/from16 v0, v17

    #@128
    new-array v7, v0, [B

    #@12a
    .line 170
    .local v7, "digest":[B
    array-length v0, v5

    #@12b
    move/from16 v17, v0

    #@12d
    const/16 v18, 0x0

    #@12f
    const/16 v19, 0x0

    #@131
    move/from16 v0, v18

    #@133
    move/from16 v1, v19

    #@135
    move/from16 v2, v17

    #@137
    invoke-static {v5, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13a
    .line 172
    array-length v0, v5

    #@13b
    move/from16 v17, v0

    #@13d
    const/16 v18, 0x3a

    #@13f
    aput-byte v18, v7, v17

    #@141
    .line 173
    array-length v0, v5

    #@142
    move/from16 v17, v0

    #@144
    add-int/lit8 v17, v17, 0x1

    #@146
    array-length v0, v12

    #@147
    move/from16 v18, v0

    #@149
    const/16 v19, 0x0

    #@14b
    move/from16 v0, v19

    #@14d
    move/from16 v1, v17

    #@14f
    move/from16 v2, v18

    #@151
    invoke-static {v12, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@154
    .line 176
    move-object/from16 v0, p1

    #@156
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@158
    move-object/from16 v17, v0

    #@15a
    const/16 v18, 0x0

    #@15c
    const/16 v19, 0x0

    #@15e
    aput-byte v18, v17, v19

    #@160
    .line 177
    move-object/from16 v0, p1

    #@162
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@164
    move-object/from16 v17, v0

    #@166
    const/16 v18, 0x10

    #@168
    const/16 v19, 0x1

    #@16a
    aput-byte v18, v17, v19

    #@16c
    .line 179
    invoke-static {v7}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    #@16f
    move-result-object v17

    #@170
    move-object/from16 v0, p1

    #@172
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@174
    move-object/from16 v18, v0

    #@176
    const/16 v19, 0x0

    #@178
    const/16 v20, 0x2

    #@17a
    const/16 v21, 0x10

    #@17c
    move-object/from16 v0, v17

    #@17e
    move/from16 v1, v19

    #@180
    move-object/from16 v2, v18

    #@182
    move/from16 v3, v20

    #@184
    move/from16 v4, v21

    #@186
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@189
    .line 182
    move-object/from16 v0, p1

    #@18b
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@18d
    move-object/from16 v17, v0

    #@18f
    const/16 v18, 0x2

    #@191
    const/16 v19, 0x12

    #@193
    aput-byte v18, v17, v19

    #@195
    .line 183
    move-object/from16 v0, p1

    #@197
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@199
    move-object/from16 v17, v0

    #@19b
    const/16 v18, 0x10

    #@19d
    const/16 v19, 0x13

    #@19f
    aput-byte v18, v17, v19

    #@1a1
    .line 184
    move-object/from16 v0, p1

    #@1a3
    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1a5
    move-object/from16 v17, v0

    #@1a7
    const/16 v18, 0x0

    #@1a9
    const/16 v19, 0x14

    #@1ab
    const/16 v20, 0x10

    #@1ad
    move/from16 v0, v18

    #@1af
    move-object/from16 v1, v17

    #@1b1
    move/from16 v2, v19

    #@1b3
    move/from16 v3, v20

    #@1b5
    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b8
    .line 186
    const/16 v17, 0x1

    #@1ba
    return v17

    #@1bb
    .line 165
    .end local v7    # "digest":[B
    :cond_6
    const/16 v17, 0x24

    #@1bd
    move/from16 v0, v17

    #@1bf
    new-array v0, v0, [B

    #@1c1
    move-object/from16 v17, v0

    #@1c3
    move-object/from16 v0, v17

    #@1c5
    move-object/from16 v1, p1

    #@1c7
    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    #@1c9
    goto/16 :goto_1

    #@1cb
    .line 90
    nop

    #@1cc
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public handleAuthResp([B)Z
    .locals 10
    .param p1, "authResp"    # [B

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/16 v8, 0x10

    #@3
    const/4 v7, 0x0

    #@4
    .line 197
    iget-object v5, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    #@6
    if-nez v5, :cond_0

    #@8
    .line 198
    return v7

    #@9
    .line 201
    :cond_0
    iget-object v5, p0, Ljavax/obex/ObexSession;->mAuthenticator:Ljavax/obex/Authenticator;

    #@b
    invoke-static {v9, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@e
    move-result-object v6

    #@f
    invoke-interface {v5, v6}, Ljavax/obex/Authenticator;->onAuthenticationResponse([B)[B

    #@12
    move-result-object v1

    #@13
    .line 203
    .local v1, "correctPassword":[B
    if-nez v1, :cond_1

    #@15
    .line 204
    return v7

    #@16
    .line 207
    :cond_1
    array-length v5, v1

    #@17
    add-int/lit8 v5, v5, 0x10

    #@19
    new-array v4, v5, [B

    #@1b
    .line 209
    .local v4, "temp":[B
    iget-object v5, p0, Ljavax/obex/ObexSession;->mChallengeDigest:[B

    #@1d
    invoke-static {v5, v7, v4, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@20
    .line 210
    array-length v5, v1

    #@21
    invoke-static {v1, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 212
    invoke-static {v4}, Ljavax/obex/ObexHelper;->computeMd5Hash([B)[B

    #@27
    move-result-object v2

    #@28
    .line 213
    .local v2, "correctResponse":[B
    invoke-static {v7, p1}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    #@2b
    move-result-object v0

    #@2c
    .line 216
    .local v0, "actualResponse":[B
    const/4 v3, 0x0

    #@2d
    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_3

    #@2f
    .line 217
    aget-byte v5, v2, v3

    #@31
    aget-byte v6, v0, v3

    #@33
    if-eq v5, v6, :cond_2

    #@35
    .line 218
    return v7

    #@36
    .line 216
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 222
    :cond_3
    return v9
.end method
