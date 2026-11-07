.class final Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/SoftInputWindow$WindowState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SoftInputWindow"


# instance fields
.field private final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private final blacklist mService:Landroid/inputmethodservice/InputMethodService;

.field private blacklist mWindowState:I


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodService;ILandroid/view/KeyEvent$DispatcherState;)V
    .registers 5
    .param p1, "service"    # Landroid/inputmethodservice/InputMethodService;
    .param p2, "theme"    # I
    .param p3, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    .line 139
    iput-object p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 140
    iput-object p3, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 141
    return-void
.end method

.method private static blacklist stateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 239
    packed-switch p0, :pswitch_data_2c

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :pswitch_1c
    const-string v0, "DESTROYED"

    return-object v0

    .line 247
    :pswitch_1f
    const-string v0, "REJECTED_AT_LEAST_ONCE"

    return-object v0

    .line 245
    :pswitch_22
    const-string v0, "SHOWN_AT_LEAST_ONCE"

    return-object v0

    .line 243
    :pswitch_25
    const-string v0, "TOKEN_SET"

    return-object v0

    .line 241
    :pswitch_28
    const-string v0, "TOKEN_PENDING"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist updateWindowState(I)V
    .registers 2
    .param p1, "newState"    # I

    .line 235
    iput p1, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    .line 236
    return-void
.end method


# virtual methods
.method protected blacklist allowsRegisterDefaultOnBackInvokedCallback()Z
    .registers 2

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dismissForDestroyIfNecessary()V
    .registers 5

    .line 187
    iget v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    const-string v1, "SoftInputWindow"

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_4e

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dismissForDestroyIfNecessary can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_2b
    const-string v0, "Not trying to dismiss the window because it is most likely unnecessary."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 219
    return-void

    .line 198
    :pswitch_34
    :try_start_34
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 199
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V
    :try_end_3f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_34 .. :try_end_3f} :catch_40

    .line 209
    goto :goto_46

    .line 200
    :catch_40
    move-exception v0

    .line 207
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v3, "Probably the IME window token is already invalidated. No need to dismiss it."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_46
    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 212
    return-void

    .line 191
    :pswitch_4a
    invoke-direct {p0, v2}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 192
    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4a
        :pswitch_34
        :pswitch_2b
        :pswitch_23
    .end packed-switch
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 256
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 257
    .local v0, "token":J
    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 259
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .line 145
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 146
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 147
    return-void
.end method

.method greylist-max-o setToken(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 93
    iget v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    packed-switch v0, :pswitch_data_56

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_20
    const-string v0, "SoftInputWindow"

    const-string v1, "Ignoring setToken() because window is already destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 111
    :pswitch_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setToken can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_30
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 97
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 98
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 99
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 105
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 107
    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_30
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public whitelist show()V
    .registers 4

    .line 151
    iget v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    const-string v1, "SoftInputWindow"

    packed-switch v0, :pswitch_data_4a

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_22
    const-string v0, "Ignoring show() because the window is already destroyed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 175
    :pswitch_28
    const-string v0, "Not trying to call show() because it was already rejected once."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 158
    :pswitch_2e
    :try_start_2e
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 159
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V
    :try_end_35
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2e .. :try_end_35} :catch_36
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_2e .. :try_end_35} :catch_36

    .line 171
    goto :goto_40

    .line 160
    :catch_36
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Probably the IME window token is already invalidated. show() does nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/inputmethodservice/SoftInputWindow;->updateWindowState(I)V

    .line 172
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_40
    return-void

    .line 153
    :pswitch_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window token is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_2e
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method
