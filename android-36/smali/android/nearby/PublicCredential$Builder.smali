.class public final Landroid/nearby/PublicCredential$Builder;
.super Ljava/lang/Object;
.source "PublicCredential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PublicCredential;
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

.field private final blacklist mEncryptedMetadata:[B

.field private final blacklist mEncryptedMetadataKeyTag:[B

.field private blacklist mIdentityType:I

.field private final blacklist mPublicKey:[B

.field private final blacklist mSecretId:[B


# direct methods
.method public constructor whitelist <init>([B[B[B[B[B)V
    .registers 10
    .param p1, "secretId"    # [B
    .param p2, "authenticityKey"    # [B
    .param p3, "publicKey"    # [B
    .param p4, "encryptedMetadata"    # [B
    .param p5, "encryptedMetadataKeyTag"    # [B

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
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

    .line 160
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

    .line 163
    if-eqz p3, :cond_26

    array-length v2, p3

    if-lez v2, :cond_26

    move v2, v0

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    const-string v3, "publicKey cannot be empty"

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 165
    if-eqz p4, :cond_33

    array-length v2, p4

    if-lez v2, :cond_33

    move v2, v0

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    const-string v3, "encryptedMetadata cannot be empty"

    invoke-static {v2, v3}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 168
    if-eqz p5, :cond_3f

    array-length v2, p5

    if-lez v2, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    const-string v1, "encryptedMetadataKeyTag cannot be empty"

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 172
    iput-object p1, p0, Landroid/nearby/PublicCredential$Builder;->mSecretId:[B

    .line 173
    iput-object p2, p0, Landroid/nearby/PublicCredential$Builder;->mAuthenticityKey:[B

    .line 174
    iput-object p3, p0, Landroid/nearby/PublicCredential$Builder;->mPublicKey:[B

    .line 175
    iput-object p4, p0, Landroid/nearby/PublicCredential$Builder;->mEncryptedMetadata:[B

    .line 176
    iput-object p5, p0, Landroid/nearby/PublicCredential$Builder;->mEncryptedMetadataKeyTag:[B

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/nearby/PublicCredential$Builder;->mCredentialElements:Ljava/util/List;

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist addCredentialElement(Landroid/nearby/CredentialElement;)Landroid/nearby/PublicCredential$Builder;
    .registers 3
    .param p1, "credentialElement"    # Landroid/nearby/CredentialElement;

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Landroid/nearby/PublicCredential$Builder;->mCredentialElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public whitelist build()Landroid/nearby/PublicCredential;
    .registers 10

    .line 198
    new-instance v0, Landroid/nearby/PublicCredential;

    iget v1, p0, Landroid/nearby/PublicCredential$Builder;->mIdentityType:I

    iget-object v2, p0, Landroid/nearby/PublicCredential$Builder;->mSecretId:[B

    iget-object v3, p0, Landroid/nearby/PublicCredential$Builder;->mAuthenticityKey:[B

    iget-object v4, p0, Landroid/nearby/PublicCredential$Builder;->mCredentialElements:Ljava/util/List;

    iget-object v5, p0, Landroid/nearby/PublicCredential$Builder;->mPublicKey:[B

    iget-object v6, p0, Landroid/nearby/PublicCredential$Builder;->mEncryptedMetadata:[B

    iget-object v7, p0, Landroid/nearby/PublicCredential$Builder;->mEncryptedMetadataKeyTag:[B

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/nearby/PublicCredential;-><init>(I[B[BLjava/util/List;[B[B[BLandroid/nearby/PublicCredential-IA;)V

    return-object v0
.end method

.method public whitelist setIdentityType(I)Landroid/nearby/PublicCredential$Builder;
    .registers 2
    .param p1, "identityType"    # I

    .line 183
    iput p1, p0, Landroid/nearby/PublicCredential$Builder;->mIdentityType:I

    .line 184
    return-object p0
.end method
