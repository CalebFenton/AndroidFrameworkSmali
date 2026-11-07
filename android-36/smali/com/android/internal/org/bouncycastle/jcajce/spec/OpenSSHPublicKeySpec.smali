.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "OpenSSHPublicKeySpec.java"


# static fields
.field private static final blacklist allowedTypes:[Ljava/lang/String;


# instance fields
.field private final blacklist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    const-string/jumbo v0, "ssh-ed25519"

    const-string/jumbo v1, "ssh-dss"

    const-string/jumbo v2, "ssh-rsa"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 7
    .param p1, "encodedKey"    # [B

    .line 30
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "pos":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "pos":I
    .local v1, "pos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 37
    .local v0, "i":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 38
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 39
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .restart local v2    # "pos":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 41
    add-int v1, v2, v0

    array-length v3, p1

    if-ge v1, v3, :cond_73

    .line 46
    add-int v1, v2, v0

    invoke-static {p1, v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    const-string v3, "ecdsa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 50
    return-void

    .line 53
    :cond_41
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_42
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_57

    .line 55
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 57
    return-void

    .line 53
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 61
    .end local v1    # "t":I
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognised public key type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid public key blob: type field longer than blob"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "OpenSSH"

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    return-object v0
.end method
