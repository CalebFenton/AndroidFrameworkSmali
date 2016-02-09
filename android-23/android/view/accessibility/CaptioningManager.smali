.class public Landroid/view/accessibility/CaptioningManager;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/CaptioningManager$MyContentObserver;,
        Landroid/view/accessibility/CaptioningManager$CaptionStyle;,
        Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;,
        Landroid/view/accessibility/CaptioningManager$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:I = 0x0

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final DEFAULT_PRESET:I


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyEnabledChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyFontScaleChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyLocaleChanged()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/view/accessibility/CaptioningManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager;->notifyUserStyleChanged()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@a
    .line 257
    new-instance v1, Landroid/view/accessibility/CaptioningManager$1;

    #@c
    invoke-direct {v1, p0}, Landroid/view/accessibility/CaptioningManager$1;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    #@f
    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mStyleChangedRunnable:Ljava/lang/Runnable;

    #@11
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@17
    .line 67
    new-instance v0, Landroid/os/Handler;

    #@19
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@20
    .line 68
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/view/accessibility/CaptioningManager$MyContentObserver;

    #@22
    invoke-direct {v1, p0, v0}, Landroid/view/accessibility/CaptioningManager$MyContentObserver;-><init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V

    #@25
    iput-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    #@27
    .line 64
    return-void
.end method

.method private notifyEnabledChanged()V
    .locals 5

    #@0
    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    #@3
    move-result v0

    #@4
    .line 190
    .local v0, "enabled":Z
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@6
    monitor-enter v4

    #@7
    .line 191
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@19
    .line 192
    .local v1, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onEnabledChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 190
    .end local v1    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@21
    .line 188
    return-void
.end method

.method private notifyFontScaleChanged()V
    .locals 5

    #@0
    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    #@3
    move-result v0

    #@4
    .line 217
    .local v0, "fontScale":F
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@6
    monitor-enter v4

    #@7
    .line 218
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@19
    .line 219
    .local v1, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onFontScaleChanged(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 217
    .end local v1    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@21
    .line 215
    return-void
.end method

.method private notifyLocaleChanged()V
    .locals 5

    #@0
    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    .line 208
    .local v2, "locale":Ljava/util/Locale;
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@6
    monitor-enter v4

    #@7
    .line 209
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@19
    .line 210
    .local v0, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v0, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onLocaleChanged(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 208
    .end local v0    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@21
    .line 206
    return-void
.end method

.method private notifyUserStyleChanged()V
    .locals 5

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@3
    move-result-object v2

    #@4
    .line 199
    .local v2, "userStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v4, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@6
    monitor-enter v4

    #@7
    .line 200
    :try_start_0
    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@19
    .line 201
    .local v0, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v0, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    .line 199
    .end local v0    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v4

    #@1f
    throw v3

    #@20
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    #@21
    .line 197
    return-void
.end method

.method private registerObserver(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@c
    .line 168
    return-void
.end method


# virtual methods
.method public addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@0
    .prologue
    .line 150
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 151
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 152
    const-string/jumbo v0, "accessibility_captioning_enabled"

    #@e
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@11
    .line 153
    const-string/jumbo v0, "accessibility_captioning_foreground_color"

    #@14
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@17
    .line 154
    const-string/jumbo v0, "accessibility_captioning_background_color"

    #@1a
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@1d
    .line 155
    const-string/jumbo v0, "accessibility_captioning_window_color"

    #@20
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@23
    .line 156
    const-string/jumbo v0, "accessibility_captioning_edge_type"

    #@26
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@29
    .line 157
    const-string/jumbo v0, "accessibility_captioning_edge_color"

    #@2c
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@2f
    .line 158
    const-string/jumbo v0, "accessibility_captioning_typeface"

    #@32
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@35
    .line 159
    const-string/jumbo v0, "accessibility_captioning_font_scale"

    #@38
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@3b
    .line 160
    const-string/jumbo v0, "accessibility_captioning_locale"

    #@3e
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@41
    .line 161
    const-string/jumbo v0, "accessibility_captioning_preset"

    #@44
    invoke-direct {p0, v0}, Landroid/view/accessibility/CaptioningManager;->registerObserver(Ljava/lang/String;)V

    #@47
    .line 164
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4c
    monitor-exit v1

    #@4d
    .line 149
    return-void

    #@4e
    .line 150
    :catchall_0
    move-exception v0

    #@4f
    monitor-exit v1

    #@50
    throw v0
.end method

.method public final getFontScale()F
    .locals 3

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "accessibility_captioning_font_scale"

    #@5
    const/high16 v2, 0x3f800000    # 1.0f

    #@7
    .line 116
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 95
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 96
    .local v0, "rawLocale":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 97
    const-string/jumbo v2, "_"

    #@f
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    .line 98
    .local v1, "splitLocale":[Ljava/lang/String;
    array-length v2, v1

    #@14
    packed-switch v2, :pswitch_data_0

    #@17
    .line 108
    .end local v1    # "splitLocale":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    #@18
    return-object v2

    #@19
    .line 100
    .restart local v1    # "splitLocale":[Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/util/Locale;

    #@1b
    aget-object v3, v1, v3

    #@1d
    aget-object v4, v1, v4

    #@1f
    const/4 v5, 0x2

    #@20
    aget-object v5, v1, v5

    #@22
    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@25
    return-object v2

    #@26
    .line 102
    :pswitch_1
    new-instance v2, Ljava/util/Locale;

    #@28
    aget-object v3, v1, v3

    #@2a
    aget-object v4, v1, v4

    #@2c
    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    return-object v2

    #@30
    .line 104
    :pswitch_2
    new-instance v2, Ljava/util/Locale;

    #@32
    aget-object v3, v1, v3

    #@34
    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@37
    return-object v2

    #@38
    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getRawLocale()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "accessibility_captioning_locale"

    #@5
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getRawUserStyle()I
    .locals 3

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    const-string/jumbo v1, "accessibility_captioning_preset"

    #@5
    const/4 v2, 0x0

    #@6
    .line 125
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 2

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    #@3
    move-result v0

    #@4
    .line 136
    .local v0, "preset":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 137
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@9
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 140
    :cond_0
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@10
    aget-object v1, v1, v0

    #@12
    return-object v1
.end method

.method public final isEnabled()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 76
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@4
    const-string/jumbo v3, "accessibility_captioning_enabled"

    #@7
    .line 75
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    if-ne v2, v0, :cond_0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    move v0, v1

    #@f
    goto :goto_0
.end method

.method public removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@0
    .prologue
    .line 179
    iget-object v1, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    .line 180
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 182
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 183
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager;->mContentResolver:Landroid/content/ContentResolver;

    #@12
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager;->mContentObserver:Landroid/database/ContentObserver;

    #@14
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :cond_0
    monitor-exit v1

    #@18
    .line 178
    return-void

    #@19
    .line 179
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method
