.class public final Lcom/android/internal/app/NightDisplayController;
.super Ljava/lang/Object;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/NightDisplayController$Callback;,
        Lcom/android/internal/app/NightDisplayController$LocalTime;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NightDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/NightDisplayController;->onSettingChanged(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    #@7
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@9
    .line 89
    iput p2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@b
    .line 91
    new-instance v0, Lcom/android/internal/app/NightDisplayController$1;

    #@d
    new-instance v1, Landroid/os/Handler;

    #@f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/NightDisplayController$1;-><init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V

    #@19
    iput-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    #@1b
    .line 87
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    const v1, 0x112003e

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "setting"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 242
    const-string/jumbo v0, "night_display_activated"

    #@7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 244
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@f
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    #@12
    move-result v1

    #@13
    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onActivated(Z)V

    #@16
    .line 236
    :cond_0
    :goto_0
    return-void

    #@17
    .line 242
    :cond_1
    const-string/jumbo v0, "night_display_auto_mode"

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_2

    #@20
    .line 247
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@22
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    #@25
    move-result v1

    #@26
    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onAutoModeChanged(I)V

    #@29
    goto :goto_0

    #@2a
    .line 242
    :cond_2
    const-string/jumbo v0, "night_display_custom_start_time"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3

    #@33
    .line 250
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@35
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@38
    move-result-object v1

    #@39
    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    #@3c
    goto :goto_0

    #@3d
    .line 242
    :cond_3
    const-string/jumbo v0, "night_display_custom_end_time"

    #@40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_0

    #@46
    .line 253
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@48
    invoke-virtual {p0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@4b
    move-result-object v1

    #@4c
    invoke-interface {v0, v1}, Lcom/android/internal/app/NightDisplayController$Callback;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    #@4f
    goto :goto_0
.end method


# virtual methods
.method public getAutoMode()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 129
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 130
    const-string/jumbo v2, "night_display_auto_mode"

    #@a
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@c
    .line 129
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v0

    #@10
    .line 131
    .local v0, "autoMode":I
    if-ne v0, v4, :cond_0

    #@12
    .line 135
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v1

    #@18
    .line 136
    const v2, 0x10e004b

    #@1b
    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1e
    move-result v0

    #@1f
    .line 139
    :cond_0
    if-eqz v0, :cond_1

    #@21
    .line 140
    const/4 v1, 0x1

    #@22
    if-eq v0, v1, :cond_1

    #@24
    .line 141
    const/4 v1, 0x2

    #@25
    if-eq v0, v1, :cond_1

    #@27
    .line 142
    const-string/jumbo v1, "NightDisplayController"

    #@2a
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "Invalid autoMode: "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 143
    const/4 v0, 0x0

    #@42
    .line 146
    :cond_1
    return v0
.end method

.method public getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 207
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 208
    const-string/jumbo v2, "night_display_custom_end_time"

    #@a
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@c
    .line 207
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v0

    #@10
    .line 209
    .local v0, "endTimeValue":I
    if-ne v0, v4, :cond_0

    #@12
    .line 214
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v1

    #@18
    .line 215
    const v2, 0x10e004d

    #@1b
    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1e
    move-result v0

    #@1f
    .line 218
    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@22
    move-result-object v1

    #@23
    return-object v1
.end method

.method public getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 173
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    .line 174
    const-string/jumbo v2, "night_display_custom_start_time"

    #@a
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@c
    .line 173
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v0

    #@10
    .line 175
    .local v0, "startTimeValue":I
    if-ne v0, v4, :cond_0

    #@12
    .line 180
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v1

    #@18
    .line 181
    const v2, 0x10e004c

    #@1b
    .line 180
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1e
    move-result v0

    #@1f
    .line 184
    :cond_0
    invoke-static {v0}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap0(I)Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@22
    move-result-object v1

    #@23
    return-object v1
.end method

.method public isActivated()Z
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 108
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    .line 109
    const-string/jumbo v3, "night_display_activated"

    #@b
    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@d
    .line 108
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v2

    #@11
    if-ne v2, v0, :cond_0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    move v0, v1

    #@15
    goto :goto_0
.end method

.method public setActivated(Z)Z
    .locals 4
    .param p1, "activated"    # Z

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 120
    const-string/jumbo v2, "night_display_activated"

    #@9
    if-eqz p1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@e
    .line 119
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 120
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public setAutoMode(I)Z
    .locals 3
    .param p1, "autoMode"    # I

    #@0
    .prologue
    .line 158
    if-eqz p1, :cond_0

    #@2
    .line 159
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 160
    const/4 v0, 0x2

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Invalid autoMode: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@27
    move-result-object v0

    #@28
    .line 165
    const-string/jumbo v1, "night_display_auto_mode"

    #@2b
    iget v2, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@2d
    .line 164
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@30
    move-result v0

    #@31
    return v0
.end method

.method public setCustomEndTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z
    .locals 4
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@0
    .prologue
    .line 229
    if-nez p1, :cond_0

    #@2
    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "endTime cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v0

    #@11
    .line 233
    const-string/jumbo v1, "night_display_custom_end_time"

    #@14
    invoke-static {p1}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I

    #@17
    move-result v2

    #@18
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@1a
    .line 232
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public setCustomStartTime(Lcom/android/internal/app/NightDisplayController$LocalTime;)Z
    .locals 4
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    #@0
    .prologue
    .line 195
    if-nez p1, :cond_0

    #@2
    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "startTime cannot be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v0

    #@11
    .line 199
    const-string/jumbo v1, "night_display_custom_start_time"

    #@14
    invoke-static {p1}, Lcom/android/internal/app/NightDisplayController$LocalTime;->-wrap1(Lcom/android/internal/app/NightDisplayController$LocalTime;)I

    #@17
    move-result v2

    #@18
    iget v3, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@1a
    .line 198
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/internal/app/NightDisplayController$Callback;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 263
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@3
    .line 264
    .local v1, "oldCallback":Lcom/android/internal/app/NightDisplayController$Callback;
    if-eq v1, p1, :cond_0

    #@5
    .line 265
    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController;->mCallback:Lcom/android/internal/app/NightDisplayController$Callback;

    #@7
    .line 267
    if-nez p1, :cond_1

    #@9
    .line 269
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    #@11
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@14
    .line 262
    :cond_0
    :goto_0
    return-void

    #@15
    .line 270
    :cond_1
    if-nez v1, :cond_0

    #@17
    .line 272
    iget-object v2, p0, Lcom/android/internal/app/NightDisplayController;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1c
    move-result-object v0

    #@1d
    .line 273
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "night_display_activated"

    #@20
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@23
    move-result-object v2

    #@24
    .line 274
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    #@26
    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@28
    .line 273
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@2b
    .line 275
    const-string/jumbo v2, "night_display_auto_mode"

    #@2e
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@31
    move-result-object v2

    #@32
    .line 276
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    #@34
    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@36
    .line 275
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@39
    .line 277
    const-string/jumbo v2, "night_display_custom_start_time"

    #@3c
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@3f
    move-result-object v2

    #@40
    .line 278
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    #@42
    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@44
    .line 277
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@47
    .line 279
    const-string/jumbo v2, "night_display_custom_end_time"

    #@4a
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@4d
    move-result-object v2

    #@4e
    .line 280
    iget-object v3, p0, Lcom/android/internal/app/NightDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    #@50
    iget v4, p0, Lcom/android/internal/app/NightDisplayController;->mUserId:I

    #@52
    .line 279
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@55
    goto :goto_0
.end method
