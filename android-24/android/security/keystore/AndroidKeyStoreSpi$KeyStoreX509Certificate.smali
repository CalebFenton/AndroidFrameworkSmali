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

.field private final mPrivateKeyUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "privateKeyUid"    # I
    .param p3, "delegate"    # Ljava/security/cert/X509Certificate;

    #@0
    .prologue
    .line 1000
    invoke-direct {p0, p3}, Landroid/security/keystore/DelegatingX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    #@3
    .line 1001
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    #@5
    .line 1002
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyUid:I

    #@7
    .line 999
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5

    #@0
    .prologue
    .line 1007
    invoke-super {p0}, Landroid/security/keystore/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@3
    move-result-object v0

    #@4
    .line 1009
    .local v0, "original":Ljava/security/PublicKey;
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    #@6
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyUid:I

    #@8
    .line 1010
    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    #@f
    move-result-object v4

    #@10
    .line 1008
    invoke-static {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method
