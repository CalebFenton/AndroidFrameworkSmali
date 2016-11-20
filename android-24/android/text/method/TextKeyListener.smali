.class public Landroid/text/method/TextKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "TextKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/TextKeyListener$Capitalize;,
        Landroid/text/method/TextKeyListener$NullKeyListener;,
        Landroid/text/method/TextKeyListener$SettingsObserver;
    }
.end annotation


# static fields
.field static final ACTIVE:Ljava/lang/Object;

.field static final AUTO_CAP:I = 0x1

.field static final AUTO_PERIOD:I = 0x4

.field static final AUTO_TEXT:I = 0x2

.field static final CAPPED:Ljava/lang/Object;

.field static final INHIBIT_REPLACEMENT:Ljava/lang/Object;

.field static final LAST_TYPED:Ljava/lang/Object;

.field static final SHOW_PASSWORD:I = 0x8

.field private static sInstance:[Landroid/text/method/TextKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

.field private mPrefs:I

.field private mPrefsInited:Z

.field private mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/text/method/TextKeyListener;)Ljava/lang/ref/WeakReference;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/text/method/TextKeyListener;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/text/method/TextKeyListener;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    mul-int/lit8 v0, v0, 0x2

    #@7
    new-array v0, v0, [Landroid/text/method/TextKeyListener;

    #@9
    .line 42
    sput-object v0, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    #@b
    .line 45
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@d
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@10
    sput-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@12
    .line 46
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@14
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@17
    sput-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@19
    .line 47
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@1b
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@1e
    sput-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@20
    .line 48
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    #@22
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    #@25
    sput-object v0, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    #@27
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@5
    .line 72
    iput-boolean p2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    #@7
    .line 70
    return-void
.end method

.method public static clear(Landroid/text/Editable;)V
    .locals 6
    .param p0, "e"    # Landroid/text/Editable;

    #@0
    .prologue
    .line 162
    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    #@3
    .line 163
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@5
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@8
    .line 164
    sget-object v3, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    #@a
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@d
    .line 165
    sget-object v3, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    #@f
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@12
    .line 166
    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    #@14
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@17
    .line 168
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    #@1a
    move-result v3

    #@1b
    .line 169
    const-class v4, Landroid/text/method/QwertyKeyListener$Replaced;

    #@1d
    .line 168
    const/4 v5, 0x0

    #@1e
    invoke-interface {p0, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, [Landroid/text/method/QwertyKeyListener$Replaced;

    #@24
    .line 170
    .local v2, "repl":[Landroid/text/method/QwertyKeyListener$Replaced;
    array-length v0, v2

    #@25
    .line 171
    .local v0, "count":I
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@28
    .line 172
    aget-object v3, v2, v1

    #@2a
    invoke-interface {p0, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    #@2d
    .line 171
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 161
    :cond_0
    return-void
.end method

.method public static getInstance()Landroid/text/method/TextKeyListener;
    .locals 2

    #@0
    .prologue
    .line 98
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;
    .locals 3
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    #@3
    move-result v1

    #@4
    mul-int/lit8 v2, v1, 0x2

    #@6
    if-eqz p0, :cond_1

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    add-int v0, v2, v1

    #@b
    .line 86
    .local v0, "off":I
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    #@d
    aget-object v1, v1, v0

    #@f
    if-nez v1, :cond_0

    #@11
    .line 87
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    #@13
    new-instance v2, Landroid/text/method/TextKeyListener;

    #@15
    invoke-direct {v2, p1, p0}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    #@18
    aput-object v2, v1, v0

    #@1a
    .line 90
    :cond_0
    sget-object v1, Landroid/text/method/TextKeyListener;->sInstance:[Landroid/text/method/TextKeyListener;

    #@1c
    aget-object v1, v1, v0

    #@1e
    return-object v1

    #@1f
    .line 84
    .end local v0    # "off":I
    :cond_1
    const/4 v1, 0x0

    #@20
    goto :goto_0
.end method

.method private getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    #@3
    move-result-object v1

    #@4
    .line 188
    .local v1, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    #@7
    move-result v0

    #@8
    .line 190
    .local v0, "kind":I
    const/4 v2, 0x3

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 191
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    #@d
    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@f
    invoke-static {v2, v3}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    #@12
    move-result-object v2

    #@13
    return-object v2

    #@14
    .line 192
    :cond_0
    const/4 v2, 0x1

    #@15
    if-ne v0, v2, :cond_1

    #@17
    .line 193
    iget-boolean v2, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    #@19
    iget-object v3, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@1b
    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 194
    :cond_1
    const/4 v2, 0x4

    #@21
    if-eq v0, v2, :cond_2

    #@23
    .line 195
    const/4 v2, 0x5

    #@24
    if-ne v0, v2, :cond_3

    #@26
    .line 201
    :cond_2
    invoke-static {}, Landroid/text/method/QwertyKeyListener;->getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;

    #@29
    move-result-object v2

    #@2a
    return-object v2

    #@2b
    .line 204
    :cond_3
    invoke-static {}, Landroid/text/method/TextKeyListener$NullKeyListener;->getInstance()Landroid/text/method/TextKeyListener$NullKeyListener;

    #@2e
    move-result-object v2

    #@2f
    return-object v2
.end method

.method private initPrefs(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    .line 260
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@7
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@a
    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@c
    .line 261
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    #@e
    if-nez v1, :cond_0

    #@10
    .line 262
    new-instance v1, Landroid/text/method/TextKeyListener$SettingsObserver;

    #@12
    invoke-direct {v1, p0}, Landroid/text/method/TextKeyListener$SettingsObserver;-><init>(Landroid/text/method/TextKeyListener;)V

    #@15
    iput-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    #@17
    .line 263
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    #@19
    iget-object v2, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    #@1b
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@1e
    .line 266
    :cond_0
    invoke-direct {p0, v0}, Landroid/text/method/TextKeyListener;->updatePrefs(Landroid/content/ContentResolver;)V

    #@21
    .line 267
    iput-boolean v3, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    #@23
    .line 258
    return-void
.end method

.method public static shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p0, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 115
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    #@4
    if-ne p0, v0, :cond_0

    #@6
    .line 116
    return v2

    #@7
    .line 118
    :cond_0
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    #@9
    if-ne p0, v0, :cond_1

    #@b
    .line 119
    return v1

    #@c
    .line 122
    :cond_1
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    #@e
    if-ne p0, v0, :cond_2

    #@10
    .line 123
    const/16 v0, 0x2000

    #@12
    .line 122
    :goto_0
    invoke-static {p1, p2, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_3

    #@18
    move v0, v1

    #@19
    :goto_1
    return v0

    #@1a
    .line 123
    :cond_2
    const/16 v0, 0x4000

    #@1c
    goto :goto_0

    #@1d
    :cond_3
    move v0, v2

    #@1e
    .line 122
    goto :goto_1
.end method

.method private updatePrefs(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 291
    const-string/jumbo v6, "auto_caps"

    #@5
    invoke-static {p1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@8
    move-result v6

    #@9
    if-lez v6, :cond_1

    #@b
    const/4 v0, 0x1

    #@c
    .line 292
    .local v0, "cap":Z
    :goto_0
    const-string/jumbo v6, "auto_replace"

    #@f
    invoke-static {p1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@12
    move-result v6

    #@13
    if-lez v6, :cond_2

    #@15
    const/4 v3, 0x1

    #@16
    .line 293
    .local v3, "text":Z
    :goto_1
    const-string/jumbo v6, "auto_punctuate"

    #@19
    invoke-static {p1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1c
    move-result v6

    #@1d
    if-lez v6, :cond_3

    #@1f
    const/4 v1, 0x1

    #@20
    .line 294
    .local v1, "period":Z
    :goto_2
    const-string/jumbo v6, "show_password"

    #@23
    invoke-static {p1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@26
    move-result v6

    #@27
    if-lez v6, :cond_4

    #@29
    const/4 v2, 0x1

    #@2a
    .line 296
    .local v2, "pw":Z
    :goto_3
    if-eqz v0, :cond_5

    #@2c
    move v6, v5

    #@2d
    .line 297
    :goto_4
    if-eqz v3, :cond_6

    #@2f
    const/4 v5, 0x2

    #@30
    .line 296
    :goto_5
    or-int/2addr v6, v5

    #@31
    .line 298
    if-eqz v1, :cond_7

    #@33
    const/4 v5, 0x4

    #@34
    .line 296
    :goto_6
    or-int/2addr v5, v6

    #@35
    .line 299
    if-eqz v2, :cond_0

    #@37
    const/16 v4, 0x8

    #@39
    .line 296
    :cond_0
    or-int/2addr v4, v5

    #@3a
    iput v4, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    #@3c
    .line 290
    return-void

    #@3d
    .line 291
    .end local v0    # "cap":Z
    .end local v1    # "period":Z
    .end local v2    # "pw":Z
    .end local v3    # "text":Z
    :cond_1
    const/4 v0, 0x0

    #@3e
    .restart local v0    # "cap":Z
    goto :goto_0

    #@3f
    .line 292
    :cond_2
    const/4 v3, 0x0

    #@40
    .restart local v3    # "text":Z
    goto :goto_1

    #@41
    .line 293
    :cond_3
    const/4 v1, 0x0

    #@42
    .restart local v1    # "period":Z
    goto :goto_2

    #@43
    .line 294
    :cond_4
    const/4 v2, 0x0

    #@44
    .restart local v2    # "pw":Z
    goto :goto_3

    #@45
    :cond_5
    move v6, v4

    #@46
    .line 296
    goto :goto_4

    #@47
    :cond_6
    move v5, v4

    #@48
    .line 297
    goto :goto_5

    #@49
    :cond_7
    move v5, v4

    #@4a
    .line 298
    goto :goto_6
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    #@2
    iget-boolean v1, p0, Landroid/text/method/TextKeyListener;->mAutoText:Z

    #@4
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method getPrefs(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 303
    monitor-enter p0

    #@1
    .line 304
    :try_start_0
    iget-boolean v0, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 305
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/method/TextKeyListener;->initPrefs(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_1
    monitor-exit p0

    #@11
    .line 309
    iget v0, p0, Landroid/text/method/TextKeyListener;->mPrefs:I

    #@13
    return v0

    #@14
    .line 303
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 134
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    #@3
    move-result-object v0

    #@4
    .line 136
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 149
    invoke-direct {p0, p3}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    #@3
    move-result-object v0

    #@4
    .line 151
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 142
    invoke-direct {p0, p4}, Landroid/text/method/TextKeyListener;->getKeyListener(Landroid/view/KeyEvent;)Landroid/text/method/KeyListener;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "im":Landroid/text/method/KeyListener;
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 176
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "st"    # I
    .param p6, "en"    # I

    #@0
    .prologue
    .line 181
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@2
    if-ne p2, v0, :cond_0

    #@4
    .line 182
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    #@6
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    #@9
    .line 180
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 177
    return-void
.end method

.method public release()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 246
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 247
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/content/ContentResolver;

    #@d
    .line 248
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    #@f
    .line 249
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    #@11
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@14
    .line 250
    iget-object v1, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    #@19
    .line 252
    :cond_0
    iput-object v2, p0, Landroid/text/method/TextKeyListener;->mObserver:Landroid/text/method/TextKeyListener$SettingsObserver;

    #@1b
    .line 253
    iput-object v2, p0, Landroid/text/method/TextKeyListener;->mResolver:Ljava/lang/ref/WeakReference;

    #@1d
    .line 254
    const/4 v1, 0x0

    #@1e
    iput-boolean v1, p0, Landroid/text/method/TextKeyListener;->mPrefsInited:Z

    #@20
    .line 245
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method
