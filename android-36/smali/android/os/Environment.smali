.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SCOPED_STORAGE:J = 0x8efaaafL

.field public static whitelist DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final greylist-max-o DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static whitelist DIRECTORY_AUDIOBOOKS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_RECORDINGS:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static whitelist DIRECTORY_SCREENSHOTS:Ljava/lang/String; = null

.field public static final greylist-max-o DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final greylist-max-o DIR_ANDROID_DATA:Ljava/io/File;

.field private static final blacklist DIR_ANDROID_DATA_PATH:Ljava/lang/String;

.field private static final greylist-max-o DIR_ANDROID_EXPAND:Ljava/io/File;

.field private static final greylist-max-o DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_ANDROID_STORAGE:Ljava/io/File;

.field private static final blacklist DIR_APEX_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final greylist-max-o DIR_DATA:Ljava/lang/String; = "data"

.field private static final greylist-max-o DIR_DOWNLOAD_CACHE:Ljava/io/File;

.field private static final greylist-max-o DIR_FILES:Ljava/lang/String; = "files"

.field private static final greylist-max-o DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final blacklist DIR_METADATA:Ljava/io/File;

.field private static final greylist-max-o DIR_OBB:Ljava/lang/String; = "obb"

.field private static final greylist-max-o DIR_ODM_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_OEM_ROOT:Ljava/io/File;

.field private static final greylist-max-o DIR_PRODUCT_ROOT:Ljava/io/File;

.field private static final blacklist DIR_SYSTEM_EXT_ROOT:Ljava/io/File;

.field public static final blacklist DIR_USER_CE:Ljava/lang/String; = "user"

.field public static final blacklist DIR_USER_DE:Ljava/lang/String; = "user_de"

.field private static final greylist-max-o DIR_VENDOR_ROOT:Ljava/io/File;

.field private static final greylist-max-o ENV_ANDROID_DATA:Ljava/lang/String; = "ANDROID_DATA"

.field private static final greylist-max-o ENV_ANDROID_EXPAND:Ljava/lang/String; = "ANDROID_EXPAND"

.field private static final greylist-max-o ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final greylist-max-o ENV_ANDROID_STORAGE:Ljava/lang/String; = "ANDROID_STORAGE"

.field private static final blacklist ENV_APEX_ROOT:Ljava/lang/String; = "APEX_ROOT"

.field private static final greylist-max-o ENV_DOWNLOAD_CACHE:Ljava/lang/String; = "DOWNLOAD_CACHE"

.field private static final greylist-max-o ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final greylist-max-o ENV_ODM_ROOT:Ljava/lang/String; = "ODM_ROOT"

.field private static final greylist-max-o ENV_OEM_ROOT:Ljava/lang/String; = "OEM_ROOT"

.field private static final greylist-max-o ENV_PRODUCT_ROOT:Ljava/lang/String; = "PRODUCT_ROOT"

.field private static final blacklist ENV_SYSTEM_EXT_ROOT:Ljava/lang/String; = "SYSTEM_EXT_ROOT"

.field private static final greylist-max-o ENV_VENDOR_ROOT:Ljava/lang/String; = "VENDOR_ROOT"

.field private static final blacklist FORCE_ENABLE_SCOPED_STORAGE:J = 0x7e81388L

.field public static final greylist-max-o HAS_ALARMS:I = 0x8

.field public static final greylist-max-o HAS_ANDROID:I = 0x10000

.field public static final blacklist HAS_AUDIOBOOKS:I = 0x400

.field public static final greylist-max-o HAS_DCIM:I = 0x100

.field public static final greylist-max-o HAS_DOCUMENTS:I = 0x200

.field public static final greylist-max-o HAS_DOWNLOADS:I = 0x80

.field public static final greylist-max-o HAS_MOVIES:I = 0x40

.field public static final greylist-max-o HAS_MUSIC:I = 0x1

.field public static final greylist-max-o HAS_NOTIFICATIONS:I = 0x10

.field public static final greylist-max-o HAS_OTHER:I = 0x20000

