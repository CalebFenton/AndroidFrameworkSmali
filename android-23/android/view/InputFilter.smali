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
.field private static final MSG_INPUT_EVENT:I = 0x3

.field private static final MSG_INSTALL:I = 0x1

.field private static final MSG_UNINSTALL:I = 0x2


# instance fields
.field private final mH:Landroid/view/InputFilter$H;

.field private mHost:Landroid/view/IInputFilterHost;

.field private final mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method static synthetic -get0(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 126
    invoke-direct {p0}, Landroid/view/IInputFilter$Stub;-><init>()V

    #@5
    .line 107
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 108
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    #@d
    .line 110
    const-string/jumbo v2, "InputFilter#InboundInputEventConsistencyVerifier"

    #@10
    .line 108
    invoke-direct {v0, p0, v3, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    #@13
    .line 106
    :goto_0
    iput-object v0, p0, Landroid/view/InputFilter;->mInboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@15
    .line 112
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 113
    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    #@1d
    .line 115
    const-string/jumbo v0, "InputFilter#OutboundInputEventConsistencyVerifier"

    #@20
    .line 113
    invoke-direct {v1, p0, v3, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    #@23
    .line 111
    :cond_0
    iput-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@25
    .line 127
    new-instance v0, Landroid/view/InputFilter$H;

    #@27
    invoke-direct {v0, p0, p1}, Landroid/view/InputFilter$H;-><init>(Landroid/view/InputFilter;Landroid/os/Looper;)V

    #@2a
    iput-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    #@2c
    .line 126
    return-void

    #@2d
    :cond_1
    move-object v0, v1

    #@2e
    .line 110
    goto :goto_0
.end method


# virtual methods
.method public final filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/InputFilter$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 155
    return-void
.end method

.method public final install(Landroid/view/IInputFilterHost;)V
    .locals 2
    .param p1, "host"    # Landroid/view/IInputFilterHost;

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/view/InputFilter$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 136
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Landroid/view/InputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    #@3
    .line 195
    return-void
.end method

.method public onInstalled()V
    .locals 0

    #@0
    .prologue
    .line 206
    return-void
.end method

.method public onUninstalled()V
    .locals 0

    #@0
    .prologue
    .line 216
    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    #@0
    .prologue
    .line 166
    if-nez p1, :cond_0

    #@2
    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "event must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 169
    :cond_0
    iget-object v1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    #@d
    if-nez v1, :cond_1

    #@f
    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v2, "Cannot send input event because the input filter is not installed."

    #@14
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 173
    :cond_1
    iget-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 174
    iget-object v1, p0, Landroid/view/InputFilter;->mOutboundInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    #@22
    .line 177
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter;->mHost:Landroid/view/IInputFilterHost;

    #@24
    invoke-interface {v1, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 165
    :goto_0
    return-void

    #@28
    .line 178
    :catch_0
    move-exception v0

    #@29
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final uninstall()V
    .locals 2

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/view/InputFilter;->mH:Landroid/view/InputFilter$H;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/view/InputFilter$H;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 144
    return-void
.end method
