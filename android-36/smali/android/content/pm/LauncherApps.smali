.class public Landroid/content/pm/LauncherApps;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$AppUsageLimit;,
        Landroid/content/pm/LauncherApps$ShortcutQuery;,
        Landroid/content/pm/LauncherApps$Callback;,
        Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;,
        Landroid/content/pm/LauncherApps$CallbackMessageHandler;,
        Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy;,
        Landroid/content/pm/LauncherApps$ShortcutChangeCallback;,
        Landroid/content/pm/LauncherApps$PinItemRequest;,
        Landroid/content/pm/LauncherApps$ShortcutCacheFlags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CONFIRM_PIN_APPWIDGET:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PIN_APPWIDGET"

.field public static final whitelist ACTION_CONFIRM_PIN_SHORTCUT:Ljava/lang/String; = "android.content.pm.action.CONFIRM_PIN_SHORTCUT"

.field static final greylist-max-o DEBUG:Z = false

.field public static final whitelist EXTRA_PIN_ITEM_REQUEST:Ljava/lang/String; = "android.content.pm.extra.PIN_ITEM_REQUEST"

.field public static final blacklist FLAG_CACHE_BUBBLE_SHORTCUTS:I = 0x1

.field public static final blacklist FLAG_CACHE_NOTIFICATION_SHORTCUTS:I = 0x0

.field public static final blacklist FLAG_CACHE_PEOPLE_TILE_SHORTCUTS:I = 0x2

.field private static final blacklist LAUNCHER_USER_INFO_EXTRA_KEY:Ljava/lang/String; = "launcher_user_info"

.field static final greylist-max-o TAG:Ljava/lang/String; = "LauncherApps"


# instance fields
.field private final greylist-max-o mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

.field private final greylist-max-o mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherApps$CallbackMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mPm:Landroid/content/pm/PackageManager;

.field private final greylist-max-p mService:Landroid/content/pm/ILauncherApps;

.field private final blacklist mShortcutChangeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/pm/LauncherApps$ShortcutChangeCallback;",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/pm/IShortcutChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/content/pm/LauncherApps;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 687
    nop

    .line 688
    const-string/jumbo v0, "launcherapps"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 687
    invoke-static {v0}, Landroid/content/pm/ILauncherApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/LauncherApps;-><init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V

    .line 689
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ILauncherApps;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ILauncherApps;

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    .line 2038
    new-instance v0, Landroid/content/pm/LauncherApps$1;

    invoke-direct {v0, p0}, Landroid/content/pm/LauncherApps$1;-><init>(Landroid/content/pm/LauncherApps;)V

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    .line 678
    iput-object p1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 679
    iput-object p2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    .line 680
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    .line 681
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    .line 682
    return-void
.end method

.method private greylist-max-o addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2030
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    .line 2031
    if-nez p2, :cond_b

    .line 2032
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2034
    :cond_b
    new-instance v0, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;-><init>(Landroid/os/Looper;Landroid/content/pm/LauncherApps$Callback;)V

    .line 2035
    .local v0, "toAdd":Landroid/content/pm/LauncherApps$CallbackMessageHandler;
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    return-void
.end method

