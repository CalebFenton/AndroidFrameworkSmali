.class Landroid/view/inputmethod/ImeTracker$1;
.super Ljava/lang/Object;
.source "ImeTracker.java"

# interfaces
.implements Landroid/view/inputmethod/ImeTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mLogProgress:Z

.field private blacklist mLogStackTrace:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$9OacCYun6bn4lZvaAXoxmItJmvY(Landroid/view/inputmethod/ImeTracker$1;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$1;->reloadSystemProperties()V

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$1;->reloadSystemProperties()V

    .line 637
    new-instance v0, Landroid/view/inputmethod/ImeTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/ImeTracker$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ImeTracker$1;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 638
    return-void
.end method

.method private static blacklist getOnStartPrefix(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 733
    packed-switch p0, :pswitch_data_10

    .line 737
    const-string v0, "onRequestUnknown"

    goto :goto_e

    .line 736
    :pswitch_6
    const-string v0, "onRequestUser"

    goto :goto_e

    .line 735
    :pswitch_9
    const-string v0, "onRequestHide"

    goto :goto_e

    .line 734
    :pswitch_c
    const-string v0, "onRequestShow"

    .line 733
    :goto_e
    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist reloadSystemProperties()V
    .registers 3

    .line 743
    const-string v0, "persist.debug.imetracker"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogProgress:Z

    .line 745
    const-string v0, "persist.debug.imerequest.logstacktrace"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogStackTrace:Z

    .line 747
    return-void
.end method


# virtual methods
.method public blacklist onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I

    .line 688
    if-nez p1, :cond_3

    return-void

    .line 689
    :cond_3
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onCancelled at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method public blacklist onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 712
    if-nez p1, :cond_3

    return-void

    .line 713
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onDispatched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method

.method public blacklist onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I

    .line 674
    if-nez p1, :cond_3

    return-void

    .line 675
    :cond_3
    invoke-static {p1, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onFailed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method public blacklist onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 704
    if-nez p1, :cond_3

    return-void

    .line 705
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onHidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method

.method public blacklist onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I

    .line 664
    if-nez p1, :cond_3

    return-void

    .line 665
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmBinder(Landroid/view/inputmethod/ImeTracker$Token;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onProgress(Landroid/os/IBinder;I)V

    .line 667
    iget-boolean v0, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogProgress:Z

    if-eqz v0, :cond_32

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onProgress at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_32
    return-void
.end method

.method public blacklist onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 696
    if-nez p1, :cond_3

    return-void

    .line 697
    :cond_3
    invoke-static {p1}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onShown(Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method public blacklist onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .registers 13
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "origin"    # I
    .param p5, "reason"    # I
    .param p6, "fromUser"    # Z

    .line 650
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$smcreateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "tag":Ljava/lang/String;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p2    # "uid":I
    .end local p3    # "type":I
    .end local p4    # "origin":I
    .end local p5    # "reason":I
    .end local p6    # "fromUser":Z
    .local v1, "uid":I
    .local v2, "type":I
    .local v3, "origin":I
    .local v4, "reason":I
    .local v5, "fromUser":Z
    invoke-static/range {v0 .. v5}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 654
    .local p2, "token":Landroid/view/inputmethod/ImeTracker$Token;
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker$1;->getOnStartPrefix(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " at "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 655
    invoke-static {v3}, Landroid/view/inputmethod/ImeTracker$Debug;->originToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " reason "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 656
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " fromUser "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 658
    iget-boolean p4, p0, Landroid/view/inputmethod/ImeTracker$1;->mLogStackTrace:Z

    if-eqz p4, :cond_5c

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    goto :goto_5d

    :cond_5c
    const/4 p4, 0x0

    .line 654
    :goto_5d
    const-string p5, "ImeTracker"

    invoke-static {p5, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    return-object p2
.end method

.method public blacklist onTodo(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I

    .line 682
    if-nez p1, :cond_3

    return-void

    .line 683
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onTodo at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method public blacklist onUserFinished(Landroid/view/inputmethod/ImeTracker$Token;Z)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "shown"    # Z

    .line 720
    if-nez p1, :cond_3

    return-void

    .line 723
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Token;->-$$Nest$fgetmTag(Landroid/view/inputmethod/ImeTracker$Token;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onUserFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_1c

    const-string/jumbo v1, "shown"

    goto :goto_1e

    :cond_1c
    const-string v1, "hidden"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void
.end method
