.class public abstract Landroid/view/InputFilter;
.super Landroid/view/IInputFilter$Stub;
.source "InputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputFilter$H;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_INPUT_EVENT:I = 0x3

.field private static final greylist-max-o MSG_INSTALL:I = 0x1

.field private static final greylist-max-o MSG_UNINSTALL:I = 0x2


# instance fields
.field private final greylist-max-o mH:Landroid/view/InputFilter$H;

.field private greylist-max-o mHost:Landroid/view/IInputFilterHost;

.field private final greylist-max-o mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final greylist-max-o mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .registers 1

    iget-object p0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutboundInputEventConsistencyVerifier(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .registers 1

    iget-object p0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHost(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)V
    .registers 2

    iput-object p1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/os/Looper;)V
    .registers 6
    .param p1, "looper"    # Landroid/os/Looper;

    .line 123
    invoke-direct {p0}, Landroid/view/IInputFilter$Stub;-><init>()V

    .line 102
    nop

    .line 103
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 104
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const-string v3, "InputFilter#InboundInputEventConsistencyVerifier"

    invoke-direct {v0, p0, v1, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_15

    .line 106
    :cond_14
    move-object v0, v2

    :goto_15
    iput-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 107
    nop

    .line 108
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 109
    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    const-string v0, "InputFilter#OutboundInputEventConsistencyVerifier"

    invoke-direct {v2, p0, v1, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_27

    .line 111
    :cond_26
    nop

    :goto_27
    iput-object v2, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 124
    new-instance v0, Landroid/view/InputFilter$H;

    invoke-direct {v0, p0, p1}, Landroid/view/InputFilter$H;-><init>(Landroid/view/InputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    .line 125
    return-void
.end method


# virtual methods
.method public final greylist-max-o filterInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 153
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/InputFilter$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public final greylist-max-o install(Landroid/view/IInputFilterHost;)V
    .registers 4
    .param p1, "host"    # Landroid/view/IInputFilterHost;

    .line 134
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/InputFilter$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method public greylist-max-r onInputEvent(Landroid/view/InputEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 194
    invoke-virtual {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 195
    return-void
.end method

.method public greylist-max-o onInstalled()V
    .registers 1

    .line 205
    return-void
.end method

.method public greylist-max-o onUninstalled()V
    .registers 1

    .line 215
    return-void
.end method

.method public greylist-max-o sendInputEvent(Landroid/view/InputEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 163
    if-eqz p1, :cond_20

    .line 166
    iget-object v0, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    if-eqz v0, :cond_18

    .line 170
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_10

    .line 171
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 174
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    .line 177
    goto :goto_17

    .line 175
    :catch_16
    move-exception v0

    .line 178
    :goto_17
    return-void

    .line 167
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot send input event because the input filter is not installed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o uninstall()V
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/InputFilter$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method
