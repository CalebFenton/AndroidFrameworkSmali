.class abstract Lcom/android/server/print/UserState$ListenerRecord;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ListenerRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field final listener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/os/IInterface;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/print/UserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1214
    .local p0, "this":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<TT;>;"
    .local p2, "listener":Landroid/os/IInterface;, "TT;"
    iput-object p1, p0, Lcom/android/server/print/UserState$ListenerRecord;->this$0:Lcom/android/server/print/UserState;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1215
    iput-object p2, p0, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    #@7
    .line 1216
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@f
    .line 1214
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 1221
    .local p0, "this":Lcom/android/server/print/UserState$ListenerRecord;, "Lcom/android/server/print/UserState$ListenerRecord<TT;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState$ListenerRecord;->listener:Landroid/os/IInterface;

    #@2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 1222
    invoke-virtual {p0}, Lcom/android/server/print/UserState$ListenerRecord;->onBinderDied()V

    #@d
    .line 1220
    return-void
.end method

.method public abstract onBinderDied()V
.end method