.method private greylist-max-o convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 8
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 1160
    .local p1, "internals":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/LauncherActivityInfoInternal;>;"
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_32

    .line 1163
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v0, "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 1165
    .local v2, "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    new-instance v3, Landroid/content/pm/LauncherActivityInfo;

    iget-object v4, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfoInternal;)V

    .line 1170
    .local v3, "lai":Landroid/content/pm/LauncherActivityInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    .end local v2    # "internal":Landroid/content/pm/LauncherActivityInfoInternal;
    .end local v3    # "lai":Landroid/content/pm/LauncherActivityInfo;
    goto :goto_1a

    .line 1172
    :cond_31
    return-object v0

    .line 1161
    .end local v0    # "lais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/LauncherActivityInfo;>;"
    :cond_32
    :goto_32
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method private greylist-max-o findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I
    .registers 5
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 2009
    if-eqz p1, :cond_1f

    .line 2012
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2013
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 2014
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps$CallbackMessageHandler;

    invoke-static {v2}, Landroid/content/pm/LauncherApps$CallbackMessageHandler;->-$$Nest$fgetmCallback(Landroid/content/pm/LauncherApps$CallbackMessageHandler;)Landroid/content/pm/LauncherApps$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_1a

    .line 2015
    return v1

    .line 2013
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2018
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, -0x1

    return v1

    .line 2010
    .end local v0    # "size":I
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1662
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1664
    :catch_d
    move-exception v0

    .line 1665
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1693
    const/4 v0, 0x0

    .line 1695
    .local v0, "uri":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    .line 1699
    .end local v0    # "uri":Ljava/lang/String;
    .local v1, "uri":Ljava/lang/String;
    nop

    .line 1700
    return-object v1

    .line 1697
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v0    # "uri":Ljava/lang/String;
    :catch_f
    move-exception v1

    .line 1698
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getUriShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1679
    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/LauncherApps;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "uri":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1681
    return-object v1

    .line 1684
    :cond_8
    :try_start_8
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v1

    .line 1685
    :catch_1a
    move-exception v2

    .line 1686
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open icon file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LauncherApps"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    return-object v1
.end method

.method private blacklist loadDrawableFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "adaptive"    # Z

    .line 1751
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1752
    return-object v0

    .line 1755
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1756
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2d

    .line 1757
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1758
    .local v2, "dr":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p2, :cond_26

    .line 1759
    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_34

    .line 1767
    :try_start_20
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 1769
    goto :goto_25

    .line 1768
    :catch_24
    move-exception v0

    .line 1759
    :goto_25
    return-object v3

    .line 1761
    :cond_26
    nop

    .line 1767
    :try_start_27
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 1769
    goto :goto_2c

    .line 1768
    :catch_2b
    move-exception v0

    .line 1761
    :goto_2c
    return-object v2

    .line 1764
    .end local v2    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2d
    nop

    .line 1767
    :try_start_2e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    .line 1769
    goto :goto_33

    .line 1768
    :catch_32
    move-exception v2

    .line 1764
    :goto_33
    return-object v0

    .line 1766
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catchall_34
    move-exception v0

    .line 1767
    :try_start_35
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 1769
    goto :goto_3a

    .line 1768
    :catch_39
    move-exception v1

    .line 1770
    :goto_3a
    throw v0
.end method

.method private greylist-max-o loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "density"    # I

    .line 1819
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1820
    return-object v0

    .line 1822
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, p1, v1, p3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1823
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1824
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, p2, p4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_17} :catch_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_17} :catch_18

    return-object v0

    .line 1825
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_18
    move-exception v1

    .line 1826
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private greylist-max-o logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "target"    # Landroid/os/UserHandle;

    .line 698
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 699
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    .line 701
    const-string v0, "LauncherApps"

    const-string v1, "Accessing other profiles/users from managed profile is no longer allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_23
    return-void
.end method

