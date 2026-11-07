.class public final synthetic Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/CheckedRemoteRequest;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/KeyStoreSecurityLevel;

.field public final synthetic blacklist f$1:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic blacklist f$2:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic blacklist f$3:Ljava/util/Collection;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$0:Landroid/security/KeyStoreSecurityLevel;

    iput-object p2, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$1:Landroid/system/keystore2/KeyDescriptor;

    iput-object p3, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$2:Landroid/system/keystore2/KeyDescriptor;

    iput-object p4, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$3:Ljava/util/Collection;

    iput p5, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$5:[B

    return-void
.end method


# virtual methods
.method public final blacklist execute()Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$0:Landroid/security/KeyStoreSecurityLevel;

    iget-object v1, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$1:Landroid/system/keystore2/KeyDescriptor;

    iget-object v2, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$2:Landroid/system/keystore2/KeyDescriptor;

    iget-object v3, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$3:Ljava/util/Collection;

    iget v4, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Landroid/security/KeyStoreSecurityLevel$$ExternalSyntheticLambda2;->f$5:[B

    invoke-static/range {v0 .. v5}, Landroid/security/KeyStoreSecurityLevel;->$r8$lambda$nmKQL67jdmJaQALlqay99_HTGYQ(Landroid/security/KeyStoreSecurityLevel;Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v0

    return-object v0
.end method
