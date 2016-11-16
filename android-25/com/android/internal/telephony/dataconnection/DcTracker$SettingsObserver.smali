.class Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DcTracker.SettingsObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUriEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 371
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@4
    .line 372
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    #@b
    .line 373
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mContext:Landroid/content/Context;

    #@d
    .line 374
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mHandler:Landroid/os/Handler;

    #@f
    .line 370
    return-void
.end method


# virtual methods
.method observe(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    .line 380
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@13
    .line 377
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 390
    const-string/jumbo v0, "DcTracker.SettingsObserver"

    #@3
    const-string/jumbo v1, "Should never be reached."

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 389
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 396
    .local v0, "what":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mHandler:Landroid/os/Handler;

    #@c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v2

    #@10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@17
    .line 394
    :goto_0
    return-void

    #@18
    .line 399
    :cond_0
    const-string/jumbo v1, "DcTracker.SettingsObserver"

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "No matching event to send for URI="

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    goto :goto_0
.end method

.method unobserve()V
    .locals 2

    #@0
    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SettingsObserver;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 385
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@9
    .line 383
    return-void
.end method
