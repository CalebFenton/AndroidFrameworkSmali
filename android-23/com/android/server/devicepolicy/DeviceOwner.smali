.class Lcom/android/server/devicepolicy/DeviceOwner;
.super Ljava/lang/Object;
.source "DeviceOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private fileForWriting:Landroid/util/AtomicFile;

.field private mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

.field private mInputStreamForTest:Ljava/io/InputStream;

.field private mOutputStreamForTest:Ljava/io/OutputStream;

.field private final mProfileOwners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@a
    .line 86
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 80
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@a
    .line 91
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    #@c
    .line 92
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    #@e
    .line 90
    return-void
.end method

.method static createWithDeviceInitializer(Landroid/content/ComponentName;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 3
    .param p0, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 121
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    #@2
    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    #@5
    .line 122
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v1, v2, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    #@b
    iput-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@d
    .line 123
    return-object v0
.end method

.method static createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "ownerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    #@2
    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    #@5
    .line 113
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7
    invoke-direct {v1, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    iput-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@c
    .line 114
    return-object v0
.end method

.method static createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4
    .param p0, "admin"    # Landroid/content/ComponentName;
    .param p1, "ownerName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 130
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    #@2
    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    #@5
    .line 131
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    new-instance v3, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@d
    invoke-direct {v3, p1, p0}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    #@10
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 132
    return-object v0
.end method

.method private finishWrite(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 390
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    #@6
    check-cast p1, Ljava/io/FileOutputStream;

    #@8
    .end local p1    # "stream":Ljava/io/OutputStream;
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    #@b
    .line 388
    :cond_0
    return-void
.end method

.method static isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 212
    const/4 v2, 0x0

    #@2
    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@5
    move-result-object v1

    #@6
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    #@8
    .line 213
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 214
    const/4 v2, 0x1

    #@f
    return v2

    #@10
    .line 217
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@11
    .line 218
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "Device Owner package "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    const-string/jumbo v4, " not installed."

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 220
    .end local v0    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v5
.end method

.method static isInstalledForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 225
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@4
    move-result-object v2

    #@5
    .line 226
    const/4 v3, 0x0

    #@6
    .line 225
    invoke-interface {v2, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    #@9
    move-result-object v0

    #@a
    .line 227
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    #@c
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 228
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 230
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    #@15
    .line 231
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v3, "Package manager has died"

    #@1a
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v2

    #@1e
    .line 234
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    return v4
.end method

.method static load()Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 4

    #@0
    .prologue
    .line 99
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner;

    #@2
    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceOwner;-><init>()V

    #@5
    .line 100
    .local v0, "owner":Lcom/android/server/devicepolicy/DeviceOwner;
    new-instance v1, Ljava/io/File;

    #@7
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@a
    move-result-object v2

    #@b
    const-string/jumbo v3, "device_owner.xml"

    #@e
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 101
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->readOwnerFile()V

    #@1a
    .line 102
    return-object v0

    #@1b
    .line 104
    :cond_0
    const/4 v1, 0x0

    #@1c
    return-object v1
.end method

.method private openRead()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 371
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mInputStreamForTest:Ljava/io/InputStream;

    #@6
    return-object v0

    #@7
    .line 374
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    #@9
    new-instance v1, Ljava/io/File;

    #@b
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@e
    move-result-object v2

    #@f
    .line 375
    const-string/jumbo v3, "device_owner.xml"

    #@12
    .line 374
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@18
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method private startWrite()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 380
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mOutputStreamForTest:Ljava/io/OutputStream;

    #@6
    return-object v0

    #@7
    .line 383
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    #@9
    new-instance v1, Ljava/io/File;

    #@b
    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    #@e
    move-result-object v2

    #@f
    .line 384
    const-string/jumbo v3, "device_owner.xml"

    #@12
    .line 383
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@15
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@18
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    #@1a
    .line 385
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->fileForWriting:Landroid/util/AtomicFile;

    #@1c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method private writeOwnerFileLocked()V
    .locals 9

    #@0
    .prologue
    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceOwner;->startWrite()Ljava/io/OutputStream;

    #@3
    move-result-object v2

    #@4
    .line 315
    .local v2, "outputStream":Ljava/io/OutputStream;
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    #@6
    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    #@9
    .line 316
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@b
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@12
    .line 317
    const/4 v6, 0x1

    #@13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v6

    #@17
    const/4 v7, 0x0

    #@18
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@1b
    .line 320
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 321
    const-string/jumbo v6, "device-owner"

    #@22
    const/4 v7, 0x0

    #@23
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@26
    .line 322
    const-string/jumbo v6, "package"

    #@29
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2b
    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@2d
    const/4 v8, 0x0

    #@2e
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 323
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@33
    iget-object v6, v6, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@35
    if-eqz v6, :cond_0

    #@37
    .line 324
    const-string/jumbo v6, "name"

    #@3a
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@3c
    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@3e
    const/4 v8, 0x0

    #@3f
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@42
    .line 326
    :cond_0
    const-string/jumbo v6, "device-owner"

    #@45
    const/4 v7, 0x0

    #@46
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@49
    .line 330
    :cond_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@4b
    if-eqz v6, :cond_3

    #@4d
    .line 331
    const-string/jumbo v6, "device-initializer"

    #@50
    const/4 v7, 0x0

    #@51
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@54
    .line 332
    const-string/jumbo v6, "package"

    #@57
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@59
    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@5b
    const/4 v8, 0x0

    #@5c
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5f
    .line 333
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@61
    iget-object v6, v6, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@63
    if-eqz v6, :cond_2

    #@65
    .line 335
    const-string/jumbo v6, "component"

    #@68
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@6a
    iget-object v7, v7, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@6c
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@6f
    move-result-object v7

    #@70
    const/4 v8, 0x0

    #@71
    .line 334
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@74
    .line 337
    :cond_2
    const-string/jumbo v6, "device-initializer"

    #@77
    const/4 v7, 0x0

    #@78
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7b
    .line 341
    :cond_3
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    #@80
    move-result v6

    #@81
    if-lez v6, :cond_5

    #@83
    .line 342
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@85
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@88
    move-result-object v6

    #@89
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8c
    move-result-object v4

    #@8d
    .local v4, "owner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@90
    move-result v6

    #@91
    if-eqz v6, :cond_5

    #@93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@96
    move-result-object v3

    #@97
    check-cast v3, Ljava/util/Map$Entry;

    #@99
    .line 343
    .local v3, "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    const-string/jumbo v6, "profile-owner"

    #@9c
    const/4 v7, 0x0

    #@9d
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a0
    .line 344
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a3
    move-result-object v5

    #@a4
    check-cast v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@a6
    .line 345
    .local v5, "ownerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    const-string/jumbo v6, "package"

    #@a9
    iget-object v7, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@ab
    const/4 v8, 0x0

    #@ac
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@af
    .line 346
    const-string/jumbo v6, "name"

    #@b2
    iget-object v7, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@b4
    const/4 v8, 0x0

    #@b5
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b8
    .line 347
    const-string/jumbo v7, "userId"

    #@bb
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@be
    move-result-object v6

    #@bf
    check-cast v6, Ljava/lang/Integer;

    #@c1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@c4
    move-result v6

    #@c5
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@c8
    move-result-object v6

    #@c9
    const/4 v8, 0x0

    #@ca
    invoke-interface {v1, v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cd
    .line 348
    iget-object v6, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@cf
    if-eqz v6, :cond_4

    #@d1
    .line 349
    const-string/jumbo v6, "component"

    #@d4
    iget-object v7, v5, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@d6
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@d9
    move-result-object v7

    #@da
    const/4 v8, 0x0

    #@db
    invoke-interface {v1, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@de
    .line 351
    :cond_4
    const-string/jumbo v6, "profile-owner"

    #@e1
    const/4 v7, 0x0

    #@e2
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@e5
    goto :goto_0

    #@e6
    .line 364
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .end local v3    # "owner":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    .end local v4    # "owner$iterator":Ljava/util/Iterator;
    .end local v5    # "ownerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :catch_0
    move-exception v0

    #@e7
    .line 365
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v6, "DevicePolicyManagerService"

    #@ea
    new-instance v7, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v8, "IO Exception when writing device-owner file\n"

    #@f2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v7

    #@f6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v7

    #@fa
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v7

    #@fe
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@101
    .line 312
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    #@102
    .line 356
    .restart local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@104
    if-eqz v6, :cond_6

    #@106
    .line 357
    const-string/jumbo v6, "system-update-policy"

    #@109
    const/4 v7, 0x0

    #@10a
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@10d
    .line 358
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@10f
    invoke-virtual {v6, v1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@112
    .line 359
    const-string/jumbo v6, "system-update-policy"

    #@115
    const/4 v7, 0x0

    #@116
    invoke-interface {v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@119
    .line 361
    :cond_6
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    #@11c
    .line 362
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    #@11f
    .line 363
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DeviceOwner;->finishWrite(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@122
    goto :goto_1
.end method


# virtual methods
.method clearDeviceInitializer()V
    .locals 1

    #@0
    .prologue
    .line 164
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@3
    .line 163
    return-void
.end method

.method clearDeviceOwner()V
    .locals 1

    #@0
    .prologue
    .line 148
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@3
    .line 147
    return-void
.end method

.method clearSystemUpdatePolicy()V
    .locals 1

    #@0
    .prologue
    .line 202
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@3
    .line 201
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 418
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "Device Owner: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b
    .line 420
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "  "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@34
    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 423
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@3a
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@3d
    move-result-object v2

    #@3e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41
    move-result-object v1

    #@42
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@45
    move-result v2

    #@46
    if-eqz v2, :cond_1

    #@48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Ljava/util/Map$Entry;

    #@4e
    .line 424
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    const-string/jumbo v3, "Profile Owner (User "

    #@5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    const-string/jumbo v3, "): "

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@74
    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@77
    move-result-object v2

    #@78
    check-cast v2, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7a
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    const-string/jumbo v4, "  "

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@91
    goto :goto_0

    #@92
    .line 417
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method getDeviceInitializerComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2
    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@4
    return-object v0
.end method

.method getDeviceInitializerPackageName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 156
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 140
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 136
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7
    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@9
    :cond_0
    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 180
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@d
    .line 181
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    #@f
    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@11
    :cond_0
    return-object v1
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 185
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@d
    .line 186
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v0, :cond_0

    #@f
    iget-object v1, v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@11
    :cond_0
    return-object v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@2
    return-object v0
.end method

.method hasDeviceInitializer()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method hasDeviceOwner()Z
    .locals 1

    #@0
    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method readOwnerFile()V
    .locals 20

    #@0
    .prologue
    .line 240
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/devicepolicy/DeviceOwner;->openRead()Ljava/io/InputStream;

    #@3
    move-result-object v4

    #@4
    .line 241
    .local v4, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@7
    move-result-object v8

    #@8
    .line 242
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@a
    invoke-virtual/range {v17 .. v17}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@d
    move-result-object v17

    #@e
    move-object/from16 v0, v17

    #@10
    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@13
    .line 244
    :cond_0
    :goto_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@16
    move-result v14

    #@17
    .local v14, "type":I
    const/16 v17, 0x1

    #@19
    move/from16 v0, v17

    #@1b
    if-eq v14, v0, :cond_9

    #@1d
    .line 245
    const/16 v17, 0x2

    #@1f
    move/from16 v0, v17

    #@21
    if-ne v14, v0, :cond_0

    #@23
    .line 249
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v13

    #@27
    .line 250
    .local v13, "tag":Ljava/lang/String;
    const-string/jumbo v17, "device-owner"

    #@2a
    move-object/from16 v0, v17

    #@2c
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v17

    #@30
    if-eqz v17, :cond_1

    #@32
    .line 251
    const-string/jumbo v17, "name"

    #@35
    const/16 v18, 0x0

    #@37
    move-object/from16 v0, v18

    #@39
    move-object/from16 v1, v17

    #@3b
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    .line 252
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v17, "package"

    #@42
    const/16 v18, 0x0

    #@44
    move-object/from16 v0, v18

    #@46
    move-object/from16 v1, v17

    #@48
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v7

    #@4c
    .line 253
    .local v7, "packageName":Ljava/lang/String;
    new-instance v17, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@4e
    move-object/from16 v0, v17

    #@50
    invoke-direct {v0, v6, v7}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@53
    move-object/from16 v0, v17

    #@55
    move-object/from16 v1, p0

    #@57
    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@59
    goto :goto_0

    #@5a
    .line 298
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_0
    move-exception v16

    #@5b
    .line 299
    .local v16, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v17, "DevicePolicyManagerService"

    #@5e
    new-instance v18, Ljava/lang/StringBuilder;

    #@60
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v19, "Error parsing device-owner file\n"

    #@66
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v18

    #@6a
    move-object/from16 v0, v18

    #@6c
    move-object/from16 v1, v16

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v18

    #@72
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v18

    #@76
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 238
    .end local v16    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    #@7a
    .line 254
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_1
    :try_start_1
    const-string/jumbo v17, "device-initializer"

    #@7d
    move-object/from16 v0, v17

    #@7f
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v17

    #@83
    if-eqz v17, :cond_3

    #@85
    .line 255
    const-string/jumbo v17, "package"

    #@88
    const/16 v18, 0x0

    #@8a
    move-object/from16 v0, v18

    #@8c
    move-object/from16 v1, v17

    #@8e
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@91
    move-result-object v7

    #@92
    .line 257
    .restart local v7    # "packageName":Ljava/lang/String;
    const-string/jumbo v17, "component"

    #@95
    const/16 v18, 0x0

    #@97
    move-object/from16 v0, v18

    #@99
    move-object/from16 v1, v17

    #@9b
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9e
    move-result-object v3

    #@9f
    .line 259
    .local v3, "initializerComponentStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@a2
    move-result-object v2

    #@a3
    .line 260
    .local v2, "admin":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    #@a5
    .line 261
    new-instance v17, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@a7
    const/16 v18, 0x0

    #@a9
    move-object/from16 v0, v17

    #@ab
    move-object/from16 v1, v18

    #@ad
    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    #@b0
    move-object/from16 v0, v17

    #@b2
    move-object/from16 v1, p0

    #@b4
    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@b6
    goto/16 :goto_0

    #@b8
    .line 300
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "initializerComponentStr":Ljava/lang/String;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_1
    move-exception v5

    #@b9
    .line 301
    .local v5, "ioe":Ljava/io/IOException;
    const-string/jumbo v17, "DevicePolicyManagerService"

    #@bc
    new-instance v18, Ljava/lang/StringBuilder;

    #@be
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v19, "IO Exception when reading device-owner file\n"

    #@c4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v18

    #@c8
    move-object/from16 v0, v18

    #@ca
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v18

    #@ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v18

    #@d2
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto :goto_1

    #@d6
    .line 263
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v3    # "initializerComponentStr":Ljava/lang/String;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "tag":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_2
    :try_start_2
    new-instance v17, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@d8
    const/16 v18, 0x0

    #@da
    move-object/from16 v0, v17

    #@dc
    move-object/from16 v1, v18

    #@de
    invoke-direct {v0, v1, v7}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@e1
    move-object/from16 v0, v17

    #@e3
    move-object/from16 v1, p0

    #@e5
    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@e7
    .line 264
    const-string/jumbo v17, "DevicePolicyManagerService"

    #@ea
    new-instance v18, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v19, "Error parsing device-owner file. Bad component name "

    #@f2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v18

    #@f6
    move-object/from16 v0, v18

    #@f8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v18

    #@fc
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v18

    #@100
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@103
    goto/16 :goto_0

    #@105
    .line 267
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v3    # "initializerComponentStr":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v17, "profile-owner"

    #@108
    move-object/from16 v0, v17

    #@10a
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v17

    #@10e
    if-eqz v17, :cond_7

    #@110
    .line 268
    const-string/jumbo v17, "package"

    #@113
    const/16 v18, 0x0

    #@115
    move-object/from16 v0, v18

    #@117
    move-object/from16 v1, v17

    #@119
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11c
    move-result-object v12

    #@11d
    .line 269
    .local v12, "profileOwnerPackageName":Ljava/lang/String;
    const-string/jumbo v17, "name"

    #@120
    const/16 v18, 0x0

    #@122
    move-object/from16 v0, v18

    #@124
    move-object/from16 v1, v17

    #@126
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@129
    move-result-object v11

    #@12a
    .line 271
    .local v11, "profileOwnerName":Ljava/lang/String;
    const-string/jumbo v17, "component"

    #@12d
    const/16 v18, 0x0

    #@12f
    move-object/from16 v0, v18

    #@131
    move-object/from16 v1, v17

    #@133
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@136
    move-result-object v9

    #@137
    .line 272
    .local v9, "profileOwnerComponentStr":Ljava/lang/String;
    const-string/jumbo v17, "userId"

    #@13a
    const/16 v18, 0x0

    #@13c
    move-object/from16 v0, v18

    #@13e
    move-object/from16 v1, v17

    #@140
    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@143
    move-result-object v17

    #@144
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@147
    move-result v15

    #@148
    .line 273
    .local v15, "userId":I
    const/4 v10, 0x0

    #@149
    .line 274
    .local v10, "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    if-eqz v9, :cond_4

    #@14b
    .line 275
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@14e
    move-result-object v2

    #@14f
    .line 277
    .restart local v2    # "admin":Landroid/content/ComponentName;
    if-eqz v2, :cond_6

    #@151
    .line 278
    new-instance v10, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@153
    .end local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    invoke-direct {v10, v11, v2}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    #@156
    .line 286
    .end local v2    # "admin":Landroid/content/ComponentName;
    :cond_4
    :goto_2
    if-nez v10, :cond_5

    #@158
    .line 287
    new-instance v10, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@15a
    invoke-direct {v10, v11, v12}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@15d
    .line 289
    :cond_5
    move-object/from16 v0, p0

    #@15f
    iget-object v0, v0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@161
    move-object/from16 v17, v0

    #@163
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@166
    move-result-object v18

    #@167
    move-object/from16 v0, v17

    #@169
    move-object/from16 v1, v18

    #@16b
    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16e
    goto/16 :goto_0

    #@170
    .line 282
    .restart local v2    # "admin":Landroid/content/ComponentName;
    .restart local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    :cond_6
    const-string/jumbo v17, "DevicePolicyManagerService"

    #@173
    new-instance v18, Ljava/lang/StringBuilder;

    #@175
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@178
    const-string/jumbo v19, "Error parsing device-owner file. Bad component name "

    #@17b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v18

    #@17f
    move-object/from16 v0, v18

    #@181
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v18

    #@185
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@188
    move-result-object v18

    #@189
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18c
    goto :goto_2

    #@18d
    .line 290
    .end local v2    # "admin":Landroid/content/ComponentName;
    .end local v9    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v10    # "profileOwnerInfo":Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
    .end local v11    # "profileOwnerName":Ljava/lang/String;
    .end local v12    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v15    # "userId":I
    :cond_7
    const-string/jumbo v17, "system-update-policy"

    #@190
    move-object/from16 v0, v17

    #@192
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@195
    move-result v17

    #@196
    if-eqz v17, :cond_8

    #@198
    .line 291
    invoke-static {v8}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    #@19b
    move-result-object v17

    #@19c
    move-object/from16 v0, v17

    #@19e
    move-object/from16 v1, p0

    #@1a0
    iput-object v0, v1, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@1a2
    goto/16 :goto_0

    #@1a4
    .line 293
    :cond_8
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    #@1a6
    .line 294
    new-instance v18, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v19, "Unexpected tag in device owner file: "

    #@1ae
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v18

    #@1b2
    move-object/from16 v0, v18

    #@1b4
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v18

    #@1b8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v18

    #@1bc
    .line 293
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1bf
    throw v17

    #@1c0
    .line 297
    .end local v13    # "tag":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@1c3
    goto/16 :goto_1
.end method

.method removeProfileOwner(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 175
    return-void
.end method

.method setDeviceInitializer(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 160
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    #@6
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceInitializer:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@8
    .line 159
    return-void
.end method

.method setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    new-instance v0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@2
    invoke-direct {v0, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@7
    .line 143
    return-void
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mProfileOwners:Ljava/util/HashMap;

    #@2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    new-instance v2, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;

    #@8
    invoke-direct {v2, p2, p1}, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    #@b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 171
    return-void
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 0
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    #@2
    .line 197
    return-void
.end method

.method writeOwnerFile()V
    .locals 1

    #@0
    .prologue
    .line 307
    monitor-enter p0

    #@1
    .line 308
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 306
    return-void

    #@6
    .line 307
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method
