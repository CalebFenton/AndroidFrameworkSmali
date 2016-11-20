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

.field private static final DIR_ANDROID_EXPAND:Ljava/io/File;

.field private static final DIR_ANDROID_ROOT:Ljava/io/File;

.field private static final DIR_ANDROID_STORAGE:Ljava/io/File;

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_DOWNLOAD_CACHE:Ljava/io/File;

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final DIR_ODM_ROOT:Ljava/io/File;

.field private static final DIR_OEM_ROOT:Ljava/io/File;

.field private static final DIR_VENDOR_ROOT:Ljava/io/File;

.field private static final ENV_ANDROID_DATA:Ljava/lang/String; = "ANDROID_DATA"

.field private static final ENV_ANDROID_EXPAND:Ljava/lang/String; = "ANDROID_EXPAND"

.field private static final ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final ENV_ANDROID_STORAGE:Ljava/lang/String; = "ANDROID_STORAGE"

.field private static final ENV_DOWNLOAD_CACHE:Ljava/lang/String; = "DOWNLOAD_CACHE"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_ODM_ROOT:Ljava/lang/String; = "ODM_ROOT"

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

.field public static final STANDARD_DIRECTORIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static sUserRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 56
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
    .line 57
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
    .line 58
    const-string/jumbo v0, "ANDROID_EXPAND"

    #@1b
    const-string/jumbo v1, "/mnt/expand"

    #@1e
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_EXPAND:Ljava/io/File;

    #@24
    .line 59
    const-string/jumbo v0, "ANDROID_STORAGE"

    #@27
    const-string/jumbo v1, "/storage"

    #@2a
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_STORAGE:Ljava/io/File;

    #@30
    .line 60
    const-string/jumbo v0, "DOWNLOAD_CACHE"

    #@33
    const-string/jumbo v1, "/cache"

    #@36
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@39
    move-result-object v0

    #@3a
    sput-object v0, Landroid/os/Environment;->DIR_DOWNLOAD_CACHE:Ljava/io/File;

    #@3c
    .line 61
    const-string/jumbo v0, "OEM_ROOT"

    #@3f
    const-string/jumbo v1, "/oem"

    #@42
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@45
    move-result-object v0

    #@46
    sput-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    #@48
    .line 62
    const-string/jumbo v0, "ODM_ROOT"

    #@4b
    const-string/jumbo v1, "/odm"

    #@4e
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@51
    move-result-object v0

    #@52
    sput-object v0, Landroid/os/Environment;->DIR_ODM_ROOT:Ljava/io/File;

    #@54
    .line 63
    const-string/jumbo v0, "VENDOR_ROOT"

    #@57
    const-string/jumbo v1, "/vendor"

    #@5a
    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    #@5d
    move-result-object v0

    #@5e
    sput-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    #@60
    .line 69
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    #@63
    .line 426
    const-string/jumbo v0, "Music"

    #@66
    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    #@68
    .line 438
    const-string/jumbo v0, "Podcasts"

    #@6b
    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    #@6d
    .line 450
    const-string/jumbo v0, "Ringtones"

    #@70
    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    #@72
    .line 462
    const-string/jumbo v0, "Alarms"

    #@75
    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    #@77
    .line 474
    const-string/jumbo v0, "Notifications"

    #@7a
    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    #@7c
    .line 482
    const-string/jumbo v0, "Pictures"

    #@7f
    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    #@81
    .line 490
    const-string/jumbo v0, "Movies"

    #@84
    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    #@86
    .line 500
    const-string/jumbo v0, "Download"

    #@89
    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    #@8b
    .line 507
    const-string/jumbo v0, "DCIM"

    #@8e
    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@90
    .line 513
    const-string/jumbo v0, "Documents"

    #@93
    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    #@95
    .line 533
    const/16 v0, 0xa

    #@97
    new-array v0, v0, [Ljava/lang/String;

    #@99
    .line 534
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    #@9b
    const/4 v2, 0x0

    #@9c
    aput-object v1, v0, v2

    #@9e
    .line 535
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    #@a0
    const/4 v2, 0x1

    #@a1
    aput-object v1, v0, v2

    #@a3
    .line 536
    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    #@a5
    const/4 v2, 0x2

    #@a6
    aput-object v1, v0, v2

    #@a8
    .line 537
    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    #@aa
    const/4 v2, 0x3

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 538
    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    #@af
    const/4 v2, 0x4

    #@b0
    aput-object v1, v0, v2

    #@b2
    .line 539
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    #@b4
    const/4 v2, 0x5

    #@b5
    aput-object v1, v0, v2

    #@b7
    .line 540
    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    #@b9
    const/4 v2, 0x6

    #@ba
    aput-object v1, v0, v2

    #@bc
    .line 541
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    #@be
    const/4 v2, 0x7

    #@bf
    aput-object v1, v0, v2

    #@c1
    .line 542
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    #@c3
    const/16 v2, 0x8

    #@c5
    aput-object v1, v0, v2

    #@c7
    .line 543
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    #@c9
    const/16 v2, 0x9

    #@cb
    aput-object v1, v0, v2

    #@cd
    .line 533
    sput-object v0, Landroid/os/Environment;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    #@cf
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
    .line 596
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 597
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
    .line 641
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 642
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
    .line 605
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 606
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
    .line 632
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 633
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
    .line 614
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 615
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
    .line 623
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 624
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
    .line 890
    move-object v0, p0

    #@1
    .line 891
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
    .line 892
    .local v2, "segment":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 893
    new-instance v0, Ljava/io/File;

    #@c
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 891
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
    .line 895
    :cond_0
    new-instance v0, Ljava/io/File;

    #@15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .end local v1    # "cur":Ljava/io/File;
    .restart local v0    # "cur":Ljava/io/File;
    goto :goto_1

    #@19
    .line 898
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
    .line 877
    array-length v2, p0

    #@1
    new-array v1, v2, [Ljava/io/File;

    #@3
    .line 878
    .local v1, "result":[Ljava/io/File;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 879
    aget-object v2, p0, v0

    #@9
    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v1, v0

    #@f
    .line 878
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 881
    :cond_0
    return-object v1
.end method

.method public static getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 300
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

.method public static getDataAppEphemeralDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 305
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "app-ephemeral"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 221
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 227
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_DATA:Ljava/io/File;

    #@8
    return-object v0

    #@9
    .line 229
    :cond_0
    new-instance v0, Ljava/io/File;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "/mnt/expand/"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@22
    return-object v0
.end method

.method public static getDataMiscCeDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 276
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "misc_ce"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static getDataMiscDeDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 281
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "misc_de"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static getDataMiscDirectory()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "misc"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method private static getDataProfilesDeDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 285
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x4

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "misc"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    const-string/jumbo v2, "profiles"

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    const-string/jumbo v2, "cur"

    #@16
    const/4 v3, 0x2

    #@17
    aput-object v2, v1, v3

    #@19
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x3

    #@1e
    aput-object v2, v1, v3

    #@20
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public static getDataProfilesDeForeignDexDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 295
    invoke-static {p0}, Landroid/os/Environment;->getDataProfilesDeDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "foreign-dex"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 290
    invoke-static {p0}, Landroid/os/Environment;->getDataProfilesDeDirectory(I)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object p1, v1, v2

    #@a
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static getDataSystemCeDirectory()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 256
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "system_ce"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getDataSystemCeDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 261
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "system_ce"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static getDataSystemDeDirectory()Ljava/io/File;
    .locals 4

    #@0
    .prologue
    .line 248
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "system_de"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getDataSystemDeDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 266
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v1, v1, [Ljava/lang/String;

    #@7
    const-string/jumbo v2, "system_de"

    #@a
    const/4 v3, 0x0

    #@b
    aput-object v2, v1, v3

    #@d
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public static getDataSystemDirectory()Ljava/io/File;
    .locals 3

    #@0
    .prologue
    .line 240
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "system"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method public static getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 310
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

.method public static getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 315
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

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

.method public static getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 322
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public static getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataDirectory(Ljava/lang/String;)Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "user_de"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@c
    return-object v0
.end method

.method public static getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 332
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

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

.method public static getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "volumeUuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    #@2
    invoke-static {p0, p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

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
    .line 855
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 856
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
    .line 649
    sget-object v0, Landroid/os/Environment;->DIR_DOWNLOAD_CACHE:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getExpandDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 235
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_EXPAND:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 403
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 404
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
    .line 587
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    #@3
    .line 588
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
    .line 746
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
    .line 747
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
    .line 769
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    .line 770
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@a
    .line 771
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 773
    :cond_0
    const-string/jumbo v1, "unknown"

    #@12
    return-object v1
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    #@0
    .prologue
    .line 409
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
    .line 414
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

.method public static getOdmDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 169
    sget-object v0, Landroid/os/Environment;->DIR_ODM_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getOemDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 159
    sget-object v0, Landroid/os/Environment;->DIR_OEM_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 144
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static getStorageDirectory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 149
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
    .line 755
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getUserConfigDirectory(I)Ljava/io/File;
    .locals 5
    .param p0, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 213
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    new-instance v2, Ljava/io/File;

    #@6
    .line 214
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "misc"

    #@d
    .line 213
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    .line 214
    const-string/jumbo v3, "user"

    #@13
    .line 213
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 213
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1d
    return-object v0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .param p0, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    #@2
    new-instance v1, Ljava/io/File;

    #@4
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

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
    .line 178
    sget-object v0, Landroid/os/Environment;->DIR_VENDOR_ROOT:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 2

    #@0
    .prologue
    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    .line 75
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    #@6
    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    #@9
    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@b
    .line 73
    return-void
.end method

.method public static isExternalStorageEmulated()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 825
    invoke-static {}, Landroid/os/Environment;->isStorageDisabled()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return v2

    #@8
    .line 826
    :cond_0
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@a
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    aget-object v0, v1, v2

    #@10
    .line 827
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
    .line 846
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    .line 847
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@a
    .line 848
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 850
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
    .line 786
    invoke-static {}, Landroid/os/Environment;->isStorageDisabled()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    return v2

    #@8
    .line 787
    :cond_0
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    #@a
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    aget-object v0, v1, v2

    #@10
    .line 788
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
    .line 802
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v1

    #@4
    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;

    #@7
    move-result-object v0

    #@8
    .line 803
    .local v0, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    #@a
    .line 804
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 806
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

.method public static isStandardDirectory(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dir"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 550
    sget-object v3, Landroid/os/Environment;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget-object v0, v3, v1

    #@9
    .line 551
    .local v0, "valid":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v5

    #@d
    if-eqz v5, :cond_0

    #@f
    .line 552
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 555
    .end local v0    # "valid":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private static isStorageDisabled()Z
    .locals 2

    #@0
    .prologue
    .line 902
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
    .line 918
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
    .line 861
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    #@2
    .line 860
    return-void
.end method

.method private static throwIfUserRequired()V
    .locals 3

    #@0
    .prologue
    .line 865
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 866
    const-string/jumbo v0, "Environment"

    #@7
    const-string/jumbo v1, "Path requests must specify a user by using UserEnvironment"

    #@a
    .line 867
    new-instance v2, Ljava/lang/Throwable;

    #@c
    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    #@f
    .line 866
    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 864
    :cond_0
    return-void
.end method
