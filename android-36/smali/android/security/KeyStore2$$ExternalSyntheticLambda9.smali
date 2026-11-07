.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iput p2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;->f$1:I

    iput p3, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;->f$0:Landroid/system/keystore2/KeyDescriptor;

    iget v1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;->f$1:I

    iget v2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;->f$2:I

    invoke-static {v0, v1, v2, p1}, Landroid/security/KeyStore2;->lambda$grant$3(Landroid/system/keystore2/KeyDescriptor;IILandroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    return-object p1
.end method
