.class public abstract Landroid/app/servertransaction/WindowStateTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowStateTransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;
    }
.end annotation


# instance fields
.field private final blacklist mWindow:Landroid/view/IWindow;


# direct methods
.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindow;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 52
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindow;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    if-ne p0, p1, :cond_4

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 98
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/WindowStateTransactionItem;

    .line 99
    .local v0, "other":Landroid/app/servertransaction/WindowStateTransactionItem;
    iget-object v1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    iget-object v2, v0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 96
    .end local v0    # "other":Landroid/app/servertransaction/WindowStateTransactionItem;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 59
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    instance-of v1, v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;

    .line 60
    .local v0, "listener":Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;
    invoke-interface {v0}, Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;->onExecutingWindowStateTransactionItem()V

    .line 62
    .end local v0    # "listener":Landroid/app/servertransaction/WindowStateTransactionItem$TransactionListener;
    :cond_b
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 63
    return-void
.end method

.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateTransactionItem;->mWindow:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    return-void
.end method
