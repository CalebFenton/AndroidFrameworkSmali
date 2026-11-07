.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# instance fields
.field blacklist alias:Ljava/lang/String;

.field blacklist certChain:[Ljava/security/cert/Certificate;

.field blacklist date:Ljava/util/Date;

.field blacklist obj:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field blacklist type:I


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 13

    .line 148
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    const/4 v0, 0x4

    .line 149
    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 150
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 151
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    const/16 p2, 0x14

    .line 153
    new-array v4, p2, [B

    .line 155
    iget-object p5, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 157
    iget-object p5, p1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5}, Ljava/security/SecureRandom;->nextInt()I

    move-result p5

    and-int/lit16 p5, p5, 0x3ff

    add-int/lit16 v5, p5, 0x400

    .line 160
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, p5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 165
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 168
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, v6, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 170
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    invoke-static {v0, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mencodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 174
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 176
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 4

    .line 124
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x1

    .line 125
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 126
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .registers 6

    .line 184
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 187
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 188
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .registers 7

    .line 197
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 200
    iput p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 201
    iput-object p5, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 202
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5

    .line 135
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x3

    .line 136
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 137
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 139
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method blacklist getAlias()Ljava/lang/String;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 1

    .line 341
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object p0
.end method

.method blacklist getDate()Ljava/util/Date;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    return-object p0
.end method

.method blacklist getObject()Ljava/lang/Object;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method blacklist getObject([C)Ljava/lang/Object;
    .registers 11

    .line 224
    const-string v0, "no match"

    if-eqz p1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_e

    .line 226
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v2, v1, Ljava/security/Key;

    if-eqz v2, :cond_e

    return-object v1

    .line 232
    :cond_e
    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f6

    .line 234
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    :try_start_21
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v7, v1, [B

    .line 241
    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 243
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 245
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 247
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v2, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3d} :catch_f0

    .line 251
    :try_start_3d
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_49

    return-object p0

    .line 255
    :catch_49
    :try_start_49
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 256
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v7, p1, [B

    .line 260
    invoke-virtual {v1, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 262
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 264
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 266
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v1, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_72} :catch_f0

    .line 272
    :try_start_72
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p1
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7d} :catch_7e

    goto :goto_b2

    .line 276
    :catch_7e
    :try_start_7e
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 277
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 279
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v7, p1, [B

    .line 281
    invoke-virtual {v1, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 283
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 285
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 287
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v1, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 289
    iget-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mdecodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p1

    :goto_b2
    if-eqz p1, :cond_ea

    .line 297
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 298
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 300
    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 302
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 304
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 305
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 307
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 309
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-static {v3, p1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->-$$Nest$mencodeKey(Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 311
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 313
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object p1

    .line 319
    :cond_ea
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p0, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_f0} :catch_f0

    .line 325
    :catch_f0
    new-instance p0, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p0, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :cond_f6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "forget something!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist getType()I
    .registers 1

    .line 207
    iget p0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return p0
.end method
