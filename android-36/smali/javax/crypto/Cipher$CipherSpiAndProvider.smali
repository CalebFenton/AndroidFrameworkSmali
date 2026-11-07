.class Ljavax/crypto/Cipher$CipherSpiAndProvider;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CipherSpiAndProvider"
.end annotation


# instance fields
.field greylist-max-o cipherSpi:Ljavax/crypto/CipherSpi;

.field greylist-max-o provider:Ljava/security/Provider;


# direct methods
.method constructor greylist-max-o <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    .registers 3
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .line 2949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2950
    iput-object p1, p0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    .line 2951
    iput-object p2, p0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    .line 2952
    return-void
.end method
