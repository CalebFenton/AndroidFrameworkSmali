.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput p2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget v1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;->f$1:I

    invoke-static {v0, v1, p1}, Landroid/security/KeyStore2;->lambda$ungrant$4(Landroid/system/keystore2/KeyDescriptor;ILandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
