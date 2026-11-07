.class public final synthetic Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/credentials/CredentialManager$CreateCredentialTransport;

.field public final synthetic blacklist f$1:Landroid/credentials/CreateCredentialResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;->f$0:Landroid/credentials/CredentialManager$CreateCredentialTransport;

    iput-object p2, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;->f$1:Landroid/credentials/CreateCredentialResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;->f$0:Landroid/credentials/CredentialManager$CreateCredentialTransport;

    iget-object v1, p0, Landroid/credentials/CredentialManager$CreateCredentialTransport$$ExternalSyntheticLambda0;->f$1:Landroid/credentials/CreateCredentialResponse;

    invoke-static {v0, v1}, Landroid/credentials/CredentialManager$CreateCredentialTransport;->$r8$lambda$5mhD1tkv7KX2IWpzYNaveajQR1A(Landroid/credentials/CredentialManager$CreateCredentialTransport;Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method
