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
.field private static final DATA_DIRECTORY:Ljava/io/File;

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_ANDROID_DATA:Ljava/io/File;

.field private static final DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final DIR_ANDROID_STORAGE:Ljava/io/File;

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final DIR_OEM_ROOT:Ljava/io/File;

.field private static final DIR_VENDOR_ROOT:Ljava/io/File;

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

.field private static final ENV_ANDROID_DATA:Ljava/lang/String; = "ANDROID_DATA"

.field private static final ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final ENV_ANDROID_STORAGE:Ljava/lang/String; = "ANDROID_STORAGE"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_OEM_ROOT:Ljava/lang/String; = "OEM_ROOT"

.field private static final ENV_VENDOR_ROOT:Ljava/lang/String; = "VENDOR_ROOT"

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File;

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static sUserRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "ANDROID_ROOT"

    #@3
    const-string/jumbo v1, "/system"

    #@6
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    #@c
    .line 54
    const-string/jumbo v0, "ANDROID_DATA"

    #@f
    const-string/jumbo v1, "/data"

    #@12
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    #@18
    .line 55
    const-string/jumbo v0, "ANDROID_STORAGE"

    #@1b
    const-string/jumbo v1, "/storage"

    #@1e
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    #@24
    .line 56
    const-string/jumbo v0, "OEM_ROOT"

    #@27
    const-string/jumbo v1, "/oem"

    #@2a
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    #@30
    .line 57
    const-string/jumbo v0, "VENDOR_ROOT"

    #@33
    const-string/jumbo v1, "/vendor"

    #@36
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@39
    move-result-object v0

    #@3a
    sput-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    #@3c
    .line 65
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    #@3f
    .line 230
    const-string/jumbo v0, "ANDROID_DATA"

    #@42
    const-string/jumbo v1, "/data"

    #@45
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@48
    move-result-object v0

    #@49
    .line 229
    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    #@4b
    .line 236
    const-string/jumbo v0, "ANDROID_SECURE_DATA"

    #@4e
    const-string/jumbo v1, "/data/secure"

    #@51
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@54
    move-result-object v0

    #@55
    .line 235
    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    #@57
    .line 238
    const-string/jumbo v0, "DOWNLOAD_CACHE"

    #@5a
    const-string/jumbo v1, "/cache"

    #@5d
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@60
    move-result-object v0

    #@61
    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    #@63
    .line 359
    const-string/jumbo v0, "Music"

    #@66
    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    #@68
    .line 371
    const-string/jumbo v0, "Podcasts"

    #@6b
    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    #@6d
    .line 383
    const-string/jumbo v0, "Ringtones"

    #@70
    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    #@72
    .line 395
    const-string/jumbo v0, "Alarms"

    #@75
    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    #@77
    .line 407
    const-string/jumbo v0, "Notifications"

    #@7a
    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    #@7c
    .line 415
    const-string/jumbo v0, "Pictures"

    #@7f
    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    #@81
    .line 423
    const-string/jumbo v0, "Movies"

    #@84
    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    #@86
    .line 433
    const-string/jumbo v0, "Download"

    #@89
    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    #@8b
    .line 440
    const-string/jumbo v0, "DCIM"

    #@8e
    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@90
    .line 446
    const-string/jumbo v0, "Documents"

    #@93
    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    #@95
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 486
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 487
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 531
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 532
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 495
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 496
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 522
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 523
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 504
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 505
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 513
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 514
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 766
    move-object v0, p0

    #@1
    .line 767
    .local v0, "cur":Ljava/io/File;
    const/4 v3, 0x0

    #@2
    array-length v4, p1

    #@3
    move-object v1, v0

    #@4
    .end local v0    # "cur":Ljava/io/File;
    .local v1, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    #@6
    aget-object v2, p1, v3

    #@8
    .line 768
    .local v2, "segment":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 769
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 767
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@11
    move-object v1, v0

    #@12
    .end local v0    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_0

    #@13
    .line 771
    :cond_0
    new-instance v0, Ljava/io/File;

    #@15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1

    #@19
    .line 774
    .end local v0    # "cur":Ljava/io/File;
    .end local v2    # "segment":Ljava/lang/String;
    .restart local v1    # "cur":Ljava/io/File;
    :cond_1
    return-object v1
.end method

