.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$OnInfoListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$InfoHandler;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final INVALID_SESSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private volatile mReleased:Z

.field private mUniqueId:I


# direct methods
.method static synthetic -get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/drm/DrmManagerClient;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .param p1, "uniqueId"    # I
    .param p2, "drmInfo"    # Landroid/drm/DrmInfo;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p1, "uniqueId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p1, "infoType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p1, "infoType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "drmframework_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@9
    .line 253
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    #@b
    .line 254
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    #@e
    .line 257
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@14
    .line 258
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@16
    const-string/jumbo v1, "release"

    #@19
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@1c
    .line 252
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 825
    const/4 v8, 0x0

    #@2
    .line 826
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@4
    .line 827
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@7
    move-result-object v10

    #@8
    .line 828
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@a
    const-string/jumbo v0, ""

    #@d
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 829
    const-string/jumbo v0, "file"

    #@16
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 828
    if-eqz v0, :cond_2

    #@1c
    .line 830
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 859
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    #@21
    .line 832
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    #@24
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 833
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    .local v8, "path":Ljava/lang/String;
    goto :goto_0

    #@2f
    .line 835
    .local v8, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    #@32
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_7

    #@38
    .line 836
    const/4 v0, 0x1

    #@39
    new-array v2, v0, [Ljava/lang/String;

    #@3b
    const-string/jumbo v0, "_data"

    #@3e
    aput-object v0, v2, v1

    #@40
    .line 837
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    #@41
    .line 839
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    #@43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@46
    move-result-object v0

    #@47
    const/4 v3, 0x0

    #@48
    .line 840
    const/4 v4, 0x0

    #@49
    const/4 v5, 0x0

    #@4a
    move-object v1, p1

    #@4b
    .line 839
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@4e
    move-result-object v6

    #@4f
    .line 841
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    #@51
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_6

    #@57
    .line 842
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@59
    const-string/jumbo v1, "Given Uri could not be found in media store"

    #@5c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    .line 847
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    #@61
    .line 848
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@63
    const-string/jumbo v1, "Given Uri is not formatted in a way so that it can be found in media store."

    #@66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 850
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@6b
    .line 851
    if-eqz v6, :cond_5

    #@6d
    .line 852
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@70
    .line 850
    :cond_5
    throw v0

    #@71
    .line 841
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@74
    move-result v0

    #@75
    if-eqz v0, :cond_4

    #@77
    .line 845
    const-string/jumbo v0, "_data"

    #@7a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@7d
    move-result v9

    #@7e
    .line 846
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@81
    move-result-object v8

    #@82
    .line 851
    .local v8, "path":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@84
    .line 852
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@87
    goto :goto_0

    #@88
    .line 856
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    .local v8, "path":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8a
    const-string/jumbo v1, "Given Uri scheme is not supported"

    #@8d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@90
    throw v0
.end method

.method private createEventThreads()V
    .locals 2

    #@0
    .prologue
    .line 904
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 905
    new-instance v0, Landroid/os/HandlerThread;

    #@a
    const-string/jumbo v1, "DrmManagerClient.InfoHandler"

    #@d
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@10
    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    #@12
    .line 906
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    #@14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@17
    .line 907
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    #@19
    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    #@1b
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    #@22
    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@24
    .line 909
    new-instance v0, Landroid/os/HandlerThread;

    #@26
    const-string/jumbo v1, "DrmManagerClient.EventHandler"

    #@29
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@2c
    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    #@2e
    .line 910
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    #@30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@33
    .line 911
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    #@35
    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    #@37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    #@3e
    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@40
    .line 903
    :cond_0
    return-void
.end method

.method private createListeners()V
    .locals 2

    #@0
    .prologue
    .line 916
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@4
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@7
    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    #@a
    .line 915
    return-void
.end method

.method private getErrorType(I)I
    .locals 1
    .param p1, "infoType"    # I

    #@0
    .prologue
    .line 803
    const/4 v0, -0x1

    #@1
    .line 805
    .local v0, "error":I
    packed-switch p1, :pswitch_data_0

    #@4
    .line 812
    :goto_0
    return v0

    #@5
    .line 809
    :pswitch_0
    const/16 v0, 0x7d6

    #@7
    .line 810
    goto :goto_0

    #@8
    .line 805
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEventType(I)I
    .locals 1
    .param p1, "infoType"    # I

    #@0
    .prologue
    .line 790
    const/4 v0, -0x1

    #@1
    .line 792
    .local v0, "eventType":I
    packed-switch p1, :pswitch_data_0

    #@4
    .line 799
    :goto_0
    return v0

    #@5
    .line 796
    :pswitch_0
    const/16 v0, 0x3ea

    #@7
    .line 797
    goto :goto_0

    #@8
    .line 792
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .param p0, "thisReference"    # Ljava/lang/Object;
    .param p1, "uniqueId"    # I
    .param p2, "infoType"    # I
    .param p3, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "thisReference":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/drm/DrmManagerClient;

    #@8
    .line 186
    .local v0, "instance":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    #@a
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 187
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@10
    .line 188
    const/4 v3, 0x1

    #@11
    .line 187
    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    .line 189
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@17
    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    .line 183
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    #@0
    .prologue
    .line 519
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 522
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@a
    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 520
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Given drmInfoRequest is invalid/null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    #@0
    .prologue
    .line 540
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    #@3
    move-result-object v0

    #@4
    .line 541
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    #@6
    .line 542
    const/16 v1, -0x7d0

    #@8
    return v1

    #@9
    .line 544
    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 486
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_2

    #@6
    :cond_0
    if-eqz p2, :cond_1

    #@8
    const-string/jumbo v0, ""

    #@b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 487
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Uri or the mimetype should be non null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 489
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 471
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    :cond_0
    if-eqz p2, :cond_1

    #@d
    const-string/jumbo v0, ""

    #@10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 472
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Path or the mimetype should be non null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 474
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@21
    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 656
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_1

    #@6
    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Given uri is not valid"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 659
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    #@0
    .prologue
    .line 688
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_1

    #@6
    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Given uri is not valid"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 691
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 645
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    #@0
    .prologue
    .line 672
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 675
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@13
    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 673
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Given path or action is not valid"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .param p1, "convertId"    # I

    #@0
    .prologue
    .line 786
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2
    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .param p1, "convertId"    # I
    .param p2, "inputData"    # [B

    #@0
    .prologue
    .line 768
    if-eqz p2, :cond_0

    #@2
    array-length v0, p2

    #@3
    if-gtz v0, :cond_1

    #@5
    .line 769
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Given inputData should be non null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 771
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@10
    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 265
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 269
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 262
    return-void

    #@10
    .line 268
    :catchall_0
    move-exception v0

    #@11
    .line 269
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 268
    throw v0
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 347
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2
    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    #@5
    move-result-object v3

    #@6
    .line 348
    .local v3, "supportInfos":[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 350
    .local v0, "descriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    array-length v4, v3

    #@d
    if-ge v2, v4, :cond_0

    #@f
    .line 351
    aget-object v4, v3, v2

    #@11
    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@18
    .line 350
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v4

    #@1f
    new-array v1, v4, [Ljava/lang/String;

    #@21
    .line 355
    .local v1, "drmEngines":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, [Ljava/lang/String;

    #@27
    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    #@0
    .prologue
    .line 400
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_1

    #@6
    .line 401
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Uri should be non null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 403
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    #@0
    .prologue
    .line 369
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 372
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@13
    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Given usage or path is invalid/null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 575
    if-eqz p1, :cond_0

    #@2
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v2, p1, :cond_2

    #@6
    :cond_0
    if-eqz p2, :cond_1

    #@8
    const-string/jumbo v2, ""

    #@b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 576
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "Uri or the mimetype should be non null"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 578
    :cond_2
    const-string/jumbo v1, ""

    #@1d
    .line 580
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    move-result-object v1

    #@21
    .line 585
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    move-result v2

    #@25
    return v2

    #@26
    .line 581
    :catch_0
    move-exception v0

    #@27
    .line 583
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrmManagerClient"

    #@2a
    const-string/jumbo v3, "Given Uri could not be found in media store"

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 558
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_2

    #@b
    :cond_0
    if-eqz p2, :cond_1

    #@d
    const-string/jumbo v0, ""

    #@10
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 559
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "Path or the mimetype should be non null"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 561
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@21
    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 415
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_1

    #@6
    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Uri should be non null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 418
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 384
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Given path is invalid/null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 387
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@16
    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 631
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_1

    #@6
    .line 632
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Given uri is not valid"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 634
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 596
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v7, ""

    #@5
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_1

    #@b
    .line 597
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v8, "Given path should be non null"

    #@10
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v7

    #@14
    .line 600
    :cond_1
    const/4 v6, 0x0

    #@15
    .line 602
    .local v6, "mime":Ljava/lang/String;
    const/4 v4, 0x0

    #@16
    .line 604
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    #@17
    .line 605
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    #@19
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1c
    .line 606
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_2

    #@22
    .line 607
    new-instance v5, Ljava/io/FileInputStream;

    #@24
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 608
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2a
    .end local v4    # "is":Ljava/io/FileInputStream;
    move-result-object v1

    #@2b
    .local v1, "fd":Ljava/io/FileDescriptor;
    move-object v4, v5

    #@2c
    .line 610
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    iget v7, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2e
    invoke-direct {p0, v7, p1, v1}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@31
    move-result-object v6

    #@32
    .line 613
    .local v6, "mime":Ljava/lang/String;
    if-eqz v4, :cond_3

    #@34
    .line 615
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@37
    .line 620
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "mime":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v6

    #@38
    .line 616
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "mime":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@39
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@3a
    .line 611
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .local v6, "mime":Ljava/lang/String;
    :catch_1
    move-exception v3

    #@3b
    .line 613
    .local v3, "ioe":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_3

    #@3d
    .line 615
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@40
    goto :goto_0

    #@41
    .line 616
    :catch_2
    move-exception v0

    #@42
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    #@43
    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@44
    .line 613
    :goto_2
    if-eqz v4, :cond_4

    #@46
    .line 615
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@49
    .line 612
    :cond_4
    :goto_3
    throw v7

    #@4a
    .line 616
    :catch_3
    move-exception v0

    #@4b
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    #@4c
    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    #@4d
    move-object v4, v5

    #@4e
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    goto :goto_2

    #@4f
    .line 611
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    #@50
    .restart local v3    # "ioe":Ljava/io/IOException;
    move-object v4, v5

    #@51
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .param p1, "engineFilePath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Given engineFilePath: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, "is not valid"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 456
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 459
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2e
    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    #@31
    .line 454
    return-void
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 748
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 749
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Path or the mimeType should be non null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 751
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@16
    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    #@0
    .prologue
    .line 499
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 502
    const/16 v1, -0x7d0

    #@a
    .line 503
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 504
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@10
    const/16 v3, 0x3ea

    #@12
    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v0

    #@16
    .line 505
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@18
    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    const/4 v1, 0x0

    #@1f
    .line 507
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    #@20
    .line 500
    .end local v1    # "result":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@22
    const-string/jumbo v3, "Given drmInfo is invalid/null"

    #@25
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2

    #@29
    .line 502
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "result":I
    :cond_2
    const/16 v1, -0x7d0

    #@2b
    .line 505
    goto :goto_0
.end method

.method public release()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 281
    iget-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    return-void

    #@6
    .line 282
    :cond_0
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/drm/DrmManagerClient;->mReleased:Z

    #@9
    .line 284
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 285
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    #@f
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@12
    .line 286
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    #@14
    .line 288
    :cond_1
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 289
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    #@1a
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    #@1d
    .line 290
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    #@1f
    .line 292
    :cond_2
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@21
    .line 293
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    #@23
    .line 294
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    #@25
    .line 295
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    #@27
    .line 296
    iput-object v1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    #@29
    .line 297
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@2b
    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    #@2e
    .line 298
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@30
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@33
    .line 280
    return-void
.end method

.method public removeAllRights()I
    .locals 4

    #@0
    .prologue
    .line 729
    const/16 v1, -0x7d0

    #@2
    .line 730
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 731
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@8
    const/16 v3, 0x3e9

    #@a
    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    .line 732
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    #@10
    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    const/4 v1, 0x0

    #@17
    .line 734
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    #@18
    .line 729
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/16 v1, -0x7d0

    #@1a
    .line 732
    goto :goto_0
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 716
    if-eqz p1, :cond_0

    #@2
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #@4
    if-ne v0, p1, :cond_1

    #@6
    .line 717
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Given uri is not valid"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 719
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 702
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v1, "Given path should be non null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 705
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@16
    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 441
    if-eqz p2, :cond_0

    #@a
    const-string/jumbo v0, ""

    #@d
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 444
    :cond_0
    :goto_0
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    #@15
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 439
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v1, "Given drmRights or contentPath is not valid"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 442
    :cond_2
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    #@26
    move-result-object v0

    #@27
    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    #@2a
    goto :goto_0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .param p1, "errorListener"    # Landroid/drm/DrmManagerClient$OnErrorListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 334
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    #@3
    .line 335
    if-eqz p1, :cond_0

    #@5
    .line 336
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 333
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroid/drm/DrmManagerClient$OnEventListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 321
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    #@3
    .line 322
    if-eqz p1, :cond_0

    #@5
    .line 323
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 320
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .param p1, "infoListener"    # Landroid/drm/DrmManagerClient$OnInfoListener;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 308
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    #@3
    .line 309
    if-eqz p1, :cond_0

    #@5
    .line 310
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    :cond_0
    monitor-exit p0

    #@9
    .line 307
    return-void

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
