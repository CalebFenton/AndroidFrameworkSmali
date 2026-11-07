.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic blacklist f$1:[B

.field public final synthetic blacklist f$2:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput-object p2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;->f$1:[B

    iput-object p3, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;->f$2:[B

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget-object v1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;->f$1:[B

    iget-object v2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;->f$2:[B

    invoke-static {v0, v1, v2, p1}, Landroid/security/KeyStore2;->lambda$updateSubcomponents$7(Landroid/system/keystore2/KeyDescriptor;[B[BLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