.method public static varargs buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "base"    # [Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 753
    array-length v2, p0

    #@1
    new-array v1, v2, [Ljava/io/File;

    #@3
    .line 754
    .local v1, "result":[Ljava/io/File;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 755
    aget-object v2, p0, v0

    #@9
    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v1, v0

    #@f
    .line 754
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 757
    :cond_0
    return-object v1
.end method

.method public static getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 258
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "app"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 244
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 250
    new-instance v0, Ljava/io/File;

    #@8
    const-string/jumbo v1, "/data"

    #@b
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@e
    return-object v0

    #@f
    .line 252
    :cond_0
    new-instance v0, Ljava/io/File;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "/mnt/expand/"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@28
    return-object v0
.end method

.method public static getDataUserDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "user"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method public static getDataUserDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataUserDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public static getDataUserPackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 275
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserDirectory(Ljava/lang/String;I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 731
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 732
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    new-instance v1, Ljava/io/File;

    #@8
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    new-instance v1, Ljava/io/File;

    #@e
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 539
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 336
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 337
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 477
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 478
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@5
    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    aget-object v0, v0, v1

    #@c
    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 636
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@2
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    aget-object v0, v1, v2

    #@9
    .line 637
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public static getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 659
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    .line 660
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@a
    .line 661
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 663
    :cond_0
    const-string/jumbo v1, "unknown"

    #@12
    return-object v1
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 342
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "EXTERNAL_STORAGE"

    #@5
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method public static getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 347
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "Android"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "obb"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static getOemDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 155
    sget-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 140
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 190
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 191
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    #@8
    return-object v0

    #@9
    .line 193
    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    #@b
    return-object v0
.end method

.method public static getStorageDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 145
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 645
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 175
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 176
    new-instance v0, Ljava/io/File;

    #@8
    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    #@a
    const-string/jumbo v2, "system"

    #@d
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    return-object v0

    #@11
    .line 178
    :cond_0
    new-instance v0, Ljava/io/File;

    #@13
    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    #@15
    const-string/jumbo v2, "system"

    #@18
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1b
    return-object v0
.end method

.method public static getUserConfigDirectory(I)Ljava/io/File;
    .locals 5
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 215
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    new-instance v2, Ljava/io/File;

    #@6
    .line 216
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "misc"

    #@d
    .line 215
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 216
    const-string/jumbo v3, "user"

    #@13
    .line 215
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 216
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 215
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    return-object v0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@7
    move-result-object v2

    #@8
    const-string/jumbo v3, "users"

    #@b
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    return-object v0
.end method

.method public static getVendorDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 164
    sget-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 2

    #@0
    .prologue
    .line 70
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    .line 71
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    #@6
    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@9
    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@b
    .line 69
    return-void
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 226
    const-string/jumbo v0, "persist.security.efs.enabled"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 708
    invoke-static {}, Landroid/os/Environment;->isStorageDisabled()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return v2

    #@8
    .line 709
    :cond_0
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@a
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    aget-object v0, v1, v2

    #@10
    .line 710
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public static isExternalStorageEmulated(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 722
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    .line 723
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@a
    .line 724
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 726
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Failed to find storage device at "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public static isExternalStorageRemovable()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 675
    invoke-static {}, Landroid/os/Environment;->isStorageDisabled()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return v2

    #@8
    .line 676
    :cond_0
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@a
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    aget-object v0, v1, v2

    #@10
    .line 677
    .local v0, "externalDir":Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public static isExternalStorageRemovable(Ljava/io/File;)Z
    .locals 4
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 691
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    .line 692
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@a
    .line 693
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 695
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Failed to find storage device at "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method private static isStorageDisabled()Z
    .locals 2

    #@0
    .prologue
    .line 778
    const-string/jumbo v0, "config.disable_storage"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 794
    invoke-static {p0}, Landroid/os/storage/StorageManager;->maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static setUserRequired(Z)V
    .locals 0
    .param p0, "userRequired"    # Z

    #@0
    .prologue
    .line 737
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    #@2
    .line 736
    return-void
.end method

.method private static throwIfUserRequired()V
    .locals 3

    #@0
    .prologue
    .line 741
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 742
    const-string/jumbo v0, "Environment"

    #@7
    const-string/jumbo v1, "Path requests must specify a user by using UserEnvironment"

    #@a
    .line 743
    new-instance v2, Ljava/lang/Throwable;

    #@c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@f
    .line 742
    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 740
    :cond_0
    return-void
.end method
