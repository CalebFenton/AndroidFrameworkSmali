.class public final synthetic Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;

.field public final synthetic blacklist f$1:Landroid/credentials/GetCandidateCredentialsResponse;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;Landroid/credentials/GetCandidateCredentialsResponse;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;->f$0:Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;

    iput-object p2, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;->f$1:Landroid/credentials/GetCandidateCredentialsResponse;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;->f$0:Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;

    iget-object v1, p0, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport$$ExternalSyntheticLambda1;->f$1:Landroid/credentials/GetCandidateCredentialsResponse;

    invoke-static {v0, v1}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;->$r8$lambda$M-94CRU_STODezHdtFf99RzEq4s(Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;Landroid/credentials/GetCandidateCredentialsResponse;)V

    return-void
.end method
