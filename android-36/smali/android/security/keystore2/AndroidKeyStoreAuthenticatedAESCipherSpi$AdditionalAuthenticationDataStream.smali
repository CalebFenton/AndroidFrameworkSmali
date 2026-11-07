.class Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final blacklist mOperation:Landroid/security/KeyStoreOperation;


# direct methods
.method private constructor blacklist <init>(Landroid/security/KeyStoreOperation;)V
    .registers 2
    .param p1, "operation"    # Landroid/security/KeyStoreOperation;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    .line 431
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    return-void
.end method


# virtual methods
.method public blacklist finish([B[B)[B
    .registers 4
    .param p1, "input"    # [B
    .param p2, "signature"    # [B

    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist update([B)[B
    .registers 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0, p1}, Landroid/security/KeyStoreOperation;->updateAad([B)V

    .line 436
    const/4 v0, 0x0

    return-object v0
.end method
