.class public Landroid/accessibilityservice/InputMethod;
.super Ljava/lang/Object;
.source "InputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;,
        Landroid/accessibilityservice/InputMethod$SessionImpl;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "A11yInputMethod"


# instance fields
.field private blacklist mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private blacklist mInputStarted:Z

.field private final blacklist mService:Landroid/accessibilityservice/AccessibilityService;

.field private blacklist mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/accessibilityservice/InputMethod;)Landroid/accessibilityservice/AccessibilityService;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartedInputConnection(Landroid/accessibilityservice/InputMethod;)Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .registers 1

    iget-object p0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 2
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 61
    return-void
.end method


# virtual methods
.method final blacklist createImeSession(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;

    .line 140
    new-instance v0, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 141
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/InputMethod$SessionImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/accessibilityservice/InputMethod$SessionImpl;-><init>(Landroid/accessibilityservice/InputMethod;Landroid/accessibilityservice/InputMethod-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;-><init>(Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityInputMethodSession;)V

    .line 144
    .local v0, "wrapper":Landroid/accessibilityservice/AccessibilityInputMethodSessionWrapper;
    :try_start_11
    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityService;->getConnectionId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;->sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 146
    goto :goto_1c

    .line 145
    :catch_1b
    move-exception v1

    .line 147
    :goto_1c
    return-void
.end method

.method final blacklist doFinishInput()V
    .registers 3

    .line 183
    const-string v0, "CALL: doFinishInput"

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    if-eqz v0, :cond_13

    .line 185
    const-string v0, "CALL: onFinishInput"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Landroid/accessibilityservice/InputMethod;->onFinishInput()V

    .line 188
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    .line 190
    iput-object v0, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 191
    return-void
.end method

.method final blacklist doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .param p1, "ic"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .line 168
    if-eqz p1, :cond_4

    if-nez p3, :cond_e

    :cond_4
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    if-eqz v0, :cond_e

    .line 169
    invoke-virtual {p0}, Landroid/accessibilityservice/InputMethod;->doFinishInput()V

    .line 170
    if-nez p1, :cond_e

    .line 172
    return-void

    .line 175
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    .line 176
    iput-object p1, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    .line 177
    iput-object p2, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 178
    const-string v0, "A11yInputMethod"

    const-string v1, "CALL: onStartInput"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0, p2, p3}, Landroid/accessibilityservice/InputMethod;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 180
    return-void
.end method

.method public final whitelist getCurrentInputConnection()Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;
    .registers 3

    .line 69
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    if-eqz v0, :cond_c

    .line 70
    new-instance v0, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

    iget-object v1, p0, Landroid/accessibilityservice/InputMethod;->mStartedInputConnection:Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;-><init>(Landroid/accessibilityservice/InputMethod;Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;)V

    return-object v0

    .line 72
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/accessibilityservice/InputMethod;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public final whitelist getCurrentInputStarted()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Landroid/accessibilityservice/InputMethod;->mInputStarted:Z

    return v0
.end method

.method public whitelist onFinishInput()V
    .registers 1

    .line 121
    return-void
.end method

.method public whitelist onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .line 105
    return-void
.end method

.method public whitelist onUpdateSelection(IIIIII)V
    .registers 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .line 137
    return-void
.end method

.method final blacklist restartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .param p1, "ic"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restartInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "AccessibilityService.restartInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/accessibilityservice/InputMethod;->doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 162
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 163
    return-void
.end method

.method final blacklist startInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .param p1, "ic"    # Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInput(): editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yInputMethod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v0, "AccessibilityService.startInput"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/accessibilityservice/InputMethod;->doStartInput(Lcom/android/internal/inputmethod/RemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 154
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    return-void
.end method
