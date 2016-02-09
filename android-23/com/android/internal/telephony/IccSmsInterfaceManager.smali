.class public Lcom/android/internal/telephony/IccSmsInterfaceManager;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_LOAD_DONE:I = 0x1

.field protected static final EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field protected static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "IccSmsInterfaceManager"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;

.field private mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

.field private mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

.field protected final mContext:Landroid/content/Context;

.field protected mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field protected mHandler:Landroid/os/Handler;

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 1
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 1
    .param p1, "configs"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@a
    .line 69
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    #@f
    .line 68
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    #@11
    .line 71
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    #@13
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    #@16
    .line 70
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    #@18
    .line 86
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;

    #@1a
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    #@1d
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@1f
    .line 129
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@21
    .line 130
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@27
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@29
    const-string/jumbo v1, "appops"

    #@2c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/app/AppOpsManager;

    #@32
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@34
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@36
    const-string/jumbo v1, "user"

    #@39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/os/UserManager;

    #@3f
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mUserManager:Landroid/os/UserManager;

    #@41
    .line 133
    new-instance v0, Lcom/android/internal/telephony/ImsSMSDispatcher;

    #@43
    .line 134
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@45
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    #@47
    .line 133
    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    #@4a
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@4c
    .line 128
    return-void
.end method

.method private enforceCarrierPrivilege()V
    .locals 3

    #@0
    .prologue
    .line 1113
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@3
    move-result-object v0

    #@4
    .line 1114
    .local v0, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@b
    move-result v1

    #@c
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@f
    move-result-object v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 1115
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    #@14
    const-string/jumbo v2, "No Carrier Privilege: No UICC"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 1117
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1d
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@20
    move-result v1

    #@21
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@24
    move-result-object v1

    #@25
    .line 1118
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@27
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v2

    #@2b
    .line 1117
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    #@2e
    move-result v1

    #@2f
    .line 1119
    const/4 v2, 0x1

    #@30
    .line 1117
    if-eq v1, v2, :cond_2

    #@32
    .line 1120
    new-instance v1, Ljava/lang/SecurityException;

    #@34
    const-string/jumbo v2, "No Carrier Privilege."

    #@37
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1

    #@3b
    .line 1112
    :cond_2
    return-void
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1125
    const/4 v0, 0x0

    #@1
    .line 1126
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    invoke-static {v1, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 1127
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    #@a
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    #@b
    goto :goto_0
.end method

.method private isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "messageUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 1037
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@5
    move-result-wide v8

    #@6
    .line 1038
    .local v8, "identity":J
    const/4 v6, 0x0

    #@7
    .line 1042
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    #@8
    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    #@a
    const-string/jumbo v0, "type"

    #@d
    const/4 v1, 0x0

    #@e
    aput-object v0, v2, v1

    #@10
    .line 1043
    const/4 v3, 0x0

    #@11
    .line 1044
    const/4 v4, 0x0

    #@12
    .line 1045
    const/4 v5, 0x0

    #@13
    move-object v0, p1

    #@14
    move-object v1, p2

    #@15
    .line 1040
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@18
    move-result-object v6

    #@19
    .line 1046
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    #@1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    .line 1047
    const/4 v0, 0x0

    #@22
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v10

    #@26
    .line 1048
    .local v10, "type":I
    const/4 v0, 0x3

    #@27
    if-eq v10, v0, :cond_1

    #@29
    .line 1049
    const/4 v0, 0x5

    #@2a
    if-ne v10, v0, :cond_2

    #@2c
    move v0, v11

    #@2d
    .line 1054
    :goto_0
    if-eqz v6, :cond_0

    #@2f
    .line 1055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@32
    .line 1057
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@35
    .line 1048
    return v0

    #@36
    :cond_1
    move v0, v11

    #@37
    goto :goto_0

    #@38
    :cond_2
    move v0, v12

    #@39
    .line 1049
    goto :goto_0

    #@3a
    .line 1054
    .end local v10    # "type":I
    :cond_3
    if-eqz v6, :cond_4

    #@3c
    .line 1055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3f
    .line 1057
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@42
    .line 1059
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v12

    #@43
    .line 1051
    :catch_0
    move-exception v7

    #@44
    .line 1052
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "IccSmsInterfaceManager"

    #@47
    const-string/jumbo v1, "[IccSmsInterfaceManager]isFailedOrDraft: query message type failed"

    #@4a
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 1054
    if-eqz v6, :cond_5

    #@4f
    .line 1055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@52
    .line 1057
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@55
    goto :goto_1

    #@56
    .line 1053
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@57
    .line 1054
    if-eqz v6, :cond_6

    #@59
    .line 1055
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@5c
    .line 1057
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5f
    .line 1053
    throw v0
.end method

.method private loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "messageUri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@4
    move-result-wide v8

    #@5
    .line 1068
    .local v8, "identity":J
    const/4 v6, 0x0

    #@6
    .line 1072
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    #@7
    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    #@9
    .line 1073
    const-string/jumbo v0, "body"

    #@c
    const/4 v1, 0x0

    #@d
    aput-object v0, v2, v1

    #@f
    .line 1074
    const-string/jumbo v0, "address"

    #@12
    const/4 v1, 0x1

    #@13
    aput-object v0, v2, v1

    #@15
    .line 1076
    const/4 v3, 0x0

    #@16
    .line 1077
    const/4 v4, 0x0

    #@17
    .line 1078
    const/4 v5, 0x0

    #@18
    move-object v0, p1

    #@19
    move-object v1, p2

    #@1a
    .line 1070
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@1d
    move-result-object v6

    #@1e
    .line 1079
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    #@20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_1

    #@26
    .line 1080
    const/4 v0, 0x2

    #@27
    new-array v0, v0, [Ljava/lang/String;

    #@29
    const/4 v1, 0x0

    #@2a
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x0

    #@2f
    aput-object v1, v0, v2

    #@31
    const/4 v1, 0x1

    #@32
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    const/4 v2, 0x1

    #@37
    aput-object v1, v0, v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    .line 1085
    if-eqz v6, :cond_0

    #@3b
    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@3e
    .line 1088
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@41
    .line 1080
    return-object v0

    #@42
    .line 1085
    :cond_1
    if-eqz v6, :cond_2

    #@44
    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@47
    .line 1088
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4a
    .line 1090
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v10

    #@4b
    .line 1082
    :catch_0
    move-exception v7

    #@4c
    .line 1083
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v0, "IccSmsInterfaceManager"

    #@4f
    const-string/jumbo v1, "[IccSmsInterfaceManager]loadText: query message text failed"

    #@52
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 1085
    if-eqz v6, :cond_3

    #@57
    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@5a
    .line 1088
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@5d
    goto :goto_0

    #@5e
    .line 1084
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    #@5f
    .line 1085
    if-eqz v6, :cond_4

    #@61
    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    #@64
    .line 1088
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@67
    .line 1084
    throw v0
.end method

.method private returnUnspecifiedFailure(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 1094
    if-eqz p1, :cond_0

    #@2
    .line 1096
    const/4 v1, 0x1

    #@3
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1093
    :cond_0
    :goto_0
    return-void

    #@7
    .line 1097
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_0
.end method

.method private returnUnspecifiedFailure(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1104
    .local p1, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    #@2
    .line 1105
    return-void

    #@3
    .line 1107
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/app/PendingIntent;

    #@13
    .line 1108
    .local v0, "pi":Landroid/app/PendingIntent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    #@16
    goto :goto_0

    #@17
    .line 1103
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_1
    return-void
.end method

.method private sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 373
    const-string/jumbo v0, "SMS"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "sendData: destAddr="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, " scAddr="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, " destPort="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 375
    const-string/jumbo v1, " data=\'"

    #@33
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 375
    invoke-static {p5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 375
    const-string/jumbo v1, "\' sentIntent="

    #@42
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 376
    const-string/jumbo v1, " deliveryIntent="

    #@4d
    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@5c
    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@5e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@61
    move-result v1

    #@62
    const/16 v2, 0x14

    #@64
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@67
    move-result v0

    #@68
    if-eqz v0, :cond_1

    #@6a
    .line 380
    return-void

    #@6b
    .line 382
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object p2

    #@6f
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@71
    move-object v1, p2

    #@72
    move-object v2, p3

    #@73
    move v3, p4

    #@74
    move-object v4, p5

    #@75
    move-object v5, p6

    #@76
    move-object v6, p7

    #@77
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@7a
    .line 372
    return-void
.end method

.method private sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z

    #@0
    .prologue
    .line 441
    const-string/jumbo v0, "SMS"

    #@3
    const/4 v1, 0x2

    #@4
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v1, "sendText: destAddr="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, " scAddr="

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 443
    const-string/jumbo v1, " text=\'"

    #@28
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 443
    const-string/jumbo v1, "\' sentIntent="

    #@33
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 444
    const-string/jumbo v1, " deliveryIntent="

    #@3e
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@4d
    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@4f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x14

    #@55
    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_1

    #@5b
    .line 448
    return-void

    #@5c
    .line 450
    :cond_1
    if-nez p7, :cond_2

    #@5e
    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCarrierPrivilege()V

    #@61
    .line 454
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    #@64
    move-result-object p2

    #@65
    .line 455
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@67
    .line 456
    const/4 v6, 0x0

    #@68
    move-object v1, p2

    #@69
    move-object v2, p3

    #@6a
    move-object v3, p4

    #@6b
    move-object v4, p5

    #@6c
    move-object v5, p6

    #@6d
    move-object v7, p1

    #@6e
    move/from16 v8, p7

    #@70
    .line 455
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@73
    .line 440
    return-void
.end method

.method private setCdmaBroadcastActivation(Z)Z
    .locals 5
    .param p1, "activate"    # Z

    #@0
    .prologue
    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Calling setCdmaBroadcastActivation("

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, ")"

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@1e
    .line 906
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@20
    monitor-enter v3

    #@21
    .line 907
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@23
    const/4 v4, 0x3

    #@24
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@27
    move-result-object v1

    #@28
    .line 909
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    #@29
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@2b
    .line 910
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2d
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2f
    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 913
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@34
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    :goto_0
    monitor-exit v3

    #@38
    .line 919
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@3a
    return v2

    #@3b
    .line 914
    :catch_0
    move-exception v0

    #@3c
    .line 915
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "interrupted while trying to set cdma broadcast activation"

    #@3f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 906
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2
.end method

.method private setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 5
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    #@0
    .prologue
    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Calling setCdmaBroadcastConfig with "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    array-length v3, p1

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " configurations"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@1f
    .line 886
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@21
    monitor-enter v3

    #@22
    .line 887
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@24
    const/4 v4, 0x4

    #@25
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    .line 889
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    #@2a
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@2c
    .line 890
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2e
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@30
    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 893
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@35
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :goto_0
    monitor-exit v3

    #@39
    .line 899
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@3b
    return v2

    #@3c
    .line 894
    :catch_0
    move-exception v0

    #@3d
    .line 895
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "interrupted while trying to set cdma broadcast config"

    #@40
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 886
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method

.method private setCellBroadcastActivation(Z)Z
    .locals 5
    .param p1, "activate"    # Z

    #@0
    .prologue
    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Calling setCellBroadcastActivation("

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const/16 v3, 0x29

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@1d
    .line 866
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@1f
    monitor-enter v3

    #@20
    .line 867
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@22
    const/4 v4, 0x3

    #@23
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@26
    move-result-object v1

    #@27
    .line 869
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    #@28
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@2a
    .line 870
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2c
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@2e
    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 873
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@33
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :goto_0
    monitor-exit v3

    #@37
    .line 879
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@39
    return v2

    #@3a
    .line 874
    :catch_0
    move-exception v0

    #@3b
    .line 875
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "interrupted while trying to set cell broadcast activation"

    #@3e
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    goto :goto_0

    #@42
    .line 866
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@43
    monitor-exit v3

    #@44
    throw v2
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 5
    .param p1, "configs"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    #@0
    .prologue
    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Calling setGsmBroadcastConfig with "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    array-length v3, p1

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " configurations"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@1f
    .line 846
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@21
    monitor-enter v3

    #@22
    .line 847
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@24
    const/4 v4, 0x4

    #@25
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@28
    move-result-object v1

    #@29
    .line 849
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    #@2a
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@2c
    .line 850
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2e
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@30
    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@33
    .line 853
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@35
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    :goto_0
    monitor-exit v3

    #@39
    .line 859
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@3b
    return v2

    #@3c
    .line 854
    :catch_0
    move-exception v0

    #@3d
    .line 855
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "interrupted while trying to set cell broadcast config"

    #@40
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 846
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@45
    monitor-exit v3

    #@46
    throw v2
.end method


# virtual methods
.method protected buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    #@1
    .line 581
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v1

    #@5
    .line 584
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    #@7
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 586
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    #@d
    .line 587
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, [B

    #@13
    .line 588
    .local v0, "ba":[B
    aget-byte v4, v0, v6

    #@15
    if-nez v4, :cond_0

    #@17
    .line 589
    const/4 v4, 0x0

    #@18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 586
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 591
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/SmsRawData;

    #@20
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, [B

    #@26
    invoke-direct {v5, v4}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    #@29
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    goto :goto_1

    #@2d
    .line 595
    .end local v0    # "ba":[B
    :cond_1
    return-object v3
.end method

.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v3, "copyMessageToIccEf: status="

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    const-string/jumbo v3, " ==> "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 251
    const-string/jumbo v3, "pdu=("

    #@1b
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 251
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    .line 252
    const-string/jumbo v3, "), smsc=("

    #@2a
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 252
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 252
    const-string/jumbo v3, ")"

    #@39
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@44
    .line 253
    const-string/jumbo v2, "Copying message to Icc"

    #@47
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    #@4a
    .line 254
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@4c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4f
    move-result v3

    #@50
    const/16 v4, 0x16

    #@52
    invoke-virtual {v2, v4, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_0

    #@58
    .line 256
    return v5

    #@59
    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@5b
    monitor-enter v3

    #@5c
    .line 259
    const/4 v2, 0x0

    #@5d
    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@5f
    .line 260
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@61
    const/4 v4, 0x2

    #@62
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@65
    move-result-object v1

    #@66
    .line 263
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@68
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@6b
    move-result v2

    #@6c
    const/4 v4, 0x1

    #@6d
    if-ne v4, v2, :cond_1

    #@6f
    .line 264
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@71
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@73
    invoke-static {p4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    .line 265
    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@7a
    move-result-object v5

    #@7b
    .line 264
    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7e
    .line 272
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@80
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    :goto_1
    monitor-exit v3

    #@84
    .line 277
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@86
    return v2

    #@87
    .line 267
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@89
    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@8b
    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@92
    goto :goto_0

    #@93
    .line 258
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    #@94
    monitor-exit v3

    #@95
    throw v2

    #@96
    .line 273
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@97
    .line 274
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "interrupted while trying to update by index"

    #@9a
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@9d
    goto :goto_1
.end method

.method public declared-synchronized disableCdmaBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 736
    :try_start_0
    const-string/jumbo v4, "disableCdmaBroadcastRange"

    #@6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@9
    .line 738
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    .line 741
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@12
    .line 742
    const-string/jumbo v5, "Disabling cell broadcast SMS"

    #@15
    .line 740
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 744
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 745
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v5

    #@20
    .line 744
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 747
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    #@26
    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Failed to remove cdma broadcast subscription for MID range "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 749
    const-string/jumbo v4, " to "

    #@3f
    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 749
    const-string/jumbo v4, " from client "

    #@4a
    .line 748
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 750
    return v2

    #@5b
    .line 754
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "Removed cdma broadcast subscription for MID range "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 755
    const-string/jumbo v5, " to "

    #@6e
    .line 754
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 755
    const-string/jumbo v5, " from client "

    #@79
    .line 754
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@88
    .line 757
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    #@8a
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    #@8d
    move-result v4

    #@8e
    if-eqz v4, :cond_1

    #@90
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    monitor-exit p0

    #@94
    .line 759
    return v3

    #@95
    :cond_1
    move v2, v3

    #@96
    .line 757
    goto :goto_0

    #@97
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    #@98
    monitor-exit p0

    #@99
    throw v2
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    #@0
    .prologue
    .line 631
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    #@0
    .prologue
    .line 645
    if-nez p3, :cond_0

    #@2
    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRange(II)Z

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 647
    :cond_0
    const/4 v0, 0x1

    #@8
    if-ne p3, v0, :cond_1

    #@a
    .line 648
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRange(II)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 650
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Not a supportted RAN Type"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public declared-synchronized disableGsmBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 682
    :try_start_0
    const-string/jumbo v4, "disableGsmBroadcastRange"

    #@6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@9
    .line 684
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    .line 687
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@12
    .line 688
    const-string/jumbo v5, "Disabling cell broadcast SMS"

    #@15
    .line 686
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 690
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v5

    #@20
    .line 690
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 693
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    #@26
    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Failed to remove GSM cell broadcast subscription for MID range "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 695
    const-string/jumbo v4, " to "

    #@3f
    .line 694
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 695
    const-string/jumbo v4, " from client "

    #@4a
    .line 694
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 696
    return v2

    #@5b
    .line 700
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "Removed GSM cell broadcast subscription for MID range "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 701
    const-string/jumbo v5, " to "

    #@6e
    .line 700
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 701
    const-string/jumbo v5, " from client "

    #@79
    .line 700
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@88
    .line 703
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    #@8a
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    #@8d
    move-result v4

    #@8e
    if-eqz v4, :cond_1

    #@90
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    monitor-exit p0

    #@94
    .line 705
    return v3

    #@95
    :cond_1
    move v2, v3

    #@96
    .line 703
    goto :goto_0

    #@97
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    #@98
    monitor-exit p0

    #@99
    throw v2
.end method

.method public declared-synchronized enableCdmaBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 709
    :try_start_0
    const-string/jumbo v4, "enableCdmaBroadcastRange"

    #@6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@9
    .line 711
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    .line 714
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@12
    .line 715
    const-string/jumbo v5, "Enabling cdma broadcast SMS"

    #@15
    .line 713
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 717
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v5

    #@20
    .line 717
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 720
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    #@26
    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Failed to add cdma broadcast subscription for MID range "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 722
    const-string/jumbo v4, " to "

    #@3f
    .line 721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 722
    const-string/jumbo v4, " from client "

    #@4a
    .line 721
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 723
    return v2

    #@5b
    .line 727
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "Added cdma broadcast subscription for MID range "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 728
    const-string/jumbo v5, " to "

    #@6e
    .line 727
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 728
    const-string/jumbo v5, " from client "

    #@79
    .line 727
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@88
    .line 730
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    #@8a
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    #@8d
    move-result v4

    #@8e
    if-eqz v4, :cond_1

    #@90
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    monitor-exit p0

    #@94
    .line 732
    return v3

    #@95
    :cond_1
    move v2, v3

    #@96
    .line 730
    goto :goto_0

    #@97
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    #@98
    monitor-exit p0

    #@99
    throw v2
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    #@0
    .prologue
    .line 627
    invoke-virtual {p0, p1, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(III)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    #@0
    .prologue
    .line 635
    if-nez p3, :cond_0

    #@2
    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRange(II)Z

    #@5
    move-result v0

    #@6
    return v0

    #@7
    .line 637
    :cond_0
    const/4 v0, 0x1

    #@8
    if-ne p3, v0, :cond_1

    #@a
    .line 638
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRange(II)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 640
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Not a supportted RAN Type"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0
.end method

.method public declared-synchronized enableGsmBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 655
    :try_start_0
    const-string/jumbo v4, "enableGsmBroadcastRange"

    #@6
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@9
    .line 657
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@b
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@e
    move-result-object v1

    #@f
    .line 660
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@12
    .line 661
    const-string/jumbo v5, "Enabling cell broadcast SMS"

    #@15
    .line 659
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 663
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v4

    #@1c
    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1f
    move-result v5

    #@20
    .line 663
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 666
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    #@26
    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_0

    #@2c
    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Failed to add GSM cell broadcast subscription for MID range "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 668
    const-string/jumbo v4, " to "

    #@3f
    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    .line 668
    const-string/jumbo v4, " from client "

    #@4a
    .line 667
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    monitor-exit p0

    #@5a
    .line 669
    return v2

    #@5b
    .line 673
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v5, "Added GSM cell broadcast subscription for MID range "

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 674
    const-string/jumbo v5, " to "

    #@6e
    .line 673
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v4

    #@76
    .line 674
    const-string/jumbo v5, " from client "

    #@79
    .line 673
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@88
    .line 676
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    #@8a
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    #@8d
    move-result v4

    #@8e
    if-eqz v4, :cond_1

    #@90
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    monitor-exit p0

    #@94
    .line 678
    return v3

    #@95
    :cond_1
    move v2, v3

    #@96
    .line 676
    goto :goto_0

    #@97
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    #@98
    monitor-exit p0

    #@99
    throw v2
.end method

.method protected enforceReceiveAndSend(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@2
    .line 177
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    #@5
    .line 176
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@a
    .line 179
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@d
    .line 178
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 175
    return-void
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 287
    const-string/jumbo v3, "getAllMessagesFromEF"

    #@3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@6
    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    #@8
    .line 290
    const-string/jumbo v4, "android.permission.RECEIVE_SMS"

    #@b
    .line 291
    const-string/jumbo v5, "Reading messages from Icc"

    #@e
    .line 289
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@16
    move-result v4

    #@17
    const/16 v5, 0x15

    #@19
    invoke-virtual {v3, v5, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 294
    new-instance v3, Ljava/util/ArrayList;

    #@21
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@24
    return-object v3

    #@25
    .line 296
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@27
    monitor-enter v4

    #@28
    .line 298
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2a
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@2d
    move-result-object v1

    #@2e
    .line 299
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_1

    #@30
    .line 300
    const-string/jumbo v3, "IccSmsInterfaceManager"

    #@33
    const-string/jumbo v5, "Cannot load Sms records. No icc card?"

    #@36
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 301
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 302
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    #@3f
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@42
    .line 303
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit v4

    #@45
    return-object v3

    #@46
    .line 307
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@48
    const/4 v5, 0x1

    #@49
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@4c
    move-result-object v2

    #@4d
    .line 308
    .local v2, "response":Landroid/os/Message;
    const/16 v3, 0x6f3c

    #@4f
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    .line 311
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@54
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    :goto_0
    monitor-exit v4

    #@58
    .line 316
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    #@5a
    return-object v3

    #@5b
    .line 312
    :catch_0
    move-exception v0

    #@5c
    .line 313
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "interrupted while trying to load from the Icc"

    #@5f
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@62
    goto :goto_0

    #@63
    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    #@64
    monitor-exit v4

    #@65
    throw v3
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getPremiumSmsPermission(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCarrierPrivilege()V

    #@3
    .line 471
    const-string/jumbo v0, "SMS"

    #@6
    const/4 v1, 0x2

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "pdu: "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 473
    const-string/jumbo v1, "\n format="

    #@20
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 474
    const-string/jumbo v1, "\n receivedIntent="

    #@2b
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@3a
    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@3c
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    #@3f
    .line 469
    return-void
.end method

.method public isImsSmsSupported()Z
    .locals 1

    #@0
    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 923
    const-string/jumbo v0, "IccSmsInterfaceManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "[IccSmsInterfaceManager] "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 922
    return-void
.end method

.method protected makeSmsRecordData(I[B)[B
    .locals 5
    .param p1, "status"    # I
    .param p2, "pdu"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 607
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@7
    move-result v2

    #@8
    if-ne v4, v2, :cond_0

    #@a
    .line 608
    const/16 v2, 0xb0

    #@c
    new-array v0, v2, [B

    #@e
    .line 614
    .local v0, "data":[B
    :goto_0
    and-int/lit8 v2, p1, 0x7

    #@10
    int-to-byte v2, v2

    #@11
    aput-byte v2, v0, v3

    #@13
    .line 616
    array-length v2, p2

    #@14
    invoke-static {p2, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 619
    array-length v2, p2

    #@18
    add-int/lit8 v1, v2, 0x1

    #@1a
    .local v1, "j":I
    :goto_1
    array-length v2, v0

    #@1b
    if-ge v1, v2, :cond_1

    #@1d
    .line 620
    const/4 v2, -0x1

    #@1e
    aput-byte v2, v0, v1

    #@20
    .line 619
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_1

    #@23
    .line 610
    .end local v0    # "data":[B
    .end local v1    # "j":I
    :cond_0
    const/16 v2, 0xff

    #@25
    new-array v0, v2, [B

    #@27
    .restart local v0    # "data":[B
    goto :goto_0

    #@28
    .line 623
    .restart local v1    # "j":I
    :cond_1
    return-object v0
.end method

.method protected markMessagesAsRead(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    const/4 v11, 0x3

    #@3
    const/4 v4, 0x0

    #@4
    .line 138
    if-nez p1, :cond_0

    #@6
    .line 139
    return-void

    #@7
    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@c
    move-result-object v0

    #@d
    .line 144
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    #@f
    .line 147
    const-string/jumbo v1, "SMS"

    #@12
    invoke-static {v1, v11}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 148
    const-string/jumbo v1, "markMessagesAsRead - aborting, no icc card present."

    #@1b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@1e
    .line 150
    :cond_1
    return-void

    #@1f
    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@22
    move-result v7

    #@23
    .line 155
    .local v7, "count":I
    const/4 v8, 0x0

    #@24
    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    #@26
    .line 156
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v6

    #@2a
    check-cast v6, [B

    #@2c
    .line 157
    .local v6, "ba":[B
    aget-byte v1, v6, v12

    #@2e
    if-ne v1, v11, :cond_3

    #@30
    .line 158
    array-length v9, v6

    #@31
    .line 159
    .local v9, "n":I
    add-int/lit8 v1, v9, -0x1

    #@33
    new-array v10, v1, [B

    #@35
    .line 160
    .local v10, "nba":[B
    add-int/lit8 v1, v9, -0x1

    #@37
    invoke-static {v6, v13, v10, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3a
    .line 161
    invoke-virtual {p0, v13, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    #@3d
    move-result-object v3

    #@3e
    .line 162
    .local v3, "record":[B
    add-int/lit8 v2, v8, 0x1

    #@40
    const/16 v1, 0x6f3c

    #@42
    move-object v5, v4

    #@43
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@46
    .line 163
    const-string/jumbo v1, "SMS"

    #@49
    invoke-static {v1, v11}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_3

    #@4f
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "SMS "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    add-int/lit8 v2, v8, 0x1

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    const-string/jumbo v2, " marked as read"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@6f
    .line 155
    .end local v3    # "record":[B
    .end local v9    # "n":I
    .end local v10    # "nba":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@71
    goto :goto_0

    #@72
    .line 137
    .end local v6    # "ba":[B
    :cond_4
    return-void
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 339
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@9
    .line 340
    const-string/jumbo v2, "Sending SMS message"

    #@c
    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 341
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@12
    .line 337
    return-void
.end method

.method public sendDataWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 326
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@9
    .line 327
    const-string/jumbo v2, "Sending SMS message"

    #@c
    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 328
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDataInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    #@12
    .line 324
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 508
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@7
    move-result-object v2

    #@8
    .line 509
    const-string/jumbo v3, "android.permission.SEND_SMS"

    #@b
    .line 510
    const-string/jumbo v4, "Sending SMS message"

    #@e
    .line 508
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 511
    if-nez p7, :cond_0

    #@13
    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCarrierPrivilege()V

    #@16
    .line 515
    :cond_0
    const-string/jumbo v2, "SMS"

    #@19
    const/4 v3, 0x2

    #@1a
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 516
    const/16 v17, 0x0

    #@22
    .line 517
    .local v17, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v20

    #@26
    .local v20, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_1

    #@2c
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v19

    #@30
    check-cast v19, Ljava/lang/String;

    #@32
    .line 518
    .local v19, "part":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "sendMultipartText: destAddr="

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    move-object/from16 v0, p2

    #@40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    const-string/jumbo v3, ", srAddr="

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    move-object/from16 v0, p3

    #@4d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 519
    const-string/jumbo v3, ", part["

    #@54
    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 519
    add-int/lit8 v18, v17, 0x1

    #@5a
    .line 518
    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v0, v17

    #@5c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 519
    const-string/jumbo v3, "]="

    #@63
    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    move-object/from16 v0, v19

    #@69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    move-object/from16 v0, p0

    #@73
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@76
    move/from16 v17, v18

    #@78
    .end local v18    # "i":I
    .restart local v17    # "i":I
    goto :goto_0

    #@79
    .line 522
    .end local v17    # "i":I
    .end local v19    # "part":Ljava/lang/String;
    .end local v20    # "part$iterator":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    #@7b
    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@7d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@80
    move-result v3

    #@81
    const/16 v4, 0x14

    #@83
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v2, v4, v3, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@88
    move-result v2

    #@89
    if-eqz v2, :cond_2

    #@8b
    .line 524
    return-void

    #@8c
    .line 527
    :cond_2
    move-object/from16 v0, p0

    #@8e
    move-object/from16 v1, p2

    #@90
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    #@93
    move-result-object p2

    #@94
    .line 529
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@97
    move-result v2

    #@98
    const/4 v3, 0x1

    #@99
    if-le v2, v3, :cond_3

    #@9b
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@9e
    move-result v2

    #@9f
    const/16 v3, 0xa

    #@a1
    if-ge v2, v3, :cond_3

    #@a3
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_4

    #@a9
    .line 558
    :cond_3
    move-object/from16 v0, p0

    #@ab
    iget-object v8, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@ad
    move-object/from16 v11, p4

    #@af
    check-cast v11, Ljava/util/ArrayList;

    #@b1
    move-object/from16 v12, p5

    #@b3
    .line 559
    check-cast v12, Ljava/util/ArrayList;

    #@b5
    move-object/from16 v13, p6

    #@b7
    check-cast v13, Ljava/util/ArrayList;

    #@b9
    .line 560
    const/4 v14, 0x0

    #@ba
    move-object/from16 v9, p2

    #@bc
    move-object/from16 v10, p3

    #@be
    move-object/from16 v15, p1

    #@c0
    move/from16 v16, p7

    #@c2
    .line 558
    invoke-virtual/range {v8 .. v16}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@c5
    .line 507
    return-void

    #@c6
    .line 530
    :cond_4
    const/16 v17, 0x0

    #@c8
    .restart local v17    # "i":I
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@cb
    move-result v2

    #@cc
    move/from16 v0, v17

    #@ce
    if-ge v0, v2, :cond_8

    #@d0
    .line 533
    move-object/from16 v0, p4

    #@d2
    move/from16 v1, v17

    #@d4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d7
    move-result-object v5

    #@d8
    check-cast v5, Ljava/lang/String;

    #@da
    .line 534
    .local v5, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_7

    #@e0
    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    add-int/lit8 v3, v17, 0x1

    #@e7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@ea
    move-result-object v3

    #@eb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v2

    #@ef
    const/16 v3, 0x2f

    #@f1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@f8
    move-result v3

    #@f9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    const/16 v3, 0x20

    #@ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v5

    #@10b
    .line 540
    :goto_2
    const/4 v6, 0x0

    #@10c
    .line 541
    .local v6, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    #@10e
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@111
    move-result v2

    #@112
    move/from16 v0, v17

    #@114
    if-le v2, v0, :cond_5

    #@116
    .line 542
    move-object/from16 v0, p5

    #@118
    move/from16 v1, v17

    #@11a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11d
    move-result-object v6

    #@11e
    .end local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    #@120
    .line 545
    :cond_5
    const/4 v7, 0x0

    #@121
    .line 546
    .local v7, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_6

    #@123
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    #@126
    move-result v2

    #@127
    move/from16 v0, v17

    #@129
    if-le v2, v0, :cond_6

    #@12b
    .line 547
    move-object/from16 v0, p6

    #@12d
    move/from16 v1, v17

    #@12f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@132
    move-result-object v7

    #@133
    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    #@135
    .line 550
    :cond_6
    move-object/from16 v0, p0

    #@137
    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@139
    .line 552
    const/4 v8, 0x0

    #@13a
    move-object/from16 v3, p2

    #@13c
    move-object/from16 v4, p3

    #@13e
    move-object/from16 v9, p1

    #@140
    move/from16 v10, p7

    #@142
    .line 550
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@145
    .line 530
    add-int/lit8 v17, v17, 0x1

    #@147
    goto :goto_1

    #@148
    .line 537
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    #@14a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14d
    const/16 v3, 0x20

    #@14f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@152
    move-result-object v2

    #@153
    add-int/lit8 v3, v17, 0x1

    #@155
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@158
    move-result-object v3

    #@159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v2

    #@15d
    const/16 v3, 0x2f

    #@15f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@162
    move-result-object v2

    #@163
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@166
    move-result v3

    #@167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v2

    #@16b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v2

    #@16f
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@172
    move-result-object v5

    #@173
    goto :goto_2

    #@174
    .line 555
    .end local v5    # "singlePart":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 21
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 966
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@7
    move-result-object v3

    #@8
    const-string/jumbo v4, "android.permission.SEND_SMS"

    #@b
    .line 967
    const-string/jumbo v5, "Sending SMS message"

    #@e
    .line 966
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 968
    move-object/from16 v0, p0

    #@13
    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@18
    move-result v4

    #@19
    const/16 v5, 0x14

    #@1b
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v3, v5, v4, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_0

    #@23
    .line 970
    return-void

    #@24
    .line 972
    :cond_0
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@28
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v19

    #@30
    .line 973
    .local v19, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    #@32
    move-object/from16 v1, v19

    #@34
    move-object/from16 v2, p2

    #@36
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_1

    #@3c
    .line 974
    const-string/jumbo v3, "IccSmsInterfaceManager"

    #@3f
    const-string/jumbo v4, "[IccSmsInterfaceManager]sendStoredMultipartText: not FAILED or DRAFT message"

    #@42
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 976
    move-object/from16 v0, p0

    #@47
    move-object/from16 v1, p4

    #@49
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    #@4c
    .line 977
    return-void

    #@4d
    .line 979
    :cond_1
    move-object/from16 v0, p0

    #@4f
    move-object/from16 v1, v19

    #@51
    move-object/from16 v2, p2

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    #@56
    move-result-object v20

    #@57
    .line 980
    .local v20, "textAndAddress":[Ljava/lang/String;
    if-nez v20, :cond_2

    #@59
    .line 981
    const-string/jumbo v3, "IccSmsInterfaceManager"

    #@5c
    const-string/jumbo v4, "[IccSmsInterfaceManager]sendStoredMultipartText: can not load text"

    #@5f
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 982
    move-object/from16 v0, p0

    #@64
    move-object/from16 v1, p4

    #@66
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    #@69
    .line 983
    return-void

    #@6a
    .line 985
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@6d
    move-result-object v3

    #@6e
    const/4 v4, 0x0

    #@6f
    aget-object v4, v20, v4

    #@71
    invoke-virtual {v3, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    #@74
    move-result-object v12

    #@75
    .line 986
    .local v12, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_3

    #@77
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@7a
    move-result v3

    #@7b
    const/4 v4, 0x1

    #@7c
    if-ge v3, v4, :cond_4

    #@7e
    .line 987
    :cond_3
    const-string/jumbo v3, "IccSmsInterfaceManager"

    #@81
    const-string/jumbo v4, "[IccSmsInterfaceManager]sendStoredMultipartText: can not divide text"

    #@84
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    .line 988
    move-object/from16 v0, p0

    #@89
    move-object/from16 v1, p4

    #@8b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    #@8e
    .line 989
    return-void

    #@8f
    .line 992
    :cond_4
    const/4 v3, 0x1

    #@90
    aget-object v3, v20, v3

    #@92
    move-object/from16 v0, p0

    #@94
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    const/4 v4, 0x1

    #@99
    aput-object v3, v20, v4

    #@9b
    .line 994
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@9e
    move-result v3

    #@9f
    const/4 v4, 0x1

    #@a0
    if-le v3, v4, :cond_5

    #@a2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v3

    #@a6
    const/16 v4, 0xa

    #@a8
    if-ge v3, v4, :cond_5

    #@aa
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    #@ad
    move-result v3

    #@ae
    if-eqz v3, :cond_6

    #@b0
    .line 1022
    :cond_5
    move-object/from16 v0, p0

    #@b2
    iget-object v9, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@b4
    .line 1023
    const/4 v3, 0x1

    #@b5
    aget-object v10, v20, v3

    #@b7
    move-object/from16 v13, p4

    #@b9
    .line 1026
    check-cast v13, Ljava/util/ArrayList;

    #@bb
    move-object/from16 v14, p5

    #@bd
    .line 1027
    check-cast v14, Ljava/util/ArrayList;

    #@bf
    .line 1030
    const/16 v17, 0x1

    #@c1
    move-object/from16 v11, p3

    #@c3
    move-object/from16 v15, p2

    #@c5
    move-object/from16 v16, p1

    #@c7
    .line 1022
    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@ca
    .line 965
    return-void

    #@cb
    .line 995
    :cond_6
    const/16 v18, 0x0

    #@cd
    .local v18, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@d0
    move-result v3

    #@d1
    move/from16 v0, v18

    #@d3
    if-ge v0, v3, :cond_a

    #@d5
    .line 998
    move/from16 v0, v18

    #@d7
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@da
    move-result-object v6

    #@db
    check-cast v6, Ljava/lang/String;

    #@dd
    .line 999
    .local v6, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    #@e0
    move-result v3

    #@e1
    if-eqz v3, :cond_9

    #@e3
    .line 1000
    new-instance v3, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    add-int/lit8 v4, v18, 0x1

    #@ea
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@ed
    move-result-object v4

    #@ee
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v3

    #@f2
    const/16 v4, 0x2f

    #@f4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@fb
    move-result v4

    #@fc
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v3

    #@100
    const/16 v4, 0x20

    #@102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@105
    move-result-object v3

    #@106
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v3

    #@10a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v6

    #@10e
    .line 1005
    :goto_1
    const/4 v7, 0x0

    #@10f
    .line 1006
    .local v7, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    #@111
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@114
    move-result v3

    #@115
    move/from16 v0, v18

    #@117
    if-le v3, v0, :cond_7

    #@119
    .line 1007
    move-object/from16 v0, p4

    #@11b
    move/from16 v1, v18

    #@11d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@120
    move-result-object v7

    #@121
    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    #@123
    .line 1010
    :cond_7
    const/4 v8, 0x0

    #@124
    .line 1011
    .local v8, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_8

    #@126
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    #@129
    move-result v3

    #@12a
    move/from16 v0, v18

    #@12c
    if-le v3, v0, :cond_8

    #@12e
    .line 1012
    move-object/from16 v0, p5

    #@130
    move/from16 v1, v18

    #@132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@135
    move-result-object v8

    #@136
    .end local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    #@138
    .line 1015
    :cond_8
    move-object/from16 v0, p0

    #@13a
    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@13c
    const/4 v4, 0x1

    #@13d
    aget-object v4, v20, v4

    #@13f
    .line 1017
    const/4 v11, 0x1

    #@140
    move-object/from16 v5, p3

    #@142
    move-object/from16 v9, p2

    #@144
    move-object/from16 v10, p1

    #@146
    .line 1015
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@149
    .line 995
    add-int/lit8 v18, v18, 0x1

    #@14b
    goto :goto_0

    #@14c
    .line 1002
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    #@14e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@151
    const/16 v4, 0x20

    #@153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@156
    move-result-object v3

    #@157
    add-int/lit8 v4, v18, 0x1

    #@159
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@15c
    move-result-object v4

    #@15d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v3

    #@161
    const/16 v4, 0x2f

    #@163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@166
    move-result-object v3

    #@167
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@16a
    move-result v4

    #@16b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v3

    #@16f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v3

    #@173
    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@176
    move-result-object v6

    #@177
    goto :goto_1

    #@178
    .line 1019
    .end local v6    # "singlePart":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 936
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "android.permission.SEND_SMS"

    #@9
    .line 937
    const-string/jumbo v3, "Sending SMS message"

    #@c
    .line 936
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 938
    const-string/jumbo v1, "SMS"

    #@12
    const/4 v2, 0x2

    #@13
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "sendStoredText: scAddr="

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, " messageUri="

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 940
    const-string/jumbo v2, " sentIntent="

    #@37
    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    move-object/from16 v0, p4

    #@3d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    .line 940
    const-string/jumbo v2, " deliveryIntent="

    #@44
    .line 939
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    move-object/from16 v0, p5

    #@4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@55
    .line 942
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@57
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5a
    move-result v2

    #@5b
    const/16 v3, 0x14

    #@5d
    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_1

    #@63
    .line 944
    return-void

    #@64
    .line 946
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@66
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@69
    move-result-object v1

    #@6a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6d
    move-result-object v10

    #@6e
    .line 947
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    #@71
    move-result v1

    #@72
    if-nez v1, :cond_2

    #@74
    .line 948
    const-string/jumbo v1, "IccSmsInterfaceManager"

    #@77
    const-string/jumbo v2, "[IccSmsInterfaceManager]sendStoredText: not FAILED or DRAFT message"

    #@7a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 949
    move-object/from16 v0, p4

    #@7f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    #@82
    .line 950
    return-void

    #@83
    .line 952
    :cond_2
    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    #@86
    move-result-object v11

    #@87
    .line 953
    .local v11, "textAndAddress":[Ljava/lang/String;
    if-nez v11, :cond_3

    #@89
    .line 954
    const-string/jumbo v1, "IccSmsInterfaceManager"

    #@8c
    const-string/jumbo v2, "[IccSmsInterfaceManager]sendStoredText: can not load text"

    #@8f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@92
    .line 955
    move-object/from16 v0, p4

    #@94
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    #@97
    .line 956
    return-void

    #@98
    .line 958
    :cond_3
    const/4 v1, 0x1

    #@99
    aget-object v1, v11, v1

    #@9b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    #@9e
    move-result-object v1

    #@9f
    const/4 v2, 0x1

    #@a0
    aput-object v1, v11, v2

    #@a2
    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@a4
    const/4 v2, 0x1

    #@a5
    aget-object v2, v11, v2

    #@a7
    const/4 v3, 0x0

    #@a8
    aget-object v4, v11, v3

    #@aa
    .line 961
    const/4 v9, 0x1

    #@ab
    move-object v3, p3

    #@ac
    move-object/from16 v5, p4

    #@ae
    move-object/from16 v6, p5

    #@b0
    move-object v7, p2

    #@b1
    move-object v8, p1

    #@b2
    .line 959
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Z)V

    #@b5
    .line 935
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "persistMessageForNonDefaultSmsApp"    # Z

    #@0
    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 394
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@9
    .line 395
    const-string/jumbo v2, "Sending SMS message"

    #@c
    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 396
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@12
    .line 392
    return-void
.end method

.method public sendTextWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 407
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@9
    .line 408
    const-string/jumbo v2, "Sending SMS message"

    #@c
    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 410
    const/4 v7, 0x1

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move-object v3, p3

    #@14
    move-object v4, p4

    #@15
    move-object v5, p5

    #@16
    move-object v6, p6

    #@17
    .line 409
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    #@1a
    .line 405
    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->setPremiumSmsPermission(Ljava/lang/String;I)V

    #@5
    .line 569
    return-void
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v2, "updateMessageOnIccEf: index="

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    .line 197
    const-string/jumbo v2, " status="

    #@14
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 197
    const-string/jumbo v2, " ==> "

    #@1f
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 198
    const-string/jumbo v2, "("

    #@26
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 198
    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 198
    const-string/jumbo v2, ")"

    #@35
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    #@40
    .line 199
    const-string/jumbo v1, "Updating message on Icc"

    #@43
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    #@46
    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    #@48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@4b
    move-result v2

    #@4c
    const/16 v4, 0x16

    #@4e
    invoke-virtual {v1, v4, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_0

    #@54
    .line 202
    return v7

    #@55
    .line 204
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@57
    monitor-enter v7

    #@58
    .line 205
    const/4 v1, 0x0

    #@59
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@5b
    .line 206
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    #@5d
    const/4 v2, 0x2

    #@5e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@61
    move-result-object v5

    #@62
    .line 208
    .local v5, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    #@64
    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@66
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@69
    move-result v1

    #@6a
    const/4 v2, 0x1

    #@6b
    if-ne v2, v1, :cond_1

    #@6d
    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6f
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@71
    invoke-interface {v1, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@74
    .line 231
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    #@76
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    :goto_1
    monitor-exit v7

    #@7a
    .line 236
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    #@7c
    return v1

    #@7d
    .line 216
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@7f
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@81
    invoke-interface {v1, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@84
    goto :goto_0

    #@85
    .line 204
    .end local v5    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@86
    monitor-exit v7

    #@87
    throw v1

    #@88
    .line 220
    .restart local v5    # "response":Landroid/os/Message;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8a
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@8d
    move-result-object v0

    #@8e
    .line 221
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_3

    #@90
    .line 222
    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    #@93
    .line 223
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@95
    monitor-exit v7

    #@96
    return v1

    #@97
    .line 225
    :cond_3
    :try_start_4
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    #@9a
    move-result-object v3

    #@9b
    .line 227
    .local v3, "record":[B
    const/16 v1, 0x6f3c

    #@9d
    .line 228
    const/4 v4, 0x0

    #@9e
    move v2, p2

    #@9f
    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    #@a2
    goto :goto_0

    #@a3
    .line 232
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v3    # "record":[B
    :catch_0
    move-exception v6

    #@a4
    .line 233
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "interrupted while trying to update by index"

    #@a7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@aa
    goto :goto_1
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    #@7
    .line 170
    return-void
.end method
