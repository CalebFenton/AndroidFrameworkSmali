.class Landroid/view/WindowManagerImpl$2;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "WindowManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerImpl;->requestImeKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/WindowManagerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 252
    iput-object p2, p0, Landroid/view/WindowManagerImpl$2;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist send(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    const-class v0, Landroid/view/KeyboardShortcutGroup;

    .line 256
    const-string/jumbo v1, "shortcuts_array"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v1, p0, Landroid/view/WindowManagerImpl$2;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-interface {v1, v0}, Landroid/view/WindowManager$KeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    .line 259
    return-void
.end method
