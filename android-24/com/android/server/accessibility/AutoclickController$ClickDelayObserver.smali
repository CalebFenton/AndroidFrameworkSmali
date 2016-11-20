.class final Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;
.super Landroid/database/ContentObserver;
.source "AutoclickController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClickDelayObserver"
.end annotation


# instance fields
.field private final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field private mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 178
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@3
    .line 171
    const-string/jumbo v0, "accessibility_autoclick_delay"

    #@6
    .line 170
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    #@c
    .line 179
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    #@e
    .line 177
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 232
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@a
    const-string/jumbo v2, "accessibility_autoclick_delay"

    #@d
    .line 233
    iget v3, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    #@f
    const/16 v4, 0x258

    #@11
    .line 231
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@14
    move-result v0

    #@15
    .line 234
    .local v0, "delay":I
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@17
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->updateDelay(I)V

    #@1a
    .line 229
    .end local v0    # "delay":I
    :cond_0
    return-void
.end method

.method public start(Landroid/content/ContentResolver;Lcom/android/server/accessibility/AutoclickController$ClickScheduler;)V
    .locals 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "clickScheduler"    # Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Observer already started."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 198
    :cond_1
    if-nez p1, :cond_2

    #@13
    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    const-string/jumbo v1, "contentResolver not set."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 201
    :cond_2
    if-nez p2, :cond_3

    #@1e
    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    #@20
    const-string/jumbo v1, "clickScheduler not set."

    #@23
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 205
    :cond_3
    iput-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@29
    .line 206
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@2b
    .line 207
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@2d
    iget-object v1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    #@2f
    .line 208
    iget v2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    #@31
    .line 207
    const/4 v3, 0x0

    #@32
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@35
    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    #@37
    const/4 v1, 0x1

    #@38
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->onChange(ZLandroid/net/Uri;)V

    #@3b
    .line 194
    return-void
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "ClickDelayObserver not started."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@13
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@16
    .line 220
    return-void
.end method
