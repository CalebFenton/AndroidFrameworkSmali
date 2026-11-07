.class public abstract Landroid/content/pm/ShortcutServiceInternal;
.super Ljava/lang/Object;
.source "ShortcutServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-o addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
.end method

.method public abstract blacklist addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
.end method

.method public abstract blacklist areShortcutsSupportedOnHomeScreen(I)Z
.end method

.method public abstract blacklist cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract greylist-max-o createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
.end method

.method public abstract blacklist getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract greylist-max-o getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract blacklist getShortcutIconUri(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract blacklist getShortcutStartingThemeResName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract blacklist getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o hasShortcutHostPermission(ILjava/lang/String;II)Z
.end method

.method public abstract greylist-max-o isForegroundDefaultLauncher(Ljava/lang/String;I)Z
.end method

.method public abstract greylist-max-o isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract greylist-max-o isRequestPinItemSupported(II)Z
.end method

.method public abstract blacklist isSharingShortcut(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentFilter;)Z
.end method

.method public abstract greylist-max-o pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract blacklist removeShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
.end method

.method public abstract greylist-max-o requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
.end method

.method public abstract greylist-max-o setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract blacklist uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method
