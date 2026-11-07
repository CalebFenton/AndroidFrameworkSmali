.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist mAudioManager:Landroid/media/AudioManager;

.field greylist mContext:Landroid/content/Context;

.field blacklist mKeyguardManager:Landroid/app/KeyguardManager;

.field blacklist mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field blacklist mSearchManager:Landroid/app/SearchManager;

.field blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field greylist mView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private blacklist handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    .line 323
    return-void
.end method

.method private blacklist handleVolumeKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 319
    return-void
.end method

.method private blacklist isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z
    .registers 3
    .param p1, "dispatcher"    # Landroid/view/KeyEvent$DispatcherState;

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 201
    :goto_1b
    return v0
.end method

.method private blacklist isUserSetupComplete()Z
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2
.end method


# virtual methods
.method public blacklist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 71
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 73
    .local v1, "keyCode":I
    if-nez v0, :cond_f

    .line 74
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 76
    :cond_f
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method blacklist getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 305
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method blacklist getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_10

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 298
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method blacklist getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_10

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 311
    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 313
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method blacklist getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 283
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 291
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method greylist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 20
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 86
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v3

    .line 88
    .local v3, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    const/high16 v0, 0x10000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_11c

    goto/16 :goto_11a

    .line 163
    :sswitch_13
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 164
    goto/16 :goto_11a

    .line 166
    :cond_1b
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_26

    .line 167
    invoke-virtual {v3, v2, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_11a

    .line 168
    :cond_26
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_11a

    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 169
    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 170
    .local v6, "config":Landroid/content/res/Configuration;
    iget v7, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_45

    iget v7, v6, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11a

    .line 172
    :cond_45
    invoke-direct {v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 174
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    :try_start_55
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 178
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 179
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_69
    .catch Landroid/content/ActivityNotFoundException; {:try_start_55 .. :try_end_69} :catch_6a

    .line 184
    return v5

    .line 185
    :catch_6a
    move-exception v0

    .line 188
    .end local v7    # "intent":Landroid/content/Intent;
    goto/16 :goto_11a

    .line 189
    :cond_6d
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11a

    .line 108
    .end local v6    # "config":Landroid/content/res/Configuration;
    :sswitch_76
    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 109
    return v5

    .line 139
    :sswitch_7a
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 140
    goto/16 :goto_11a

    .line 142
    :cond_82
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_8c

    .line 143
    invoke-virtual {v3, v2, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_cd

    .line 144
    :cond_8c
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_cd

    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 145
    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 146
    invoke-direct {v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 147
    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 149
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CAMERA_BUTTON"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v9, v4

    .line 150
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    iget-object v8, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .end local v9    # "intent":Landroid/content/Intent;
    goto :goto_cd

    .line 155
    :cond_c6
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Not dispatching CAMERA long press because user setup is in progress."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_cd
    :goto_cd
    return v5

    .line 92
    :sswitch_ce
    invoke-direct {v1, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 93
    return v5

    .line 113
    :sswitch_d2
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 114
    goto :goto_11a

    .line 116
    :cond_d9
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_e3

    .line 117
    invoke-virtual {v3, v2, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_119

    .line 118
    :cond_e3
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_119

    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 119
    invoke-virtual {v3, v2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 120
    invoke-direct {v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v6

    if-eqz v6, :cond_112

    .line 121
    iget-object v6, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 123
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    :try_start_107
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_107 .. :try_end_10c} :catch_10d

    .line 129
    goto :goto_111

    .line 127
    :catch_10d
    move-exception v0

    .line 128
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    .line 130
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_111
    goto :goto_119

    .line 131
    :cond_112
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v4, "Not starting call activity because user setup is in progress."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_119
    :goto_119
    return v5

    .line 197
    :cond_11a
    :goto_11a
    return v4

    nop

    :sswitch_data_11c
    .sparse-switch
        0x5 -> :sswitch_d2
        0x18 -> :sswitch_ce
        0x19 -> :sswitch_ce
        0x1b -> :sswitch_7a
        0x4f -> :sswitch_76
        0x54 -> :sswitch_13
        0x55 -> :sswitch_76
        0x56 -> :sswitch_76
        0x57 -> :sswitch_76
        0x58 -> :sswitch_76
        0x59 -> :sswitch_76
        0x5a -> :sswitch_76
        0x7e -> :sswitch_76
        0x7f -> :sswitch_76
        0x82 -> :sswitch_76
        0xa4 -> :sswitch_ce
        0xde -> :sswitch_76
    .end sparse-switch
.end method

.method greylist onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 211
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_b

    .line 212
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 215
    :cond_b
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_56

    goto :goto_54

    .line 236
    :sswitch_10
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 237
    return v1

    .line 241
    :sswitch_14
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 242
    goto :goto_54

    .line 244
    :cond_1b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    .line 247
    :cond_24
    return v1

    .line 219
    :sswitch_25
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 220
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 222
    :cond_2e
    return v1

    .line 251
    :sswitch_2f
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 252
    goto :goto_54

    .line 254
    :cond_36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_53

    .line 255
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_53

    .line 258
    :cond_4c
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting call activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_53
    :goto_53
    return v1

    .line 265
    :goto_54
    const/4 v1, 0x0

    return v1

    :sswitch_data_56
    .sparse-switch
        0x5 -> :sswitch_2f
        0x18 -> :sswitch_25
        0x19 -> :sswitch_25
        0x1b -> :sswitch_14
        0x4f -> :sswitch_10
        0x55 -> :sswitch_10
        0x56 -> :sswitch_10
        0x57 -> :sswitch_10
        0x58 -> :sswitch_10
        0x59 -> :sswitch_10
        0x5a -> :sswitch_10
        0x7e -> :sswitch_10
        0x7f -> :sswitch_10
        0x82 -> :sswitch_10
        0xa4 -> :sswitch_25
        0xde -> :sswitch_10
    .end sparse-switch
.end method

.method public blacklist preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 66
    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 62
    return-void
.end method

.method greylist startCallActivity()V
    .registers 5

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_11} :catch_12

    .line 276
    goto :goto_1a

    .line 274
    :catch_12
    move-exception v1

    .line 275
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1a
    return-void
.end method