.method private greylist-max-o maybeUpdateDisabledMessage(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1418
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-nez p1, :cond_4

    .line 1419
    const/4 v0, 0x0

    return-object v0

    .line 1421
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_24

    .line 1422
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 1423
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1424
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getDisabledReason()I

    move-result v3

    .line 1423
    invoke-static {v2, v3}, Landroid/content/pm/ShortcutInfo;->getDisabledReasonForRestoreIssue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1425
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 1426
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo;->setDisabledMessage(Ljava/lang/String;)V

    .line 1421
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v2    # "message":Ljava/lang/String;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1429
    .end local v0    # "i":I
    :cond_24
    return-object p1
.end method

.method private greylist-max-o removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 2022
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v0

    .line 2023
    .local v0, "pos":I
    if-ltz v0, :cond_b

    .line 2024
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2026
    :cond_b
    return-void
.end method

.method private greylist startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .line 1905
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_21

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "startActivityOptions":Landroid/os/Bundle;
    .end local p5    # "userId":I
    .local v2, "packageName":Ljava/lang/String;
    .local v4, "shortcutId":Ljava/lang/String;
    .local v5, "sourceBounds":Landroid/graphics/Rect;
    .local v6, "startActivityOptions":Landroid/os/Bundle;
    .local v7, "userId":I
    :try_start_e
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result p1

    .line 1908
    .local p1, "success":Z
    if-eqz p1, :cond_16

    .line 1913
    .end local p1    # "success":Z
    nop

    .line 1914
    return-void

    .line 1909
    .restart local p1    # "success":Z
    :cond_16
    new-instance p2, Landroid/content/ActivityNotFoundException;

    const-string p3, "Shortcut could not be started"

    invoke-direct {p2, p3}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "shortcutId":Ljava/lang/String;
    .end local v5    # "sourceBounds":Landroid/graphics/Rect;
    .end local v6    # "startActivityOptions":Landroid/os/Bundle;
    .end local v7    # "userId":I
    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    throw p2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1e} :catch_1e

    .line 1911
    .end local p1    # "success":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "shortcutId":Ljava/lang/String;
    .restart local v5    # "sourceBounds":Landroid/graphics/Rect;
    .restart local v6    # "startActivityOptions":Landroid/os/Bundle;
    .restart local v7    # "userId":I
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    :catch_1e
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "shortcutId":Ljava/lang/String;
    .end local v5    # "sourceBounds":Landroid/graphics/Rect;
    .end local v6    # "startActivityOptions":Landroid/os/Bundle;
    .end local v7    # "userId":I
    .local p1, "packageName":Ljava/lang/String;
    .restart local p2    # "shortcutId":Ljava/lang/String;
    .restart local p3    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p4    # "startActivityOptions":Landroid/os/Bundle;
    .restart local p5    # "userId":I
    :catch_21
    move-exception v0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object p1, v0

    .line 1912
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "startActivityOptions":Landroid/os/Bundle;
    .end local p5    # "userId":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "shortcutId":Ljava/lang/String;
    .restart local v5    # "sourceBounds":Landroid/graphics/Rect;
    .restart local v6    # "startActivityOptions":Landroid/os/Bundle;
    .restart local v7    # "userId":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_28
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method


# virtual methods
.method public blacklist cacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 1579
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1581
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1582
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_17

    .line 1581
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "cacheFlags":I
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "user":Landroid/os/UserHandle;
    .local v5, "cacheFlags":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->cacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 1585
    nop

    .line 1586
    return-void

    .line 1583
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "cacheFlags":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "user":Landroid/os/UserHandle;
    .restart local p4    # "cacheFlags":I
    :catch_17
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 1584
    .end local p2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "cacheFlags":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "user":Landroid/os/UserHandle;
    .restart local v5    # "cacheFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 792
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 794
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/content/pm/LauncherApps;->convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    return-object v0

    .line 796
    :catch_14
    move-exception v0

    .line 797
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getActivityOverrides()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 1009
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1011
    .local v0, "activityOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;>;"
    :try_start_5
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1012
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/ILauncherApps;->getActivityOverrides(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 1014
    .local v1, "activityOverridesInternal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1015
    .local v3, "packageToOverride":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;>;"
    nop

    .line 1016
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Landroid/content/pm/LauncherActivityInfo;

    iget-object v6, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1019
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-direct {v5, v6, v7}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfoInternal;)V

    .line 1015
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_42} :catch_46

    .line 1022
    nop

    .end local v3    # "packageToOverride":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;>;"
    goto :goto_1f

    .line 1025
    .end local v1    # "activityOverridesInternal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;>;"
    :cond_44
    nop

    .line 1026
    return-object v0

    .line 1023
    :catch_46
    move-exception v1

    .line 1024
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAllPackageInstallerSessions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 2447
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 2448
    :catch_11
    move-exception v0

    .line 2449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppMarketActivityIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 904
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getAppMarketActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 906
    :catch_d
    move-exception v0

    .line 907
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1354
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1355
    :catch_d
    move-exception v0

    .line 1356
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1320
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1321
    const-string/jumbo v0, "user"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1324
    :try_start_f
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1325
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1326
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1e

    .line 1330
    return-object v0

    .line 1327
    :cond_1e
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1328
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "user":Landroid/os/UserHandle;
    throw v1
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_45} :catch_45

    .line 1331
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "flags":I
    .restart local p3    # "user":Landroid/os/UserHandle;
    :catch_45
    move-exception v0

    .line 1332
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist getLauncherUserInfo(Landroid/os/UserHandle;)Landroid/content/pm/LauncherUserInfo;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 850
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ILauncherApps;->getLauncherUserInfo(Landroid/os/UserHandle;)Landroid/content/pm/LauncherUserInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 851
    :catch_7
    move-exception v0

    .line 852
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "startActivityOptions"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 815
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 820
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p3}, Landroid/content/pm/ILauncherApps;->getActivityLaunchIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return-object v0

    .line 821
    :catch_10
    move-exception v0

    .line 822
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2510
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    const-class v1, Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps$PinItemRequest;

    return-object v0
