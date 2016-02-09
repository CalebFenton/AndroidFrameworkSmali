.class Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
.super Landroid/security/keystore/DelegatingX509Certificate;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyStoreX509Certificate"
.end annotation


# instance fields
.field private final mPrivateKeyAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "delegate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 980
    invoke-direct {p0, p2}, Landroid/security/keystore/DelegatingX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    #@3
    .line 981
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    #@5
    .line 979
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4

    #@0
    .prologue
    .line 986
    invoke-super {p0}, Landroid/security/keystore/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    .line 988
    .local v0, "original":Ljava/security/PublicKey;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    #@6
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    #@d
    move-result-object v3

    #@e
    .line 987
    invoke-static {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@11
    move-result-object v1

    #@12
    return-object v1
.end method
