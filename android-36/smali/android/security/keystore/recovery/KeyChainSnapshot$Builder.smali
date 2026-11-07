.class public Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
.super Ljava/lang/Object;
.source "KeyChainSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/KeyChainSnapshot;-><init>(Landroid/security/keystore/recovery/KeyChainSnapshot-IA;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-void
.end method


# virtual methods
.method public greylist-max-o build()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fgetmKeyChainProtectionParams(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "keyChainProtectionParams"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 274
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fgetmEntryRecoveryData(Landroid/security/keystore/recovery/KeyChainSnapshot;)Ljava/util/List;

    move-result-object v0

    const-string v1, "entryRecoveryData"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 276
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fgetmEncryptedRecoveryKeyBlob(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fgetmServerParams(Landroid/security/keystore/recovery/KeyChainSnapshot;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fgetmCertPath(Landroid/security/keystore/recovery/KeyChainSnapshot;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    return-object v0
.end method

.method public greylist-max-o setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 4
    .param p1, "counterId"    # J

    .line 198
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1, p2}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmCounterId(Landroid/security/keystore/recovery/KeyChainSnapshot;J)V

    .line 199
    return-object p0
.end method

.method public greylist-max-o setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .param p1, "encryptedRecoveryKeyBlob"    # [B

    .line 260
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmEncryptedRecoveryKeyBlob(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)V

    .line 261
    return-object p0
.end method

.method public greylist-max-o setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)",
            "Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;"
        }
    .end annotation

    .line 236
    .local p1, "keyChainProtectionParams":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmKeyChainProtectionParams(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)V

    .line 237
    return-object p0
.end method

.method public greylist-max-o setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .param p1, "maxAttempts"    # I

    .line 187
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmMaxAttempts(Landroid/security/keystore/recovery/KeyChainSnapshot;I)V

    .line 188
    return-object p0
.end method

.method public greylist-max-o setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .param p1, "serverParams"    # [B

    .line 209
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmServerParams(Landroid/security/keystore/recovery/KeyChainSnapshot;[B)V

    .line 210
    return-object p0
.end method

.method public greylist-max-o setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .param p1, "snapshotVersion"    # I

    .line 176
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmSnapshotVersion(Landroid/security/keystore/recovery/KeyChainSnapshot;I)V

    .line 177
    return-object p0
.end method

.method public greylist-max-o setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 4
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {p1}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmCertPath(Landroid/security/keystore/recovery/KeyChainSnapshot;Landroid/security/keystore/recovery/RecoveryCertPath;)V

    .line 225
    return-object p0
.end method

.method public greylist-max-o setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;"
        }
    .end annotation

    .line 248
    .local p1, "entryRecoveryData":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainSnapshot;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->-$$Nest$fputmEntryRecoveryData(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/util/List;)V

    .line 249
    return-object p0
.end method
