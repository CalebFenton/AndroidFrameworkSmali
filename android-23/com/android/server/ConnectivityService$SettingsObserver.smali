.class Lcom/android/server/ConnectivityService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


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
    .line 2913
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@4
    .line 2914
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    #@b
    .line 2915
    iput-object p1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mContext:Landroid/content/Context;

    #@d
    .line 2916
    iput-object p2, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mHandler:Landroid/os/Handler;

    #@f
    .line 2912
    return-void
.end method


# virtual methods
.method observe(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "what"    # I

    #@0
    .prologue
    .line 2920
    iget-object v1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 2921
    iget-object v1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    .line 2922
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    #@10
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@13
    .line 2919
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 2927
    const-string/jumbo v0, "ConnectivityService"

    #@3
    const-string/jumbo v1, "Should never be reached."

    #@6
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 2926
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2932
    iget-object v1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mUriEventMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 2933
    .local v0, "what":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@a
    .line 2934
    iget-object v1, p0, Lcom/android/server/ConnectivityService$SettingsObserver;->mHandler:Landroid/os/Handler;

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
    .line 2931
    :goto_0
    return-void

    #@18
    .line 2936
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "No matching event to send for URI="

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    #@2f
    goto :goto_0
.end method
