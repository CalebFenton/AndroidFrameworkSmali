.class abstract Lcom/android/commands/content/Content$Command;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Command"
.end annotation


# instance fields
.field final mUri:Landroid/net/Uri;

.field final mUserId:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 401
    iput-object p1, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    #@5
    .line 402
    iput p2, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    #@7
    .line 400
    return-void
.end method

.method public static resolveCallingPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 431
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 441
    const/4 v0, 0x0

    #@8
    return-object v0

    #@9
    .line 433
    :sswitch_0
    const-string/jumbo v0, "root"

    #@c
    return-object v0

    #@d
    .line 437
    :sswitch_1
    const-string/jumbo v0, "com.android.shell"

    #@10
    return-object v0

    #@11
    .line 431
    nop

    #@12
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final execute()V
    .locals 9

    #@0
    .prologue
    .line 406
    iget-object v6, p0, Lcom/android/commands/content/Content$Command;->mUri:Landroid/net/Uri;

    #@2
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 408
    .local v4, "providerName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@9
    move-result-object v0

    #@a
    .line 409
    .local v0, "activityManager":Landroid/app/IActivityManager;
    const/4 v3, 0x0

    #@b
    .line 410
    .local v3, "provider":Landroid/content/IContentProvider;
    new-instance v5, Landroid/os/Binder;

    #@d
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 413
    .local v5, "token":Landroid/os/IBinder;
    :try_start_1
    iget v6, p0, Lcom/android/commands/content/Content$Command;->mUserId:I

    #@12
    .line 412
    invoke-interface {v0, v4, v6, v5}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    #@15
    move-result-object v2

    #@16
    .line 414
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    if-nez v2, :cond_2

    #@18
    .line 415
    new-instance v6, Ljava/lang/IllegalStateException;

    #@1a
    new-instance v7, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v8, "Could not find provider: "

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v7

    #@2e
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    .line 419
    .end local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v6

    #@33
    .line 420
    if-eqz v3, :cond_0

    #@35
    .line 421
    :try_start_2
    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    #@38
    .line 419
    :cond_0
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@39
    .line 424
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v5    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    #@3a
    .line 425
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    new-instance v7, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v8, "Error while accessing provider:"

    #@44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v7

    #@4c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@53
    .line 426
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    #@56
    .line 405
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    #@57
    .line 417
    .restart local v0    # "activityManager":Landroid/app/IActivityManager;
    .restart local v2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v3    # "provider":Landroid/content/IContentProvider;
    .restart local v5    # "token":Landroid/os/IBinder;
    :cond_2
    :try_start_3
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@59
    .line 418
    .local v3, "provider":Landroid/content/IContentProvider;
    invoke-virtual {p0, v3}, Lcom/android/commands/content/Content$Command;->onExecute(Landroid/content/IContentProvider;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5c
    .line 420
    if-eqz v3, :cond_1

    #@5e
    .line 421
    :try_start_4
    invoke-interface {v0, v4, v5}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    #@61
    goto :goto_0
.end method

.method protected abstract onExecute(Landroid/content/IContentProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
