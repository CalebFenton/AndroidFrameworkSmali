.class Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field blacklist alias:Ljava/lang/String;

.field blacklist certChain:[Ljava/security/cert/Certificate;

.field blacklist date:Ljava/util/Date;

.field blacklist obj:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field blacklist type:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 14
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "password"    # [C
    .param p5, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 149
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 150
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 151
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 153
    const/16 v0, 0x14

    new-array v5, v0, [B

    .line 155
    .local v5, "salt":[B
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 157
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v6, v0, 0x400

    .line 160
    .local v6, "iterationCount":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v1

    .line 163
    .local v7, "dOut":Ljava/io/DataOutputStream;
    array-length v1, v5

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 165
    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x1

    move-object v1, p1

    move-object v4, p4

    .end local p4    # "password":[C
    .local v4, "password":[C
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 168
    .local p1, "cipher":Ljavax/crypto/Cipher;
    new-instance p4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p4, v7, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 170
    .local p4, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    .end local v7    # "dOut":Ljava/io/DataOutputStream;
    .local v2, "dOut":Ljava/io/DataOutputStream;
    invoke-static {v1, p3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mencodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 176
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 177
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 4
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 125
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 126
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 128
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .registers 6
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 185
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 187
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 188
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 189
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .registers 7
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "type"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 198
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 200
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 201
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 202
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 203
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "obj"    # [B
    .param p4, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 136
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 137
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 139
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 140
    return-void
.end method


# virtual methods
.method blacklist getAlias()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method blacklist getDate()Ljava/util/Date;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method blacklist getObject()Ljava/lang/Object;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getObject([C)Ljava/lang/Object;
    .registers 18
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 224
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    const-string v8, "no match"

    if-eqz v5, :cond_b

    array-length v0, v5

    if-nez v0, :cond_14

    .line 226
    :cond_b
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Key;

    if-eqz v0, :cond_14

    .line 228
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0

    .line 232
    :cond_14
    iget v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_119

    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v9, v0

    .line 235
    .local v9, "bIn":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 239
    .local v10, "dIn":Ljava/io/DataInputStream;
    :try_start_29
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v6, v0, [B

    .line 241
    .local v6, "salt":[B
    invoke-virtual {v10, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 243
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 245
    .local v7, "iterationCount":I
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v11, v0

    .line 247
    .local v11, "cipher":Ljavax/crypto/Cipher;
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v10, v11}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_45} :catch_112

    move-object v12, v0

    .line 251
    .local v12, "cIn":Ljavax/crypto/CipherInputStream;
    :try_start_46
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_52

    return-object v0

    .line 253
    :catch_52
    move-exception v0

    move-object v13, v0

    .line 255
    .local v13, "x":Ljava/lang/Exception;
    :try_start_54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v9, v0

    .line 256
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 258
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    move-object v6, v0

    .line 260
    invoke-virtual {v10, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 262
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v7, v0

    .line 264
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x2

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v11, v0

    .line 266
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, v10, v11}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_84} :catch_112

    move-object v12, v0

    .line 268
    const/4 v14, 0x0

    .line 272
    .local v14, "k":Ljava/security/Key;
    :try_start_86
    iget-object v0, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_91} :catch_92

    .line 290
    .end local v14    # "k":Ljava/security/Key;
    .local v0, "k":Ljava/security/Key;
    goto :goto_d0

    .line 274
    .end local v0    # "k":Ljava/security/Key;
    .restart local v14    # "k":Ljava/security/Key;
    :catch_92
    move-exception v0

    .line 276
    .local v0, "y":Ljava/lang/Exception;
    :try_start_93
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v9, v2

    .line 277
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v2

    .line 279
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    move-object v6, v2

    .line 281
    invoke-virtual {v10, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 283
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v7, v2

    .line 285
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x2

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    move-object v11, v2

    .line 287
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v10, v11}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v12, v2

    .line 289
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2

    move-object v0, v2

    .line 295
    .end local v14    # "k":Ljava/security/Key;
    .local v0, "k":Ljava/security/Key;
    :goto_d0
    if-eqz v0, :cond_10c

    .line 297
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v14, v2

    .line 298
    .local v14, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v15, v2

    .line 300
    .local v15, "dOut":Ljava/io/DataOutputStream;
    array-length v2, v6

    invoke-virtual {v15, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 302
    invoke-virtual {v15, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v3, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v4, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 305
    .local v2, "out":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v15, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 307
    .local v3, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    .end local v15    # "dOut":Ljava/io/DataOutputStream;
    .local v4, "dOut":Ljava/io/DataOutputStream;
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-static {v5, v0, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mencodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 311
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 313
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 315
    return-object v0

    .line 319
    .end local v2    # "out":Ljavax/crypto/Cipher;
    .end local v3    # "cOut":Ljavax/crypto/CipherOutputStream;
    .end local v4    # "dOut":Ljava/io/DataOutputStream;
    .end local v14    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_10c
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v2, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .end local v9    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v10    # "dIn":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .end local p1    # "password":[C
    throw v2
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_112} :catch_112

    .line 323
    .end local v0    # "k":Ljava/security/Key;
    .end local v6    # "salt":[B
    .end local v7    # "iterationCount":I
    .end local v11    # "cipher":Ljavax/crypto/Cipher;
    .end local v12    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v13    # "x":Ljava/lang/Exception;
    .restart local v9    # "bIn":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "dIn":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .restart local p1    # "password":[C
    :catch_112
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v2, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v10    # "dIn":Ljava/io/DataInputStream;
    :cond_119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "forget something!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getType()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return v0
.end method
