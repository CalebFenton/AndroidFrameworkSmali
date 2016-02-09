.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field type:I


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "password"    # [C
    .param p5, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 108
    new-instance v0, Ljava/util/Date;

    #@7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@c
    .line 138
    const/4 v0, 0x4

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@f
    .line 139
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    #@11
    .line 140
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    #@13
    .line 142
    const/16 v0, 0x14

    #@15
    new-array v4, v0, [B

    #@17
    .line 144
    .local v4, "salt":[B
    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {v0, v2, v3}, Ljava/security/SecureRandom;->setSeed(J)V

    #@20
    .line 145
    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@22
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@25
    .line 147
    iget-object v0, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    #@27
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    #@2a
    move-result v0

    #@2b
    and-int/lit16 v0, v0, 0x3ff

    #@2d
    add-int/lit16 v5, v0, 0x400

    #@2f
    .line 150
    .local v5, "iterationCount":I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    #@31
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@34
    .line 151
    .local v6, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    #@36
    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@39
    .line 153
    .local v9, "dOut":Ljava/io/DataOutputStream;
    array-length v0, v4

    #@3a
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@3d
    .line 154
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V

    #@40
    .line 155
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@43
    .line 157
    const-string/jumbo v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    #@46
    const/4 v2, 0x1

    #@47
    move-object v0, p1

    #@48
    move-object v3, p4

    #@49
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@4c
    move-result-object v8

    #@4d
    .line 158
    .local v8, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    #@4f
    invoke-direct {v7, v9, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@52
    .line 160
    .local v7, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    #@54
    .end local v9    # "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@57
    .line 162
    .restart local v9    # "dOut":Ljava/io/DataOutputStream;
    invoke-static {p1, p3, v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap1(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    #@5a
    .line 164
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    #@5d
    .line 166
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@63
    .line 136
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 108
    new-instance v0, Ljava/util/Date;

    #@7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@c
    .line 114
    const/4 v0, 0x1

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@f
    .line 115
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    #@11
    .line 116
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@13
    .line 117
    const/4 v0, 0x0

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    #@16
    .line 112
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 108
    new-instance v0, Ljava/util/Date;

    #@7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@c
    .line 175
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    #@e
    .line 176
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@10
    .line 177
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@12
    .line 178
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@14
    .line 173
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "certChain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 108
    new-instance v0, Ljava/util/Date;

    #@7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@c
    .line 188
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    #@e
    .line 189
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@10
    .line 190
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@12
    .line 191
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@14
    .line 192
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    #@16
    .line 186
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # [B
    .param p4, "certChain"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 108
    new-instance v0, Ljava/util/Date;

    #@7
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@c
    .line 125
    const/4 v0, 0x3

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@f
    .line 126
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    #@11
    .line 127
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@13
    .line 128
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    #@15
    .line 123
    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    #@2
    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .locals 21
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    array-length v1, v0

    #@5
    if-nez v1, :cond_1

    #@7
    .line 216
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@b
    instance-of v1, v1, Ljava/security/Key;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 218
    move-object/from16 v0, p0

    #@11
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@13
    return-object v1

    #@14
    .line 222
    :cond_1
    move-object/from16 v0, p0

    #@16
    iget v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@18
    const/4 v2, 0x4

    #@19
    if-ne v1, v2, :cond_3

    #@1b
    .line 224
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@21
    check-cast v1, [B

    #@23
    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@26
    .line 225
    .local v7, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    #@28
    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@2b
    .line 229
    .local v13, "dIn":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@2e
    move-result v1

    #@2f
    new-array v5, v1, [B

    #@31
    .line 231
    .local v5, "salt":[B
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    #@34
    .line 233
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@37
    move-result v6

    #@38
    .line 235
    .local v6, "iterationCount":I
    move-object/from16 v0, p0

    #@3a
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@3c
    const-string/jumbo v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    #@3f
    const/4 v3, 0x2

    #@40
    move-object/from16 v4, p1

    #@42
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@45
    move-result-object v12

    #@46
    .line 237
    .local v12, "cipher":Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/CipherInputStream;

    #@48
    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    #@4b
    .line 241
    .local v10, "cIn":Ljavax/crypto/CipherInputStream;
    :try_start_1
    move-object/from16 v0, p0

    #@4d
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@4f
    new-instance v2, Ljava/io/DataInputStream;

    #@51
    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@54
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    move-result-object v1

    #@58
    return-object v1

    #@59
    .line 244
    :catch_0
    move-exception v19

    #@5a
    .line 245
    .local v19, "x":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/io/ByteArrayInputStream;

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@60
    check-cast v1, [B

    #@62
    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@65
    .line 246
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .local v8, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_3
    new-instance v14, Ljava/io/DataInputStream;

    #@67
    invoke-direct {v14, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    #@6a
    .line 248
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .local v14, "dIn":Ljava/io/DataInputStream;
    :try_start_4
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    #@6d
    move-result v1

    #@6e
    new-array v5, v1, [B

    #@70
    .line 250
    invoke-virtual {v14, v5}, Ljava/io/DataInputStream;->readFully([B)V

    #@73
    .line 252
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    #@76
    move-result v6

    #@77
    .line 254
    move-object/from16 v0, p0

    #@79
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@7b
    const-string/jumbo v2, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    #@7e
    const/4 v3, 0x2

    #@7f
    move-object/from16 v4, p1

    #@81
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@84
    move-result-object v12

    #@85
    .line 256
    new-instance v10, Ljavax/crypto/CipherInputStream;

    #@87
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v14, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    #@8a
    .line 258
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    const/16 v17, 0x0

    #@8c
    .line 262
    .local v17, "k":Ljava/security/Key;
    :try_start_5
    move-object/from16 v0, p0

    #@8e
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@90
    new-instance v2, Ljava/io/DataInputStream;

    #@92
    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@95
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    #@98
    move-result-object v17

    #@99
    .local v17, "k":Ljava/security/Key;
    move-object v13, v14

    #@9a
    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    move-object v7, v8

    #@9b
    .line 285
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    :goto_0
    if-eqz v17, :cond_2

    #@9d
    .line 287
    :try_start_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    #@9f
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@a2
    .line 288
    .local v9, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    #@a4
    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a7
    .line 290
    .local v15, "dOut":Ljava/io/DataOutputStream;
    array-length v1, v5

    #@a8
    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@ab
    .line 291
    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write([B)V

    #@ae
    .line 292
    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@b1
    .line 294
    move-object/from16 v0, p0

    #@b3
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@b5
    const-string/jumbo v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    #@b8
    const/4 v3, 0x1

    #@b9
    move-object/from16 v4, p1

    #@bb
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@be
    move-result-object v18

    #@bf
    .line 295
    .local v18, "out":Ljavax/crypto/Cipher;
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    #@c1
    move-object/from16 v0, v18

    #@c3
    invoke-direct {v11, v15, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    #@c6
    .line 297
    .local v11, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    #@c8
    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@cb
    .line 299
    .restart local v15    # "dOut":Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    #@cd
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@cf
    move-object/from16 v0, v17

    #@d1
    invoke-static {v1, v0, v15}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap1(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    #@d4
    .line 301
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    #@d7
    .line 303
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@da
    move-result-object v1

    #@db
    move-object/from16 v0, p0

    #@dd
    iput-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    #@df
    .line 305
    return-object v17

    #@e0
    .line 265
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v9    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "cOut":Ljavax/crypto/CipherOutputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    .end local v18    # "out":Ljavax/crypto/Cipher;
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    .local v17, "k":Ljava/security/Key;
    :catch_1
    move-exception v20

    #@e1
    .line 266
    .local v20, "y":Ljava/lang/Exception;
    :try_start_7
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@e3
    move-object/from16 v0, p0

    #@e5
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    #@e7
    check-cast v1, [B

    #@e9
    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    #@ec
    .line 267
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_8
    new-instance v13, Ljava/io/DataInputStream;

    #@ee
    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    #@f1
    .line 269
    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    :try_start_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@f4
    move-result v1

    #@f5
    new-array v5, v1, [B

    #@f7
    .line 271
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    #@fa
    .line 273
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    #@fd
    move-result v6

    #@fe
    .line 275
    move-object/from16 v0, p0

    #@100
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@102
    const-string/jumbo v2, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    #@105
    const/4 v3, 0x2

    #@106
    move-object/from16 v4, p1

    #@108
    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    #@10b
    move-result-object v12

    #@10c
    .line 277
    new-instance v10, Ljavax/crypto/CipherInputStream;

    #@10e
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    #@111
    .line 279
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    move-object/from16 v0, p0

    #@113
    iget-object v1, v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    #@115
    new-instance v2, Ljava/io/DataInputStream;

    #@117
    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@11a
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-wrap0(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    #@11d
    move-result-object v17

    #@11e
    .local v17, "k":Ljava/security/Key;
    goto/16 :goto_0

    #@120
    .line 309
    .end local v20    # "y":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    #@122
    const-string/jumbo v2, "no match"

    #@125
    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@128
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    #@129
    .line 314
    .end local v5    # "salt":[B
    .end local v6    # "iterationCount":I
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v12    # "cipher":Ljavax/crypto/Cipher;
    .end local v17    # "k":Ljava/security/Key;
    .end local v19    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v16

    #@12a
    .line 315
    .local v16, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    #@12c
    const-string/jumbo v2, "no match"

    #@12f
    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@132
    throw v1

    #@133
    .line 320
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@135
    const-string/jumbo v2, "forget something!"

    #@138
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13b
    throw v1

    #@13c
    .line 314
    .restart local v5    # "salt":[B
    .restart local v6    # "iterationCount":I
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v12    # "cipher":Ljavax/crypto/Cipher;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    .restart local v19    # "x":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    #@13d
    .restart local v16    # "e":Ljava/lang/Exception;
    move-object v7, v8

    #@13e
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_1

    #@13f
    .end local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    :catch_4
    move-exception v16

    #@140
    .restart local v16    # "e":Ljava/lang/Exception;
    move-object v13, v14

    #@141
    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    move-object v7, v8

    #@142
    .end local v8    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_1

    #@143
    .end local v13    # "dIn":Ljava/io/DataInputStream;
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v10    # "cIn":Ljavax/crypto/CipherInputStream;
    .restart local v14    # "dIn":Ljava/io/DataInputStream;
    .local v17, "k":Ljava/security/Key;
    .restart local v20    # "y":Ljava/lang/Exception;
    :catch_5
    move-exception v16

    #@144
    .restart local v16    # "e":Ljava/lang/Exception;
    move-object v13, v14

    #@145
    .end local v14    # "dIn":Ljava/io/DataInputStream;
    .restart local v13    # "dIn":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 197
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    #@2
    return v0
.end method
