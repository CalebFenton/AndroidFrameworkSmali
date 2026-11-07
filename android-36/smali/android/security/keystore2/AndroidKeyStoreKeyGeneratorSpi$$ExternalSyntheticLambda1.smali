.class public final synthetic Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$0:Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;

    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$0:Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->$r8$lambda$BcSkqVDsbYdzamNOvAwI3W4IZEU(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method
