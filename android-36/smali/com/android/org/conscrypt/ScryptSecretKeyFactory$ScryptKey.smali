.class Lcom/android/org/conscrypt/ScryptSecretKeyFactory$ScryptKey;
.super Ljava/lang/Object;
.source "ScryptSecretKeyFactory.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ScryptSecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScryptKey"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1c19fa634b719248L


# instance fields
.field private final blacklist key:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 2
    .param p1, "key"    # [B

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$ScryptKey;->key:[B

    .line 108
    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 113
    const-string v0, "SCRYPT"

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/org/conscrypt/ScryptSecretKeyFactory$ScryptKey;->key:[B

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 118
    const-string v0, "RAW"

    return-object v0
.end method