.field public static final greylist-max-o HAS_PICTURES:I = 0x20

.field public static final greylist-max-o HAS_PODCASTS:I = 0x2

.field public static final blacklist HAS_RECORDINGS:I = 0x800

.field public static final greylist-max-o HAS_RINGTONES:I = 0x4

.field public static final whitelist MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final whitelist MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final whitelist MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final whitelist MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final whitelist MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final whitelist MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final whitelist MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final whitelist MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final whitelist MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final whitelist MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final whitelist MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field public static final greylist-max-o STANDARD_DIRECTORIES:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Environment"

.field private static greylist sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static blacklist sLegacyStorageAppOp:Ljava/lang/Boolean;

.field private static blacklist sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

.field private static greylist-max-o sUserRequired:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 100
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    .line 101
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    .line 103
    const-string v0, "ANDROID_EXPAND"

    const-string v1, "/mnt/expand"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_EXPAND:Ljava/io/File;

    .line 104
    const-string v0, "ANDROID_STORAGE"

    const-string v1, "/storage"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    .line 105
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_DOWNLOAD_CACHE:Ljava/io/File;

    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "/metadata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->DIR_METADATA:Ljava/io/File;

    .line 107
    const-string v0, "OEM_ROOT"

    const-string v1, "/oem"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    .line 108
    const-string v0, "ODM_ROOT"

    const-string v1, "/odm"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ODM_ROOT:Ljava/io/File;

    .line 109
    const-string v0, "VENDOR_ROOT"

    const-string v1, "/vendor"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    .line 110
    const-string v0, "PRODUCT_ROOT"

    const-string v1, "/product"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_PRODUCT_ROOT:Ljava/io/File;

    .line 111
    const-string v0, "SYSTEM_EXT_ROOT"

    const-string v1, "/system_ext"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_SYSTEM_EXT_ROOT:Ljava/io/File;

    .line 113
    const-string v0, "APEX_ROOT"

    const-string v1, "/apex"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_APEX_ROOT:Ljava/io/File;

    .line 166
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 818
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 830
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 842
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 854
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 866
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 874
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 882
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 892
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 899
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 905
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 912
    const-string v0, "Screenshots"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    .line 924
    const-string v0, "Audiobooks"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    .line 945
    const-string v0, "Recordings"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RECORDINGS:Ljava/lang/String;

    .line 967
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    sget-object v11, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    sget-object v12, Landroid/os/Environment;->DIRECTORY_RECORDINGS:Ljava/lang/String;

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addCanonicalFile(Ljava/util/List;Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 721
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 725
    goto :goto_2e

    .line 722
    :catch_8
    move-exception v0

    .line 723
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Environment"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2e
    return-void
.end method

.method public static greylist buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .registers 1

    .line 1113
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1114
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildExternalStorageAndroidObbDirs()[Ljava/io/File;
    .registers 1

    .line 1122
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1123
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidObbDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1172
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1173
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1132
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1133
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1162
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1163
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1142
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1143
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1152
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1153
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "dirType"    # Ljava/lang/String;

    .line 1178
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1179
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static varargs blacklist buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 1589
    move-object v0, p0

    .line 1590
    .local v0, "cur":Ljava/io/File;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_19

    aget-object v3, p1, v2

    .line 1591
    .local v3, "segment":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 1592
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "cur":Ljava/io/File;
    .local v4, "cur":Ljava/io/File;
    goto :goto_16

    .line 1594
    .end local v4    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :cond_10
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v4

    .line 1590
    .end local v3    # "segment":Ljava/lang/String;
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1597
    :cond_19
    return-object v0
.end method

.method public static varargs greylist buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .registers 5
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .line 1575
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    .line 1576
    .local v0, "result":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1577
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1576
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1579
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static greylist-max-o classifyExternalStorageDirectory(Ljava/io/File;)I
    .registers 9
    .param p0, "dir"    # Ljava/io/File;

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "res":I
    invoke-static {p0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_c5

    aget-object v4, v1, v3

    .line 1021
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    const/high16 v6, 0x20000

    if-eqz v5, :cond_1c

    invoke-static {v4}, Landroid/os/Environment;->isInterestingFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1022
    or-int/2addr v0, v6

    goto/16 :goto_c1

    .line 1023
    :cond_1c
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-static {v4}, Landroid/os/Environment;->hasInterestingFiles(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 1024
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1025
    .local v5, "name":Ljava/lang/String;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_c1

    .line 1026
    :cond_38
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_c1

    .line 1027
    :cond_44
    sget-object v7, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    or-int/lit8 v0, v0, 0x4

    goto/16 :goto_c1

    .line 1028
    :cond_50
    sget-object v7, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    or-int/lit8 v0, v0, 0x8

    goto/16 :goto_c1

    .line 1029
    :cond_5c
    sget-object v7, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    or-int/lit8 v0, v0, 0x10

    goto :goto_c1

    .line 1030
    :cond_67
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    or-int/lit8 v0, v0, 0x20

    goto :goto_c1

    .line 1031
    :cond_72
    sget-object v7, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    or-int/lit8 v0, v0, 0x40

    goto :goto_c1

    .line 1032
    :cond_7d
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    or-int/lit16 v0, v0, 0x80

    goto :goto_c1

    .line 1033
    :cond_88
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    or-int/lit16 v0, v0, 0x100

    goto :goto_c1

    .line 1034
    :cond_93
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    or-int/lit16 v0, v0, 0x200

    goto :goto_c1

    .line 1035
    :cond_9e
    sget-object v7, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    or-int/lit16 v0, v0, 0x400

    goto :goto_c1

    .line 1036
    :cond_a9
    sget-object v7, Landroid/os/Environment;->DIRECTORY_RECORDINGS:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    or-int/lit16 v0, v0, 0x800

    goto :goto_c1

    .line 1037
    :cond_b4
    const-string v7, "Android"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    const/high16 v6, 0x10000

    or-int/2addr v0, v6

    goto :goto_c1

    .line 1038
    :cond_c0
    or-int/2addr v0, v6

    .line 1020
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    :cond_c1
    :goto_c1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 1041
    :cond_c5
    return v0
.end method

.method public static blacklist getApexDirectory()Ljava/io/File;
    .registers 1

    .line 332
    sget-object v0, Landroid/os/Environment;->DIR_APEX_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "volumeUuid"    # Ljava/lang/String;

    .line 550
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist getDataCePackageDirectoryForUser(Ljava/util/UUID;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "storageUuid"    # Ljava/util/UUID;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 596
    invoke-static {p0}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDataDePackageDirectoryForUser(Ljava/util/UUID;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "storageUuid"    # Ljava/util/UUID;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 638
    invoke-static {p0}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDataDirectory()Ljava/io/File;
    .registers 1

    .line 374
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "volumeUuid"    # Ljava/lang/String;

    .line 387
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    return-object v0

    .line 390
    :cond_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/expand/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getDataDirectoryPath()Ljava/lang/String;
    .registers 1

    .line 382
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getDataDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    .line 396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 397
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA_PATH:Ljava/lang/String;

    return-object v0

    .line 399
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataMiscCeDirectory()Ljava/io/File;
    .registers 2

    .line 487
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "misc_ce"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataMiscCeDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 492
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "misc_ce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDataMiscCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 5
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 497
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "misc_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDataMiscCeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 503
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataMiscCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "sdksandbox"

    const-string/jumbo v2, "shared"

    filled-new-array {v1, p2, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataMiscDeDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 509
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "misc_de"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDataMiscDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 5
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 514
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "misc_de"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDataMiscDeSharedSdkSandboxDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 6
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 520
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataMiscDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "sdksandbox"

    const-string/jumbo v2, "shared"

    filled-new-array {v1, p2, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataMiscDirectory()Ljava/io/File;
    .registers 3

    .line 482
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "misc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsAppsDirectory()Ljava/io/File;
    .registers 3

    .line 666
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsDemoDirectory()Ljava/io/File;
    .registers 3

    .line 658
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "demo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsDirectory()Ljava/io/File;
    .registers 3

    .line 650
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "preloads"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsFileCacheDirectory()Ljava/io/File;
    .registers 3

    .line 692
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "file_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsFileCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 683
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsFileCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataPreloadsMediaDirectory()Ljava/io/File;
    .registers 3

    .line 674
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataPreloadsDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static greylist-max-o getDataProfilesDeDirectory(I)Ljava/io/File;
    .registers 6
    .param p0, "userId"    # I

    .line 525
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "cur"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "misc"

    const-string/jumbo v4, "profiles"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 545
    invoke-static {p0}, Landroid/os/Environment;->getDataProfilesDeDirectory(I)Ljava/io/File;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 540
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "profiles"

    const-string/jumbo v2, "ref"

    const-string/jumbo v3, "misc"

    filled-new-array {v3, v1, v2, p0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "volumeUuid"    # Ljava/lang/String;

    .line 555
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "app-staging"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataSystemCeDirectory()Ljava/io/File;
    .registers 2

    .line 437
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_ce"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataSystemCeDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 457
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_ce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataSystemDeDirectory()Ljava/io/File;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataSystemDeDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 477
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDataSystemDeviceProtectedDirectory()Ljava/io/File;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system_de"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getDataSystemDirectory()Ljava/io/File;
    .registers 3

    .line 411
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "volumeUuid"    # Ljava/lang/String;

    .line 560
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 5
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 565
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 573
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "volumeUuid"    # Ljava/lang/String;

    .line 602
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "user_de"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 5
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 607
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .registers 5
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 615
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getDataVendorCeDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 530
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "vendor_ce"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDataVendorDeDirectory(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 535
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "vendor_de"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .line 1546
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1547
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    if-nez v0, :cond_c

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_f
    return-object v1
.end method

.method static blacklist getDirectoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .line 1552
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public static whitelist getDownloadCacheDirectory()Ljava/io/File;
    .registers 1

    .line 1186
    sget-object v0, Landroid/os/Environment;->DIR_DOWNLOAD_CACHE:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getExpandDirectory()Ljava/io/File;
    .registers 1

    .line 405
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_EXPAND:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getExternalStorageDirectory()Ljava/io/File;
    .registers 2

    .line 793
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 794
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static whitelist getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 1103
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 1104
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static whitelist getExternalStorageState()Ljava/lang/String;
    .registers 2

    .line 1292
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1293
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/io/File;

    .line 1315
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1316
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_f

    .line 1317
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1319
    :cond_f
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method public static whitelist getInternalMediaDirectories()Ljava/util/Collection;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "media"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Environment;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 714
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Environment;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 715
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Environment;->addCanonicalFile(Ljava/util/List;Ljava/io/File;)V

    .line 716
    return-object v0
.end method

.method public static greylist getLegacyExternalStorageDirectory()Ljava/io/File;
    .registers 2

    .line 800
    new-instance v0, Ljava/io/File;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-r getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .registers 3

    .line 806
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Android"

    const-string/jumbo v2, "obb"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMetadataDirectory()Ljava/io/File;
    .registers 1

    .line 1195
    sget-object v0, Landroid/os/Environment;->DIR_METADATA:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOdmDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 275
    sget-object v0, Landroid/os/Environment;->DIR_ODM_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOemDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 264
    sget-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static blacklist getPackageCacheDirectory()Ljava/io/File;
    .registers 3

    .line 700
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist getProductDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 296
    sget-object v0, Landroid/os/Environment;->DIR_PRODUCT_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getProductServicesDirectory()Ljava/io/File;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    const-string v0, "PRODUCT_SERVICES_ROOT"

    const-string v1, "/product_services"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRootDirectory()Ljava/io/File;
    .registers 1

    .line 244
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getStorageDirectory()Ljava/io/File;
    .registers 1

    .line 253
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "path"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1301
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSystemExtDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 322
    sget-object v0, Landroid/os/Environment;->DIR_SYSTEM_EXT_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static greylist-max-o getUserConfigDirectory(I)Ljava/io/File;
    .registers 6
    .param p0, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 367
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "misc"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    return-object v0
.end method

.method public static greylist-max-o getUserSystemDirectory(I)Ljava/io/File;
    .registers 5
    .param p0, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist getVendorDirectory()Ljava/io/File;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 285
    sget-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    return-object v0
.end method

.method private static greylist-max-o hasInterestingFiles(Ljava/io/File;)Z
    .registers 7
    .param p0, "dir"    # Ljava/io/File;

    .line 1045
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 1046
    .local v0, "explore":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Ljava/io/File;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 1048
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Ljava/io/File;

    .line 1049
    invoke-static {p0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    :goto_1b
    if-ge v2, v3, :cond_8

    aget-object v4, v1, v2

    .line 1050
    .local v4, "f":Ljava/io/File;
    invoke-static {v4}, Landroid/os/Environment;->isInterestingFile(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v1, 0x1

    return v1

    .line 1051
    :cond_27
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1049
    .end local v4    # "f":Ljava/io/File;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1054
    :cond_33
    return v2
.end method

.method public static greylist initForCurrentUser()V
    .registers 2

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 173
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 174
    return-void
.end method

.method public static whitelist isExternalStorageEmulated()Z
    .registers 2

    .line 1370
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1371
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static whitelist isExternalStorageEmulated(Ljava/io/File;)Z
    .registers 5
    .param p0, "path"    # Ljava/io/File;

    .line 1390
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1391
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_f

    .line 1392
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    return v1

    .line 1394
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find storage device at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist isExternalStorageLegacy()Z
    .registers 2

    .line 1411
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1412
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageLegacy(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static whitelist isExternalStorageLegacy(Ljava/io/File;)Z
    .registers 12
    .param p0, "path"    # Ljava/io/File;

    .line 1431
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 1432
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1434
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a2

    invoke-static {v1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_a2

    .line 1438
    :cond_19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1439
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1440
    return v3

    .line 1444
    :cond_24
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v4

    .line 1446
    .local v4, "packageName":Ljava/lang/String;
    :try_start_28
    const-string v5, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v5

    .line 1448
    .local v5, "noAppStorageProp":Landroid/content/pm/PackageManager$Property;
    if-eqz v5, :cond_37

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v6
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_34} :catch_38

    if-eqz v6, :cond_37

    .line 1449
    return v3

    .line 1453
    .end local v5    # "noAppStorageProp":Landroid/content/pm/PackageManager$Property;
    :cond_37
    goto :goto_39

    .line 1451
    :catch_38
    move-exception v5

    .line 1455
    :goto_39
    const-wide/32 v5, 0x8efaaaf

    invoke-static {v5, v6}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v5

    .line 1456
    .local v5, "defaultScopedStorage":Z
    const-wide/32 v6, 0x7e81388

    invoke-static {v6, v7}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v6

    .line 1460
    .local v6, "forceEnableScopedStorage":Z
    invoke-static {v5, v6}, Landroid/os/Environment;->isScopedStorageEnforced(ZZ)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 1461
    return v3

    .line 1465
    :cond_4e
    invoke-static {v5, v6}, Landroid/os/Environment;->isScopedStorageDisabled(ZZ)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_56

    .line 1466
    return v8

    .line 1469
    :cond_56
    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    .line 1470
    .local v7, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1472
    .local v9, "opPackageName":Ljava/lang/String;
    sget-object v10, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    if-nez v10, :cond_78

    .line 1473
    nop

    .line 1474
    const/16 v10, 0x57

    invoke-virtual {v7, v10, v1, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_71

    move v10, v8

    goto :goto_72

    :cond_71
    move v10, v3

    :goto_72
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    .line 1477
    :cond_78
    sget-object v10, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_87

    .line 1478
    sget-object v3, Landroid/os/Environment;->sLegacyStorageAppOp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1483
    :cond_87
    sget-object v10, Landroid/os/Environment;->sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

    if-nez v10, :cond_9b

    .line 1484
    nop

    .line 1485
    const/16 v10, 0x63

    invoke-virtual {v7, v10, v1, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_95

    move v3, v8

    :cond_95
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Landroid/os/Environment;->sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

    .line 1488
    :cond_9b
    sget-object v3, Landroid/os/Environment;->sNoIsolatedStorageAppOp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1435
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "defaultScopedStorage":Z
    .end local v6    # "forceEnableScopedStorage":Z
    .end local v7    # "appOps":Landroid/app/AppOpsManager;
    .end local v9    # "opPackageName":Ljava/lang/String;
    :cond_a2
    :goto_a2
    return v3
.end method

.method public static whitelist isExternalStorageManager()Z
    .registers 2

    .line 1510
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1511
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageManager(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static whitelist isExternalStorageManager(Ljava/io/File;)Z
    .registers 10
    .param p0, "path"    # Ljava/io/File;

    .line 1522
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1523
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1524
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1526
    .local v2, "uid":I
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1527
    .local v3, "appOps":Landroid/app/AppOpsManager;
    nop

    .line 1528
    const/16 v4, 0x5c

    invoke-virtual {v3, v4, v2, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 1530
    .local v4, "opMode":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_58

    .line 1541
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown AppOpsManager mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1532
    :pswitch_47
    nop

    .line 1534
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 1533
    const-string v8, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v8, v7, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_55

    move v5, v6

    .line 1532
    :cond_55
    return v5

    .line 1539
    :pswitch_56
    return v5

    .line 1536
    :pswitch_57
    return v6

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_56
        :pswitch_47
    .end packed-switch
.end method

.method public static whitelist isExternalStorageRemovable()Z
    .registers 2

    .line 1332
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1333
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static whitelist isExternalStorageRemovable(Ljava/io/File;)Z
    .registers 5
    .param p0, "path"    # Ljava/io/File;

    .line 1347
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 1348
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_f

    .line 1349
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    return v1

    .line 1351
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find storage device at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o isInterestingFile(Ljava/io/File;)Z
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .line 1058
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 1059
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, "name":Ljava/lang/String;
    const-string v2, ".exe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, "autorun.inf"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 1061
    const-string/jumbo v2, "launchpad.zip"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string v2, ".nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_33

    .line 1064
    :cond_31
    const/4 v1, 0x1

    return v1

    .line 1062
    :cond_33
    :goto_33
    return v1

    .line 1067
    .end local v0    # "name":Ljava/lang/String;
    :cond_34
    return v1
.end method

.method private static blacklist isScopedStorageDisabled(ZZ)Z
    .registers 3
    .param p0, "defaultScopedStorage"    # Z
    .param p1, "forceEnableScopedStorage"    # Z

    .line 1498
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist isScopedStorageEnforced(ZZ)Z
    .registers 3
    .param p0, "defaultScopedStorage"    # Z
    .param p1, "forceEnableScopedStorage"    # Z

    .line 1493
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static greylist-max-o isStandardDirectory(Ljava/lang/String;)Z
    .registers 7
    .param p0, "dir"    # Ljava/lang/String;

    .line 986
    sget-object v0, Landroid/os/Environment;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 987
    .local v4, "valid":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 988
    const/4 v0, 0x1

    return v0

    .line 986
    .end local v4    # "valid":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 991
    :cond_14
    return v2
.end method

.method public static greylist maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "path"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1616
    invoke-static {p0}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o setUserRequired(Z)V
    .registers 1
    .param p0, "userRequired"    # Z

    .line 1558
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    .line 1559
    return-void
.end method

.method private static greylist-max-o throwIfUserRequired()V
    .registers 3

    .line 1562
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    if-eqz v0, :cond_10

    .line 1563
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "Environment"

    const-string v2, "Path requests must specify a user by using UserEnvironment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    :cond_10
    return-void
.end method
