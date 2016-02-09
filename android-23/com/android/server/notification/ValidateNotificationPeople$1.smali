.class Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ValidateNotificationPeople;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    #@3
    .line 103
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get0()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@b
    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->-get2(Lcom/android/server/notification/ValidateNotificationPeople;)I

    #@e
    move-result v0

    #@f
    rem-int/lit8 v0, v0, 0x64

    #@11
    if-nez v0, :cond_1

    #@13
    .line 104
    :cond_0
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-get1()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    const-string/jumbo v0, "ValidateNoPeople"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "mEvictionCount: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@2a
    invoke-static {v2}, Lcom/android/server/notification/ValidateNotificationPeople;->-get2(Lcom/android/server/notification/ValidateNotificationPeople;)I

    #@2d
    move-result v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@3b
    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->-get3(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    #@42
    .line 107
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    #@44
    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->-get2(Lcom/android/server/notification/ValidateNotificationPeople;)I

    #@47
    move-result v1

    #@48
    add-int/lit8 v1, v1, 0x1

    #@4a
    invoke-static {v0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->-set0(Lcom/android/server/notification/ValidateNotificationPeople;I)I

    #@4d
    .line 101
    return-void
.end method
