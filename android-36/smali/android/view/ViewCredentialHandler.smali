.class public Landroid/view/ViewCredentialHandler;
.super Ljava/lang/Object;
.source "ViewCredentialHandler.java"


# instance fields
.field private blacklist mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequest:Landroid/credentials/GetCredentialRequest;


# direct methods
.method constructor blacklist <init>(Landroid/credentials/GetCredentialRequest;Landroid/os/OutcomeReceiver;)V
    .registers 3
    .param p1, "request"    # Landroid/credentials/GetCredentialRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/credentials/GetCredentialResponse;Landroid/credentials/GetCredentialException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/view/ViewCredentialHandler;->mRequest:Landroid/credentials/GetCredentialRequest;

    .line 35
    iput-object p2, p0, Landroid/view/ViewCredentialHandler;->mCallback:Landroid/os/OutcomeReceiver;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getCallback()Landroid/os/OutcomeReceiver;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroid/view/ViewCredentialHandler;->mCallback:Landroid/os/OutcomeReceiver;

    return-object v0
.end method

.method public blacklist getRequest()Landroid/credentials/GetCredentialRequest;
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/view/ViewCredentialHandler;->mRequest:Landroid/credentials/GetCredentialRequest;

    return-object v0
.end method
