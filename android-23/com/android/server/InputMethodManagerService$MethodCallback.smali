.class final Lcom/android/server/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mChannel:Landroid/view/InputChannel;

.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/InputMethodManagerService;
    .param p2, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p3, "channel"    # Landroid/view/InputChannel;

    #@0
    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    #@3
    .line 728
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    #@5
    .line 729
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    #@7
    .line 730
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    #@9
    .line 727
    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    #@0
    .prologue
    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 737
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/InputMethodManagerService;

    #@6
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    #@8
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    #@a
    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10
    .line 734
    return-void

    #@11
    .line 738
    :catchall_0
    move-exception v2

    #@12
    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@15
    .line 738
    throw v2
.end method
