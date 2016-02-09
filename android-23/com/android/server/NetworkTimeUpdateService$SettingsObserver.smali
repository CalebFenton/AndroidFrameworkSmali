.class Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I

    #@0
    .prologue
    .line 282
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@3
    .line 283
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    #@5
    .line 284
    iput p2, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    #@7
    .line 281
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    .line 289
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "auto_time"

    #@7
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    .line 290
    const/4 v2, 0x0

    #@c
    .line 289
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@f
    .line 287
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    #@2
    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 294
    return-void
.end method
