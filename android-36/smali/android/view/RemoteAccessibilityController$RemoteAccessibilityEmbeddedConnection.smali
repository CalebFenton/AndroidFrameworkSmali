.class final Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
.super Ljava/lang/Object;
.source "RemoteAccessibilityController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RemoteAccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteAccessibilityEmbeddedConnection"
.end annotation


# instance fields
.field private final blacklist mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

.field private final blacklist mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/RemoteAccessibilityController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLeashToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$SFkl2BM9gQaGR_d-ID4papGfqNk(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;Landroid/view/RemoteAccessibilityController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->lambda$binderDied$0(Landroid/view/RemoteAccessibilityController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 1

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "controller"    # Landroid/view/RemoteAccessibilityController;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .param p3, "leashToken"    # Landroid/os/IBinder;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mController:Ljava/lang/ref/WeakReference;

    .line 96
    iput-object p2, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    .line 97
    iput-object p3, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    .line 98
    return-void
.end method

.method private synthetic blacklist lambda$binderDied$0(Landroid/view/RemoteAccessibilityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/RemoteAccessibilityController;

    .line 124
    invoke-static {p1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object v0

    if-ne v0, p0, :cond_a

    .line 125
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/RemoteAccessibilityController;->-$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V

    .line 127
    :cond_a
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 118
    invoke-virtual {p0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    .line 119
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAccessibilityController;

    .line 120
    .local v0, "controller":Landroid/view/RemoteAccessibilityController;
    if-nez v0, :cond_e

    .line 121
    return-void

    .line 123
    :cond_e
    new-instance v1, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;Landroid/view/RemoteAccessibilityController;)V

    invoke-static {v0, v1}, Landroid/view/RemoteAccessibilityController;->-$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method blacklist getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method blacklist getLeashToken()Landroid/os/IBinder;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mLeashToken:Landroid/os/IBinder;

    return-object v0
.end method

.method blacklist linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 110
    return-void
.end method

.method blacklist unlinkToDeath()V
    .registers 3

    .line 113
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->mConnection:Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 114
    return-void
.end method
