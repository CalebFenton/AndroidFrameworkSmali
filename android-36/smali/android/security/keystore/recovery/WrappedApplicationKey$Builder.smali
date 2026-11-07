.class public Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
.super Ljava/lang/Object;
.source "WrappedApplicationKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/WrappedApplicationKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/WrappedApplicationKey;-><init>(Landroid/security/keystore/recovery/WrappedApplicationKey-IA;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/recovery/WrappedApplicationKey;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey;->-$$Nest$fgetmAlias(Landroid/security/keystore/recovery/WrappedApplicationKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey;->-$$Nest$fgetmEncryptedKeyMaterial(Landroid/security/keystore/recovery/WrappedApplicationKey;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    return-object v0
.end method

.method public whitelist setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->-$$Nest$fputmAlias(Landroid/security/keystore/recovery/WrappedApplicationKey;Ljava/lang/String;)V

    .line 77
    return-object p0
.end method

.method public whitelist setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    .registers 3
    .param p1, "encryptedKeyMaterial"    # [B

    .line 87
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->-$$Nest$fputmEncryptedKeyMaterial(Landroid/security/keystore/recovery/WrappedApplicationKey;[B)V

    .line 88
    return-object p0
.end method

.method public whitelist setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    .registers 3
    .param p1, "metadata"    # [B

    .line 98
    iget-object v0, p0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->mInstance:Landroid/security/keystore/recovery/WrappedApplicationKey;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->-$$Nest$fputmMetadata(Landroid/security/keystore/recovery/WrappedApplicationKey;[B)V

    .line 99
    return-object p0
.end method
