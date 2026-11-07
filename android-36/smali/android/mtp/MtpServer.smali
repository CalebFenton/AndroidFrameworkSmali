.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final blacklist sID_LEN_BYTES:I = 0x10

.field private static final blacklist sID_LEN_STR:I = 0x20


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final greylist-max-o mDatabase:Landroid/mtp/MtpDatabase;

.field private greylist-max-o mNativeContext:J

.field private final greylist-max-o mOnTerminate:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "database"    # Landroid/mtp/MtpDatabase;
    .param p2, "controlFd"    # Ljava/io/FileDescriptor;
    .param p3, "usePtp"    # Z
    .param p4, "onTerminate"    # Ljava/lang/Runnable;
    .param p5, "deviceInfoManufacturer"    # Ljava/lang/String;
    .param p6, "deviceInfoModel"    # Ljava/lang/String;
    .param p7, "deviceInfoDeviceVersion"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDatabase;

    iput-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 58
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    .line 59
    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "mtp-cfg"

    .line 62
    .local v0, "strID_PREFS_NAME":Ljava/lang/String;
    const-string/jumbo v1, "mtp-id"

    .line 63
    .local v1, "strID_PREFS_KEY":Ljava/lang/String;
    const/4 v2, 0x0

    .line 66
    .local v2, "strRandomId":Ljava/lang/String;
    iget-object v3, p0, Landroid/mtp/MtpServer;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v4, "mtp-cfg"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 68
    .local v3, "sharedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "mtp-id"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 69
    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_44

    .line 73
    const/4 v2, 0x0

    goto :goto_5d

    .line 76
    :cond_44
    const/4 v5, 0x0

    .local v5, "ii":I
    :goto_45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 77
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5a

    .line 78
    const/4 v2, 0x0

    .line 79
    goto :goto_5d

    .line 76
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 84
    .end local v5    # "ii":I
    :cond_5d
    :goto_5d
    if-nez v2, :cond_6e

    .line 85
    invoke-direct {p0}, Landroid/mtp/MtpServer;->getRandId()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :cond_6e
    move-object v11, v2

    .line 91
    .local v11, "deviceInfoSerialNumber":Ljava/lang/String;
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v11}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 100
    return-void
.end method

.method private blacklist getRandId()Ljava/lang/String;
    .registers 4

    .line 103
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 104
    .local v0, "randomVal":Ljava/util/Random;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 106
    .local v1, "randomBytes":[B
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 107
    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final native greylist-max-o native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native greylist-max-o native_cleanup()V
.end method

.method private final native greylist-max-o native_remove_storage(I)V
.end method

.method private final native greylist-max-o native_run()V
.end method

.method private final native greylist-max-o native_send_device_property_changed(I)V
.end method

.method private final native greylist-max-o native_send_object_added(I)V
.end method

.method private final native blacklist native_send_object_info_changed(I)V
.end method

.method private final native greylist-max-o native_send_object_removed(I)V
.end method

.method private final native greylist-max-o native_setup(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public greylist-max-o addStorage(Landroid/mtp/MtpStorage;)V
    .registers 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .line 140
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    .line 141
    return-void
.end method

.method public greylist-max-o removeStorage(Landroid/mtp/MtpStorage;)V
    .registers 3
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .line 144
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    .line 145
    return-void
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 117
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 118
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 119
    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->close()V

    .line 120
    iget-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void
.end method

.method public greylist-max-o sendDevicePropertyChanged(I)V
    .registers 2
    .param p1, "property"    # I

    .line 136
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    .line 137
    return-void
.end method

.method public greylist-max-o sendObjectAdded(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 124
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 125
    return-void
.end method

.method public blacklist sendObjectInfoChanged(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 132
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_info_changed(I)V

    .line 133
    return-void
.end method

.method public greylist-max-o sendObjectRemoved(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 128
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 129
    return-void
.end method

.method public greylist-max-o start()V
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 112
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method
