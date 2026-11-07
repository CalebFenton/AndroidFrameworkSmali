.class public interface abstract Landroid/service/quickaccesswallet/QuickAccessWalletClient;
.super Ljava/lang/Object;
.source "QuickAccessWalletClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;,
        Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;
    }
.end annotation


# direct methods
.method public static blacklist create(Landroid/content/Context;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/service/quickaccesswallet/QuickAccessWalletClient;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/util/concurrent/Executor;)Landroid/service/quickaccesswallet/QuickAccessWalletClient;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bgExecutor"    # Ljava/util/concurrent/Executor;

    .line 59
    new-instance v0, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;

    invoke-direct {v0, p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletClientImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist addWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end method

.method public abstract blacklist addWalletServiceEventListener(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end method

.method public abstract blacklist createWalletIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist createWalletSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist disconnect()V
.end method

.method public abstract blacklist getGestureTargetActivityPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$GesturePendingIntentCallback;)V
.end method

.method public abstract blacklist getLogo()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract blacklist getServiceLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getShortcutLongLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getShortcutShortLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getTileIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract blacklist getUser()Landroid/os/UserHandle;
.end method

.method public abstract blacklist getWalletCards(Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
.end method

.method public abstract blacklist getWalletCards(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/GetWalletCardsRequest;Landroid/service/quickaccesswallet/QuickAccessWalletClient$OnWalletCardsRetrievedCallback;)V
.end method

.method public abstract blacklist getWalletPendingIntent(Ljava/util/concurrent/Executor;Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletPendingIntentCallback;)V
.end method

.method public abstract blacklist isWalletFeatureAvailable()Z
.end method

.method public abstract blacklist isWalletFeatureAvailableWhenDeviceLocked()Z
.end method

.method public abstract blacklist isWalletServiceAvailable()Z
.end method

.method public abstract blacklist notifyWalletDismissed()V
.end method

.method public abstract blacklist removeWalletServiceEventListener(Landroid/service/quickaccesswallet/QuickAccessWalletClient$WalletServiceEventListener;)V
.end method

.method public abstract blacklist selectWalletCard(Landroid/service/quickaccesswallet/SelectWalletCardRequest;)V
.end method
