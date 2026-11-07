.class public interface abstract Lcom/android/org/conscrypt/HpkeSpi;
.super Ljava/lang/Object;
.source "HpkeSpi.java"


# static fields
.field public static final blacklist DEFAULT_PSK:[B

.field public static final blacklist DEFAULT_PSK_ID:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    .line 16
    sget-object v0, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK:[B

    sput-object v0, Lcom/android/org/conscrypt/HpkeSpi;->DEFAULT_PSK_ID:[B

    return-void
.end method


# virtual methods
.method public abstract blacklist engineExport(I[B)[B
.end method

.method public abstract blacklist engineInitRecipient([BLjava/security/PrivateKey;[BLjava/security/PublicKey;[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract blacklist engineInitSender(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract blacklist engineInitSenderForTesting(Ljava/security/PublicKey;[BLjava/security/PrivateKey;[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public abstract blacklist engineOpen([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract blacklist engineSeal([B[B)[B
.end method

.method public abstract blacklist getEncapsulated()[B
.end method
