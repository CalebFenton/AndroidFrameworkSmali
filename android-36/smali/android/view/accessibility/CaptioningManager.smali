.class public Landroid/view/accessibility/CaptioningManager;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/CaptioningManager$MyContentObserver;,
        Landroid/view/accessibility/CaptioningManager$CaptionStyle;,
        Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;,
        Landroid/view/accessibility/CaptioningManager$SystemAudioCaptioningAccessing;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ENABLED:I = 0x0

.field private static final greylist-max-o DEFAULT_FONT_SCALE:F = 1.0f

.field private static final greylist-max-o DEFAULT_PRESET:I = 0x0

.field private static final blacklist SYSTEM_AUDIO_CAPTIONING_DEFAULT_ENABLED:Z = false


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final greylist-max-o mContentObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mContext:Landroid/content/Context;

.field private final greylist-max-o mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mStyleChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStyleChangedRunnable(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyEnabledChanged(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyEnabledChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyFontScaleChanged(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyFontScaleChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyLocaleChanged(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyLocaleChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySystemAudioCaptionChanged(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifySystemAudioCaptionChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySystemAudioCaptionUiChanged(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifySystemAudioCaptionUiChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyUserStyleChanged(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyUserStyleChanged()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Landroid/view/accessibility/CaptioningManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/CaptioningManager$1;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/view/accessibility/CaptioningManager$MyContentObserver;

    invoke-direct {v1, p0, v0}, Landroid/view/accessibility/CaptioningManager$MyContentObserver;-><init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mResources:Landroid/content/res/Resources;

    .line 78
    return-void
.end method

.method private greylist-max-o notifyEnabledChanged()V
    .registers 5

    .line 267
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 268
    .local v0, "enabled":Z
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 269
    :try_start_7
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 270
    .local v3, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onEnabledChanged(Z)V

    .line 271
    .end local v3    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    goto :goto_d

    .line 272
    :cond_1d
    monitor-exit v1

    .line 273
    return-void

    .line 272
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private greylist-max-o notifyFontScaleChanged()V
    .registers 5

    .line 294
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 295
    .local v0, "fontScale":F
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 296
    :try_start_7
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 297
    .local v3, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onFontScaleChanged(F)V

    .line 298
    .end local v3    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    goto :goto_d

    .line 299
    :cond_1d
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private greylist-max-o notifyLocaleChanged()V
    .registers 5

    .line 285
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 286
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 287
    :try_start_7
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 288
    .local v3, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onLocaleChanged(Ljava/util/Locale;)V

    .line 289
    .end local v3    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    goto :goto_d

    .line 290
    :cond_1d
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private blacklist notifySystemAudioCaptionChanged()V
    .registers 5

    .line 303
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    move-result v0

    .line 304
    .local v0, "enabled":Z
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 305
    :try_start_7
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 306
    .local v3, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onSystemAudioCaptioningChanged(Z)V

    .line 307
    .end local v3    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    goto :goto_d

    .line 308
    :cond_1d
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private blacklist notifySystemAudioCaptionUiChanged()V
    .registers 5

    .line 312
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningUiEnabled()Z

    move-result v0

    .line 313
    .local v0, "enabled":Z
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 314
    :try_start_7
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 315
    .local v3, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onSystemAudioCaptioningUiChanged(Z)V

    .line 316
    .end local v3    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    goto :goto_d

    .line 317
    :cond_1d
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private greylist-max-o notifyUserStyleChanged()V
    .registers 5

    .line 276
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 277
    .local v0, "userStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 278
    :try_start_7
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 279
    .local v3, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v3, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 280
    .end local v3    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    goto :goto_d

    .line 281
    :cond_1d
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private greylist-max-o registerObserver(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 213
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 215
    const-string v1, "accessibility_captioning_enabled"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 216
    const-string v1, "accessibility_captioning_foreground_color"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 217
    const-string v1, "accessibility_captioning_background_color"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 218
    const-string v1, "accessibility_captioning_window_color"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 219
    const-string v1, "accessibility_captioning_edge_type"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 220
    const-string v1, "accessibility_captioning_edge_color"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 221
    const-string v1, "accessibility_captioning_typeface"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 222
    const-string v1, "accessibility_captioning_font_scale"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 223
    const-string v1, "accessibility_captioning_locale"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 224
    const-string v1, "accessibility_captioning_preset"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 225
    const-string v1, "odi_captions_enabled"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 226
    const-string v1, "odi_captions_volume_ui_enabled"

    invoke-direct {p0, v1}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    .line 229
    :cond_47
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public final whitelist getFontScale()F
    .registers 4

    .line 125
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final whitelist getLocale()Ljava/util/Locale;
    .registers 7

    .line 104
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "rawLocale":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 106
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "splitLocale":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_38

    goto :goto_36

    .line 109
    :pswitch_17
    new-instance v2, Ljava/util/Locale;

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v2, v4, v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 111
    :pswitch_24
    new-instance v2, Ljava/util/Locale;

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-direct {v2, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 113
    :pswitch_2e
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v4

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 117
    .end local v1    # "splitLocale":[Ljava/lang/String;
    :cond_36
    :goto_36
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_24
        :pswitch_17
    .end packed-switch
.end method

.method public final greylist-max-o getRawLocale()Ljava/lang/String;
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getRawUserStyle()I
    .registers 4

    .line 134
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_preset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 3

    .line 144
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 145
    .local v0, "preset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 146
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    return-object v1

    .line 149
    :cond_e
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public whitelist isCallCaptioningEnabled()Z
    .registers 3

    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x111027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 260
    :catch_a
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method public final whitelist isEnabled()Z
    .registers 4

    .line 84
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    move v2, v1

    :cond_d
    return v2
.end method

.method public final whitelist isSystemAudioCaptioningEnabled()Z
    .registers 5

    .line 156
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 156
    const-string v2, "odi_captions_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v3, v1

    :cond_13
    return v3
.end method

.method public final whitelist isSystemAudioCaptioningUiEnabled()Z
    .registers 3

    .line 183
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 183
    :goto_15
    return v0
.end method

.method public whitelist removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 244
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 248
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 250
    :cond_17
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final whitelist setSystemAudioCaptioningEnabled(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_f

    .line 174
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 174
    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->setSystemAudioCaptioningEnabled(ZI)V

    .line 177
    :cond_f
    return-void
.end method

.method public final whitelist setSystemAudioCaptioningUiEnabled(Z)V
    .registers 4
    .param p1, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 200
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_f

    .line 201
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 201
    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->setSystemAudioCaptioningUiEnabled(ZI)V

    .line 204
    :cond_f
    return-void
.end method