.end method

.method public whitelist getPreInstalledSystemPackages(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 937
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ILauncherApps;->getPreInstalledSystemPackages(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 938
    :catch_7
    move-exception v0

    .line 939
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPrivateSpaceSettingsIntent()Landroid/content/IntentSender;
    .registers 3

    .line 960
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0}, Landroid/content/pm/ILauncherApps;->getPrivateSpaceSettingsIntent()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 961
    :catch_7
    move-exception v0

    .line 962
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProfiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 722
    invoke-static {}, Landroid/multiuser/Flags;->enableLauncherAppsHiddenProfileChecks()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 723
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 724
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    .line 725
    invoke-virtual {v0}, Landroid/os/UserManager;->isPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_3d

    .line 731
    :cond_23
    invoke-static {}, Landroid/multiuser/Flags;->enableLauncherAppsHiddenProfileChecks()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 733
    :try_start_29
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0}, Landroid/content/pm/ILauncherApps;->getUserProfiles()Ljava/util/List;

    move-result-object v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    return-object v0

    .line 734
    :catch_30
    move-exception v0

    .line 735
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 739
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_36
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 727
    :cond_3d
    :goto_3d
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 728
    .local v0, "result":Ljava/util/List;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    return-object v0
.end method

.method public whitelist getShortcutBadgedIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 1846
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1848
    .local v0, "originalIcon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_16

    :cond_8
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1849
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1848
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_16
    return-object v1
.end method

