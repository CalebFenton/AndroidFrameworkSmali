.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "PhoneFallbackEventHandler"

    #@3
    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    #@5
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@5
    .line 52
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    #@a
    .line 310
    return-void
.end method

.method private isUserSetupComplete()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 316
    const-string/jumbo v2, "user_setup_complete"

    #@a
    .line 315
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :cond_0
    return v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@3
    move-result v0

    #@4
    .line 67
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@7
    move-result v1

    #@8
    .line 69
    .local v1, "keyCode":I
    if-nez v0, :cond_0

    #@a
    .line 70
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 72
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@12
    move-result v2

    #@13
    return v2
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "audio"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/media/AudioManager;

    #@f
    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    #@11
    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    #@13
    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "keyguard"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/KeyguardManager;

    #@f
    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@11
    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    #@13
    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "search"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/SearchManager;

    #@f
    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    #@11
    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    #@13
    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@6
    .line 287
    const-string/jumbo v1, "phone"

    #@9
    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@f
    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@11
    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@13
    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/high16 v4, 0x10000000

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    #@7
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@a
    move-result-object v10

    #@b
    .line 83
    .local v10, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 200
    :cond_0
    :goto_0
    return v6

    #@f
    .line 87
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@11
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p2, v6}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@18
    .line 88
    return v12

    #@19
    .line 97
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 98
    return v12

    #@24
    .line 109
    :cond_1
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    #@27
    .line 110
    return v12

    #@28
    .line 114
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@2f
    move-result v0

    #@30
    if-nez v0, :cond_0

    #@32
    if-eqz v10, :cond_0

    #@34
    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_3

    #@3a
    .line 118
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@3d
    .line 137
    :cond_2
    :goto_1
    return v12

    #@3e
    .line 119
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_2

    #@44
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_2

    #@4a
    .line 120
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    #@4d
    .line 121
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_4

    #@53
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    #@55
    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    #@58
    .line 124
    new-instance v1, Landroid/content/Intent;

    #@5a
    const-string/jumbo v0, "android.intent.action.VOICE_COMMAND"

    #@5d
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@60
    .line 125
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@63
    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    #@66
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@68
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    goto :goto_1

    #@6c
    .line 129
    :catch_0
    move-exception v11

    #@6d
    .line 130
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    #@70
    goto :goto_1

    #@71
    .line 133
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    #@73
    const-string/jumbo v2, "Not starting call activity because user setup is in progress."

    #@76
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    goto :goto_1

    #@7a
    .line 141
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@81
    move-result v0

    #@82
    if-nez v0, :cond_0

    #@84
    if-eqz v10, :cond_0

    #@86
    .line 144
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@89
    move-result v0

    #@8a
    if-nez v0, :cond_6

    #@8c
    .line 145
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@8f
    .line 161
    :cond_5
    :goto_2
    return v12

    #@90
    .line 146
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    #@93
    move-result v0

    #@94
    if-eqz v0, :cond_5

    #@96
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_5

    #@9c
    .line 147
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    #@9f
    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    #@a2
    move-result v0

    #@a3
    if-eqz v0, :cond_7

    #@a5
    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    #@a7
    invoke-virtual {v0, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    #@aa
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    #@ad
    .line 152
    new-instance v1, Landroid/content/Intent;

    #@af
    const-string/jumbo v0, "android.intent.action.CAMERA_BUTTON"

    #@b2
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@b5
    .line 153
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.KEY_EVENT"

    #@b8
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@bb
    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@bd
    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@bf
    move-object v4, v3

    #@c0
    move-object v5, v3

    #@c1
    move-object v7, v3

    #@c2
    move-object v8, v3

    #@c3
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@c6
    goto :goto_2

    #@c7
    .line 157
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    #@c9
    const-string/jumbo v2, "Not dispatching CAMERA long press because user setup is in progress."

    #@cc
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@cf
    goto :goto_2

    #@d0
    .line 165
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@d3
    move-result-object v0

    #@d4
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@d7
    move-result v0

    #@d8
    if-nez v0, :cond_0

    #@da
    if-eqz v10, :cond_0

    #@dc
    .line 168
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@df
    move-result v0

    #@e0
    if-nez v0, :cond_8

    #@e2
    .line 169
    invoke-virtual {v10, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    #@e5
    goto/16 :goto_0

    #@e7
    .line 170
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_0

    #@ed
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    #@f0
    move-result v0

    #@f1
    if-eqz v0, :cond_0

    #@f3
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@f5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f8
    move-result-object v0

    #@f9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@fc
    move-result-object v9

    #@fd
    .line 172
    .local v9, "config":Landroid/content/res/Configuration;
    iget v0, v9, Landroid/content/res/Configuration;->keyboard:I

    #@ff
    if-eq v0, v12, :cond_9

    #@101
    .line 173
    iget v0, v9, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    #@103
    const/4 v2, 0x2

    #@104
    if-ne v0, v2, :cond_0

    #@106
    .line 174
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    #@109
    move-result v0

    #@10a
    if-eqz v0, :cond_a

    #@10c
    .line 176
    new-instance v1, Landroid/content/Intent;

    #@10e
    const-string/jumbo v0, "android.intent.action.SEARCH_LONG_PRESS"

    #@111
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@114
    .line 177
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@117
    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    #@119
    const/4 v2, 0x0

    #@11a
    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    #@11d
    .line 180
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    #@120
    .line 181
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    #@123
    move-result-object v0

    #@124
    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    #@127
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@129
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@12c
    .line 186
    invoke-virtual {v10, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@12f
    .line 187
    return v12

    #@130
    .line 192
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_a
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    #@132
    const-string/jumbo v2, "Not dispatching SEARCH long press because user setup is in progress."

    #@135
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@138
    goto/16 :goto_0

    #@13a
    .line 188
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v11

    #@13b
    .restart local v11    # "e":Landroid/content/ActivityNotFoundException;
    goto/16 :goto_0

    #@13d
    .line 83
    nop

    #@13e
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_4
        0x4f -> :sswitch_2
        0x54 -> :sswitch_5
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    #@4
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@7
    move-result-object v0

    #@8
    .line 208
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    #@a
    .line 209
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    #@d
    .line 212
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@10
    .line 263
    :cond_1
    return v2

    #@11
    .line 216
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_2

    #@17
    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@19
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    #@20
    .line 219
    :cond_2
    return v3

    #@21
    .line 234
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    #@24
    .line 235
    return v3

    #@25
    .line 239
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_1

    #@2f
    .line 242
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3

    #@35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 245
    :cond_3
    return v3

    #@3c
    .line 249
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    #@43
    move-result v1

    #@44
    if-nez v1, :cond_1

    #@46
    .line 252
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_5

    #@52
    .line 260
    :cond_4
    :goto_0
    return v3

    #@53
    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_6

    #@59
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    #@5c
    goto :goto_0

    #@5d
    .line 256
    :cond_6
    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    #@5f
    const-string/jumbo v2, "Not starting call activity because user setup is in progress."

    #@62
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_0

    #@66
    .line 212
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    #@3
    move-result-object v0

    #@4
    const/high16 v1, -0x80000000

    #@6
    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    #@9
    .line 60
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    #@6
    .line 306
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    #@2
    .line 56
    return-void
.end method

.method startCallActivity()V
    .locals 4

    #@0
    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    #@3
    .line 268
    new-instance v1, Landroid/content/Intent;

    #@5
    const-string/jumbo v2, "android.intent.action.CALL_BUTTON"

    #@8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b
    .line 269
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@d
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@10
    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 266
    :goto_0
    return-void

    #@16
    .line 272
    :catch_0
    move-exception v0

    #@17
    .line 273
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    #@19
    const-string/jumbo v3, "No activity found for android.intent.action.CALL_BUTTON."

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method
