.class public final Landroid/nearby/PrivateCredential$Builder;
.super Ljava/lang/Object;
.source "PrivateCredential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PrivateCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAuthenticityKey:[B

.field private final blacklist mCredentialElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nearby/CredentialElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceName:Ljava/lang/String;

.field private blacklist mIdentityType:I

.field private final blacklist mMetadataEncryptionKey:[B

.field private final blacklist mSecretId:[B


# direct methods
.method public constructor whitelist <init>([B[B[BLjava/lang/String;)V
    .registers 9
    .param p1, "secretId"    # [B
    .param p2, "authenticityKey"    # [B
    .param p3, "metadataEncryptionKey"    # [B
    .param p4, "deviceName"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    array-length v2, p1

    if-lez v2, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const-string v3, "secret id cannot be empty"

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 119
    if-eqz p2, :cond_19

    array-length v2, p2

    if-lez v2, :cond_19

    move v2, v0

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    const-string v3, "authenticity key cannot be empty"

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 121
    if-eqz p3, :cond_26

    array-length v2, p3

    if-lez v2, :cond_26

    move v2, v0

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    const-string v3, "metadataEncryptionKey cannot be empty"

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 124
    if-eqz p4, :cond_35

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    const-string v1, "deviceName cannot be empty"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 126
    iput-object p1, p0, Landroid/nearby/PrivateCredential$Builder;->mSecretId:[B

    .line 127
    iput-object p2, p0, Landroid/nearby/PrivateCredential$Builder;->mAuthenticityKey:[B

    .line 128
    iput-object p3, p0, Landroid/nearby/PrivateCredential$Builder;->mMetadataEncryptionKey:[B

    .line 129
    iput-object p4, p0, Landroid/nearby/PrivateCredential$Builder;->mDeviceName:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PrivateCredential$Builder;->mCredentialElements:Ljava/util/List;

    .line 131
    return-void
.end method


# virtual methods
.method public whitelist addCredentialElement(Landroid/nearby/CredentialElement;)Landroid/nearby/PrivateCredential$Builder;
    .registers 3
    .param p1, "credentialElement"    # Landroid/nearby/CredentialElement;

    .line 147
    iget-object v0, p0, Landroid/nearby/PrivateCredential$Builder;->mCredentialElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-object p0
.end method

.method public whitelist build()Landroid/nearby/PrivateCredential;
    .registers 9

    .line 156
    new-instance v0, Landroid/nearby/PrivateCredential;

    iget v1, p0, Landroid/nearby/PrivateCredential$Builder;->mIdentityType:I

    iget-object v2, p0, Landroid/nearby/PrivateCredential$Builder;->mSecretId:[B

    iget-object v3, p0, Landroid/nearby/PrivateCredential$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v4, p0, Landroid/nearby/PrivateCredential$Builder;->mAuthenticityKey:[B

    iget-object v5, p0, Landroid/nearby/PrivateCredential$Builder;->mCredentialElements:Ljava/util/List;

    iget-object v6, p0, Landroid/nearby/PrivateCredential$Builder;->mMetadataEncryptionKey:[B

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/nearby/PrivateCredential;-><init>(I[BLjava/lang/String;[BLjava/util/List;[BLandroid/nearby/PrivateCredential-IA;)V

    return-object v0
.end method

.method public whitelist setIdentityType(I)Landroid/nearby/PrivateCredential$Builder;
    .registers 2
    .param p1, "identityType"    # I

    .line 138
    iput p1, p0, Landroid/nearby/PrivateCredential$Builder;->mIdentityType:I

    .line 139
    return-object p0
.end method