.method public whitelist getShortcutConfigActivityIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/IntentSender;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 1198
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1199
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1198
    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/ILauncherApps;->getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    .line 1200
    :catch_15
    move-exception v0

    .line 1201
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShortcutConfigActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    .line 1148
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1150
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1151
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1150
    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/content/pm/LauncherApps;->convertToActivityList(Landroid/content/pm/ParceledListSlice;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    return-object v0

    .line 1153
    :catch_14
    move-exception v0

    .line 1154
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Icon;
    .registers 6
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1777
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 1778
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1779
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_e

    .line 1780
    return-object v1

    .line 1783
    :cond_e
    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1784
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_32

    .line 1785
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1786
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_39

    .line 1794
    :try_start_22
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 1796
    goto :goto_27

    .line 1795
    :catch_26
    move-exception v3

    .line 1786
    :goto_27
    return-object v1

    .line 1788
    :cond_28
    :try_start_28
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_39

    .line 1794
    :try_start_2c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 1796
    goto :goto_31

    .line 1795
    :catch_30
    move-exception v3

    .line 1788
    :goto_31
    return-object v1

    .line 1791
    :cond_32
    nop

    .line 1794
    :try_start_33
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 1796
    goto :goto_38

    .line 1795
    :catch_37
    move-exception v3

    .line 1791
    :goto_38
    return-object v1

    .line 1793
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :catchall_39
    move-exception v1

    .line 1794
    :try_start_3a
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 1796
    goto :goto_3f

    .line 1795
    :catch_3e
    move-exception v2

    .line 1797
    :goto_3f
    throw v1

    .line 1798
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_40
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1799
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1800
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v3

    .line 1799
    invoke-direct {p0, v0, v2, v3}, Landroid/content/pm/LauncherApps;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_59

    .line 1802
    return-object v1

    .line 1804
    :cond_59
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1805
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 1807
    :cond_64
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 1809
    .end local v0    # "uri":Ljava/lang/String;
    :cond_69
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1810
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 1812
    :cond_7c
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "density"    # I

    .line 1721
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1722
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1723
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/LauncherApps;->loadDrawableFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1724
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1725
    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps;->getUriShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1726
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasAdaptiveBitmap()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/LauncherApps;->loadDrawableFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1727
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_26
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1728
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 1729
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1728
    invoke-direct {p0, v0, v1, v2, p2}, Landroid/content/pm/LauncherApps;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1730
    :cond_3d
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 1732
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1733
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_6a

    .line 1743
    :pswitch_4f
    return-object v1

    .line 1735
    :pswitch_50
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 1736
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1735
    invoke-direct {p0, v1, v2, v3, p2}, Landroid/content/pm/LauncherApps;->loadDrawableResourceFromPackage(Ljava/lang/String;ILandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1740
    :pswitch_61
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 1746
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_68
    return-object v1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_61
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_61
    .end packed-switch
.end method

.method public greylist-max-o getShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1647
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1648
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    .line 1647
    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1656
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getShortcutIconResId(Landroid/content/pm/ShortcutInfo;)I
    .registers 3
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1624
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1633
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 1634
    .local v0, "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1635
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1636
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1637
    invoke-virtual {p0, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1639
    .local v1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_2d

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v3

    :cond_2d
    return v3
.end method

.method public greylist-max-o getShortcutInfo(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1512
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 1513
    .local v0, "q":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1514
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1515
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 1516
    invoke-virtual {p0, v0, p3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 1121
    invoke-direct {p0, p4}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1127
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1128
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_17

    .line 1127
    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "shortcutId":Ljava/lang/String;
    .local v5, "user":Landroid/os/UserHandle;
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return-object p1

    .line 1129
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1c

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "shortcutId":Ljava/lang/String;
    .end local v5    # "user":Landroid/os/UserHandle;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "shortcutId":Ljava/lang/String;
    .restart local p4    # "user":Landroid/os/UserHandle;
    :catch_17
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object p1, v0

    .line 1130
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p4    # "user":Landroid/os/UserHandle;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "shortcutId":Ljava/lang/String;
    .restart local v5    # "user":Landroid/os/UserHandle;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_1c
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1, "query"    # Landroid/content/pm/LauncherApps$ShortcutQuery;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps$ShortcutQuery;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1489
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1497
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-direct {v2, p1}, Landroid/content/pm/ShortcutQueryWrapper;-><init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V

    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/ILauncherApps;->getShortcuts(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1499
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1497
    invoke-direct {p0, v0}, Landroid/content/pm/LauncherApps;->maybeUpdateDisabledMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_1d

    return-object v0

    .line 1500
    :catch_1d
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1260
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1262
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/ILauncherApps;->getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    return-object v0

    .line 1263
    :catch_a
    move-exception v0

    .line 1264
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUriShortcutIconFd(Landroid/content/pm/ShortcutInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .line 1674
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/LauncherApps;->getUriShortcutIconFd(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasShortcutHostPermission()Z
    .registers 3

    .line 1411
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 1412
    :catch_d
    move-exception v0

    .line 1413
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1381
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1383
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 1384
    :catch_10
    move-exception v0

    .line 1385
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1223
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1225
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/pm/ILauncherApps;->isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 1226
    :catch_10
    move-exception v0

    .line 1227
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1542
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1544
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/pm/ILauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    .line 1547
    nop

    .line 1548
    return-void

    .line 1545
    :catch_10
    move-exception v0

    .line 1546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1934
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    .line 1935
    return-void
.end method

.method public whitelist registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1956
    monitor-enter p0

    .line 1957
    if-eqz p1, :cond_2d

    :try_start_3
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->findCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)I

    move-result v0

    if-gez v0, :cond_2d

    .line 1958
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1959
    .local v0, "addedFirstCallback":Z
    :goto_14
    invoke-direct {p0, p1, p2}, Landroid/content/pm/LauncherApps;->addCallbackLocked(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2f

    .line 1960
    if-eqz v0, :cond_2d

    .line 1962
    :try_start_19
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v1, v2, v3}, Landroid/content/pm/ILauncherApps;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_27
    .catchall {:try_start_19 .. :try_end_26} :catchall_2f

    .line 1966
    goto :goto_2d

    .line 1964
    :catch_27
    move-exception v1

    .line 1965
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_28
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 1969
    .end local v0    # "addedFirstCallback":Z
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2d
    :goto_2d
    monitor-exit p0

    .line 1970
    return-void

    .line 1969
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public blacklist registerDumpCallback(Landroid/window/IDumpCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/window/IDumpCallback;

    .line 1439
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ILauncherApps;->registerDumpCallback(Landroid/window/IDumpCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1442
    goto :goto_a

    .line 1440
    :catch_6
    move-exception v0

    .line 1441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist registerPackageInstallerSessionCallback(Ljava/util/concurrent/Executor;Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 7
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 2395
    if-eqz p1, :cond_27

    .line 2399
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 2400
    :try_start_5
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    invoke-direct {v1, p2, p1}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_24

    .line 2403
    .local v1, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_a
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/pm/ILauncherApps;->registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_1e
    .catchall {:try_start_a .. :try_end_15} :catchall_24

    .line 2407
    nop

    .line 2408
    :try_start_16
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2409
    nop

    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    monitor-exit v0

    .line 2410
    return-void

    .line 2405
    .restart local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :catch_1e
    move-exception v2

    .line 2406
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    throw v3

    .line 2409
    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v1

    .line 2396
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;Landroid/content/pm/LauncherApps$ShortcutQuery;Ljava/util/concurrent/Executor;)V
    .registers 9
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    .param p2, "query"    # Landroid/content/pm/LauncherApps$ShortcutQuery;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 2466
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2467
    const-string v0, "Query cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2468
    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2470
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2471
    :try_start_12
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy;

    invoke-direct {v1, p3, p1}, Landroid/content/pm/LauncherApps$ShortcutChangeCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 2472
    .local v1, "proxy":Landroid/content/pm/IShortcutChangeCallback;
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_3a

    .line 2474
    :try_start_21
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-direct {v4, p2}, Landroid/content/pm/ShortcutQueryWrapper;-><init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V

    invoke-interface {v2, v3, v4, v1}, Landroid/content/pm/ILauncherApps;->registerShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/content/pm/IShortcutChangeCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_31} :catch_34
    .catchall {:try_start_21 .. :try_end_31} :catchall_3a

    .line 2478
    nop

    .line 2479
    .end local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    :try_start_32
    monitor-exit v0

    .line 2480
    return-void

    .line 2476
    .restart local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    :catch_34
    move-exception v2

    .line 2477
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    .end local p2    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    throw v3

    .line 2479
    .end local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    .restart local p2    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public whitelist resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 984
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 986
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 987
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 986
    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/ILauncherApps;->resolveLauncherActivityInternal(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    move-result-object v0

    .line 988
    .local v0, "ai":Landroid/content/pm/LauncherActivityInfoInternal;
    if-nez v0, :cond_17

    .line 989
    const/4 v1, 0x0

    return-object v1

    .line 991
    :cond_17
    new-instance v1, Landroid/content/pm/LauncherActivityInfo;

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/pm/LauncherActivityInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfoInternal;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_1f

    return-object v1

    .line 992
    .end local v0    # "ai":Landroid/content/pm/LauncherActivityInfoInternal;
    :catch_1f
    move-exception v0

    .line 993
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist saveViewCaptureData()V
    .registers 2

    .line 1452
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0}, Landroid/content/pm/ILauncherApps;->saveViewCaptureData()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1455
    goto :goto_a

    .line 1453
    :catch_6
    move-exception v0

    .line 1454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1456
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist setArchiveCompatibility(Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;)V
    .registers 5
    .param p1, "params"    # Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;

    .line 2000
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->isEnableIconOverlay()Z

    move-result v1

    .line 2001
    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$ArchiveCompatibilityParams;->isEnableUnarchivalConfirmation()Z

    move-result v2

    .line 2000
    invoke-interface {v0, v1, v2}, Landroid/content/pm/ILauncherApps;->setArchiveCompatibilityOptions(ZZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 2004
    nop

    .line 2005
    return-void

    .line 2002
    :catch_f
    move-exception v0

    .line 2003
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1288
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1289
    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1291
    :try_start_c
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/ILauncherApps;->shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return v0

    .line 1292
    :catch_13
    move-exception v0

    .line 1293
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 1099
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1101
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1102
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_23

    .line 1101
    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "opts":Landroid/os/Bundle;
    .local v4, "component":Landroid/content/ComponentName;
    .local v5, "sourceBounds":Landroid/graphics/Rect;
    .local v6, "opts":Landroid/os/Bundle;
    .local v7, "user":Landroid/os/UserHandle;
    :try_start_1b
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 1106
    nop

    .line 1107
    return-void

    .line 1104
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "sourceBounds":Landroid/graphics/Rect;
    .end local v6    # "opts":Landroid/os/Bundle;
    .end local v7    # "user":Landroid/os/UserHandle;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p4    # "opts":Landroid/os/Bundle;
    :catch_23
    move-exception v0

    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 1105
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "opts":Landroid/os/Bundle;
    .restart local v4    # "component":Landroid/content/ComponentName;
    .restart local v5    # "sourceBounds":Landroid/graphics/Rect;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .restart local v7    # "user":Landroid/os/UserHandle;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 1048
    invoke-direct {p0, p2}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1053
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1054
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_23

    .line 1053
    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "opts":Landroid/os/Bundle;
    .local v4, "component":Landroid/content/ComponentName;
    .local v5, "sourceBounds":Landroid/graphics/Rect;
    .local v6, "opts":Landroid/os/Bundle;
    .local v7, "user":Landroid/os/UserHandle;
    :try_start_1b
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 1058
    nop

    .line 1059
    return-void

    .line 1056
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v5    # "sourceBounds":Landroid/graphics/Rect;
    .end local v6    # "opts":Landroid/os/Bundle;
    .end local v7    # "user":Landroid/os/UserHandle;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "user":Landroid/os/UserHandle;
    .restart local p3    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p4    # "opts":Landroid/os/Bundle;
    :catch_23
    move-exception v0

    move-object v4, p1

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .line 1057
    .end local p2    # "user":Landroid/os/UserHandle;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "opts":Landroid/os/Bundle;
    .restart local v4    # "component":Landroid/content/ComponentName;
    .restart local v5    # "sourceBounds":Landroid/graphics/Rect;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .restart local v7    # "user":Landroid/os/UserHandle;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist startPackageInstallerSessionDetailsActivity(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 1071
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1072
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v7
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_23

    .line 1071
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .end local p1    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local p2    # "sourceBounds":Landroid/graphics/Rect;
    .end local p3    # "opts":Landroid/os/Bundle;
    .local v4, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v5, "sourceBounds":Landroid/graphics/Rect;
    .local v6, "opts":Landroid/os/Bundle;
    :try_start_1b
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/ILauncherApps;->startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 1076
    nop

    .line 1077
    return-void

    .line 1074
    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_28

    .end local v4    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v5    # "sourceBounds":Landroid/graphics/Rect;
    .end local v6    # "opts":Landroid/os/Bundle;
    .restart local p1    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local p2    # "sourceBounds":Landroid/graphics/Rect;
    .restart local p3    # "opts":Landroid/os/Bundle;
    :catch_23
    move-exception v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object p1, v0

    .line 1075
    .end local p2    # "sourceBounds":Landroid/graphics/Rect;
    .end local p3    # "opts":Landroid/os/Bundle;
    .restart local v4    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    .restart local v5    # "sourceBounds":Landroid/graphics/Rect;
    .restart local v6    # "opts":Landroid/os/Bundle;
    .local p1, "re":Landroid/os/RemoteException;
    :goto_28
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .param p3, "startActivityOptions"    # Landroid/os/Bundle;

    .line 1895
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1897
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    .line 1895
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    .end local p2    # "sourceBounds":Landroid/graphics/Rect;
    .end local p3    # "startActivityOptions":Landroid/os/Bundle;
    .local v3, "sourceBounds":Landroid/graphics/Rect;
    .local v4, "startActivityOptions":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    .line 1898
    return-void
.end method

.method public whitelist startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "sourceBounds"    # Landroid/graphics/Rect;
    .param p4, "startActivityOptions"    # Landroid/os/Bundle;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 1872
    invoke-direct {p0, p5}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1874
    nop

    .line 1875
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1874
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutId":Ljava/lang/String;
    .end local p3    # "sourceBounds":Landroid/graphics/Rect;
    .end local p4    # "startActivityOptions":Landroid/os/Bundle;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "shortcutId":Ljava/lang/String;
    .local v3, "sourceBounds":Landroid/graphics/Rect;
    .local v4, "startActivityOptions":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)V

    .line 1876
    return-void
.end method

.method public blacklist unRegisterDumpCallback(Landroid/window/IDumpCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/window/IDumpCallback;

    .line 1465
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    invoke-interface {v0, p1}, Landroid/content/pm/ILauncherApps;->unRegisterDumpCallback(Landroid/window/IDumpCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1468
    goto :goto_a

    .line 1466
    :catch_6
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1469
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist uncacheShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "cacheFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 1610
    .local p2, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Landroid/content/pm/LauncherApps;->logErrorForInvalidProfileAccess(Landroid/os/UserHandle;)V

    .line 1612
    :try_start_3
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    .line 1613
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_17

    .line 1612
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "cacheFlags":I
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "user":Landroid/os/UserHandle;
    .local v5, "cacheFlags":I
    :try_start_f
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/ILauncherApps;->uncacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 1616
    nop

    .line 1617
    return-void

    .line 1614
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1d

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "cacheFlags":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "user":Landroid/os/UserHandle;
    .restart local p4    # "cacheFlags":I
    :catch_17
    move-exception v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object p1, v0

    .line 1615
    .end local p2    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "user":Landroid/os/UserHandle;
    .end local p4    # "cacheFlags":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "user":Landroid/os/UserHandle;
    .restart local v5    # "cacheFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1d
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method public whitelist unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$Callback;

    .line 1979
    monitor-enter p0

    .line 1980
    :try_start_1
    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps;->removeCallbackLocked(Landroid/content/pm/LauncherApps$Callback;)V

    .line 1981
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    if-nez v0, :cond_1a

    .line 1983
    :try_start_c
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mAppsChangedListener:Landroid/content/pm/IOnAppsChangedListener$Stub;

    invoke-interface {v0, v1}, Landroid/content/pm/ILauncherApps;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_1c

    .line 1986
    goto :goto_1a

    .line 1984
    :catch_14
    move-exception v0

    .line 1985
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    throw v1

    .line 1988
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$Callback;
    :cond_1a
    :goto_1a
    monitor-exit p0

    .line 1989
    return-void

    .line 1988
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public whitelist unregisterPackageInstallerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 2419
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    monitor-enter v0

    .line 2420
    :try_start_3
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 2422
    .local v2, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    if-ne v3, p1, :cond_27

    .line 2423
    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 2424
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2426
    .end local v2    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :cond_27
    goto :goto_9

    .line 2427
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_28
    monitor-exit v0

    .line 2428
    return-void

    .line 2427
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public blacklist unregisterShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    .line 2491
    const-string v0, "Callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2493
    iget-object v0, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 2494
    :try_start_8
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2495
    iget-object v1, p0, Landroid/content/pm/LauncherApps;->mShortcutChangeCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/IShortcutChangeCallback;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_30

    .line 2497
    .local v1, "proxy":Landroid/content/pm/IShortcutChangeCallback;
    :try_start_1c
    iget-object v2, p0, Landroid/content/pm/LauncherApps;->mService:Landroid/content/pm/ILauncherApps;

    iget-object v3, p0, Landroid/content/pm/LauncherApps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/pm/ILauncherApps;->unregisterShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/IShortcutChangeCallback;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_28
    .catchall {:try_start_1c .. :try_end_27} :catchall_30

    .line 2500
    goto :goto_2e

    .line 2498
    :catch_28
    move-exception v2

    .line 2499
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/LauncherApps;
    .end local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    throw v3

    .line 2502
    .end local v1    # "proxy":Landroid/content/pm/IShortcutChangeCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/LauncherApps;
    .restart local p1    # "callback":Landroid/content/pm/LauncherApps$ShortcutChangeCallback;
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 2503
    return-void

    .line 2502
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v1
.end method
