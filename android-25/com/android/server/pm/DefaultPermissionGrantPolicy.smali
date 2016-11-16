.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    }
.end annotation


# static fields
.field private static final ATTR_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = 0xc0000

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_READ_DEFAULT_PERMISSION_EXCEPTIONS:I = 0x1

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"

.field private static final TAG_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final TAG_EXCEPTIONS:Ljava/lang/String; = "exceptions"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mGrantExceptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/DefaultPermissionGrantPolicy;)Landroid/util/ArrayMap;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLPw()Landroid/util/ArrayMap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 90
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@7
    .line 92
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 93
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 94
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 95
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@21
    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 96
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@29
    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 97
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@31
    const-string/jumbo v1, "android.permission.USE_SIP"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 98
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@39
    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    .line 101
    new-instance v0, Landroid/util/ArraySet;

    #@41
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@44
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@46
    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@48
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    #@4b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    .line 104
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@50
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    #@53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    .line 105
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@58
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    #@5b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e
    .line 108
    new-instance v0, Landroid/util/ArraySet;

    #@60
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@63
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@65
    .line 110
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@67
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@6a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    .line 111
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@6f
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    .line 114
    new-instance v0, Landroid/util/ArraySet;

    #@77
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@7a
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@7c
    .line 116
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@7e
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    #@81
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@84
    .line 117
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@86
    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    #@89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8c
    .line 120
    new-instance v0, Landroid/util/ArraySet;

    #@8e
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@91
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@93
    .line 122
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@95
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9b
    .line 123
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@9d
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    #@a0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a3
    .line 124
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@a5
    const-string/jumbo v1, "android.permission.READ_SMS"

    #@a8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ab
    .line 125
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@ad
    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    #@b0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b3
    .line 126
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@b5
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    #@b8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    .line 127
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@bd
    const-string/jumbo v1, "android.permission.READ_CELL_BROADCASTS"

    #@c0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c3
    .line 130
    new-instance v0, Landroid/util/ArraySet;

    #@c5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@c8
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@ca
    .line 132
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@cc
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    #@cf
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d2
    .line 135
    new-instance v0, Landroid/util/ArraySet;

    #@d4
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@d7
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@d9
    .line 137
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@db
    const-string/jumbo v1, "android.permission.CAMERA"

    #@de
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e1
    .line 140
    new-instance v0, Landroid/util/ArraySet;

    #@e3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@e6
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@e8
    .line 142
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@ea
    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    #@ed
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f0
    .line 145
    new-instance v0, Landroid/util/ArraySet;

    #@f2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@f5
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f7
    .line 147
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f9
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    #@fc
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ff
    .line 148
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@101
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@107
    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 166
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5
    .line 167
    new-instance v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;

    #@7
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@9
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    #@b
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$1;-><init>(Lcom/android/server/pm/DefaultPermissionGrantPolicy;Landroid/os/Looper;)V

    #@12
    iput-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    #@14
    .line 165
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 1122
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@4
    const/16 v1, 0x16

    #@6
    if-le v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 829
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    const/high16 v2, 0xc0000

    #@5
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@8
    move-result-object v0

    #@9
    .line 830
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    #@b
    .line 831
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@d
    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 833
    :cond_0
    return-object v3
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 768
    iget-object v2, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    .line 769
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    const/high16 v4, 0xc0000

    #@11
    .line 768
    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v1

    #@15
    .line 770
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    #@17
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 771
    :cond_0
    return-object v5

    #@1c
    .line 773
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1e
    .line 774
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@20
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@22
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    #@24
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 775
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@2e
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@30
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    #@32
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    .line 774
    if-eqz v2, :cond_2

    #@3a
    .line 776
    return-object v5

    #@3b
    .line 778
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3d
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3f
    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@42
    move-result-object v2

    #@43
    return-object v2
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 783
    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    .line 784
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@7
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@a
    move-result-object v6

    #@b
    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    const/high16 v7, 0xc0000

    #@11
    .line 783
    invoke-virtual {v5, p1, v6, v7, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    .line 786
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_0

    #@1b
    .line 787
    return-object v8

    #@1c
    .line 789
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1f
    move-result v1

    #@20
    .line 790
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@23
    .line 791
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@29
    .line 793
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2d
    .line 792
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@30
    move-result-object v2

    #@31
    .line 794
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1

    #@33
    .line 795
    return-object v2

    #@34
    .line 790
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 798
    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    return-object v8
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "syncAdapterPackageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 803
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 805
    .local v4, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string/jumbo v5, "android.intent.action.MAIN"

    #@a
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 806
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    #@10
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 808
    const/4 v5, 0x0

    #@14
    array-length v6, p1

    #@15
    :goto_0
    if-ge v5, v6, :cond_2

    #@17
    aget-object v3, p1, v5

    #@19
    .line 809
    .local v3, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 811
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1e
    .line 812
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@20
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v1, v8}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    const/high16 v9, 0xc0000

    #@2c
    .line 811
    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@2f
    move-result-object v0

    #@30
    .line 814
    .local v0, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@32
    .line 808
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@34
    goto :goto_0

    #@35
    .line 818
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@38
    move-result-object v2

    #@39
    .line 819
    .local v2, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    #@3b
    .line 820
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_1

    #@3f
    .line 824
    .end local v0    # "homeActivity":Landroid/content/pm/ResolveInfo;
    .end local v2    # "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "syncAdapterPackageName":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/content/pm/PackageParser$Package;

    #@a
    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 841
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@4
    move-result-object v0

    #@5
    .line 842
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 843
    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    return-object v0

    #@14
    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_0
    move-object v0, v1

    #@15
    goto :goto_0

    #@16
    .line 845
    :cond_1
    return-object v1
.end method

.method private grantDefaultPermissionExceptions(I)V
    .locals 14
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@4
    monitor-enter v13

    #@5
    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    #@7
    const/4 v3, 0x1

    #@8
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@b
    .line 967
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 968
    invoke-direct {p0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->readDefaultPermissionExceptionsLPw()Landroid/util/ArrayMap;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@15
    .line 975
    :cond_0
    const/4 v2, 0x0

    #@16
    .line 976
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    #@1b
    move-result v6

    #@1c
    .line 977
    .local v6, "exceptionCount":I
    const/4 v7, 0x0

    #@1d
    .end local v2    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    #@1f
    .line 978
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@21
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@24
    move-result-object v9

    #@25
    check-cast v9, Ljava/lang/String;

    #@27
    .line 979
    .local v9, "packageName":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2a
    move-result-object v1

    #@2b
    .line 980
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mGrantExceptions:Landroid/util/ArrayMap;

    #@2d
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@30
    move-result-object v12

    #@31
    check-cast v12, Ljava/util/List;

    #@33
    .line 981
    .local v12, "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@36
    move-result v11

    #@37
    .line 982
    .local v11, "permissionGrantCount":I
    const/4 v8, 0x0

    #@38
    .local v8, "j":I
    :goto_1
    if-ge v8, v11, :cond_2

    #@3a
    .line 983
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v10

    #@3e
    check-cast v10, Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    #@40
    .line 984
    .local v10, "permissionGrant":Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    if-nez v2, :cond_1

    #@42
    .line 985
    new-instance v2, Landroid/util/ArraySet;

    #@44
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@47
    .line 989
    :goto_2
    iget-object v0, v10, Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    #@49
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4c
    .line 991
    iget-boolean v4, v10, Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    #@4e
    .line 990
    const/4 v3, 0x0

    #@4f
    move-object v0, p0

    #@50
    move v5, p1

    #@51
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@54
    .line 982
    add-int/lit8 v8, v8, 0x1

    #@56
    goto :goto_1

    #@57
    .line 987
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    goto :goto_2

    #@5b
    .line 964
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "exceptionCount":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionGrant":Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    .end local v11    # "permissionGrantCount":I
    .end local v12    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit v13

    #@5d
    throw v0

    #@5e
    .line 977
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6    # "exceptionCount":I
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v11    # "permissionGrantCount":I
    .restart local v12    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@60
    goto :goto_0

    #@61
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "j":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "permissionGrantCount":I
    .end local v12    # "permissionGrants":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    :cond_3
    monitor-exit v13

    #@62
    .line 963
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 721
    const-string/jumbo v0, "DefaultPermGrantPolicy"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Granting permissions to sim call manager for user:"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 722
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 723
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@22
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@25
    .line 724
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@27
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@2a
    .line 720
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 669
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 671
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@8
    const-string/jumbo v2, "android.hardware.type.watch"

    #@b
    const/4 v3, 0x0

    #@c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    #@f
    move-result v0

    #@10
    .line 673
    .local v0, "isPhonePermFixed":Z
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@12
    .line 672
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@15
    .line 674
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@17
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1a
    .line 675
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@1c
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1f
    .line 676
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@21
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@24
    .line 677
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@26
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@29
    .line 668
    .end local v0    # "isPhonePermFixed":Z
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 683
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 684
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@b
    .line 685
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@d
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@10
    .line 686
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@12
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@15
    .line 682
    :cond_0
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 88
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 242
    const-string/jumbo v83, "DefaultPermGrantPolicy"

    #@3
    new-instance v84, Ljava/lang/StringBuilder;

    #@5
    invoke-direct/range {v84 .. v84}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v85, "Granting permissions to default platform handlers for user "

    #@b
    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v84

    #@f
    move-object/from16 v0, v84

    #@11
    move/from16 v1, p1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v84

    #@17
    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v84

    #@1b
    invoke-static/range {v83 .. v84}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 251
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@22
    move-object/from16 v83, v0

    #@24
    move-object/from16 v0, v83

    #@26
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@28
    move-object/from16 v84, v0

    #@2a
    monitor-enter v84

    #@2b
    .line 252
    :try_start_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2f
    move-object/from16 v51, v0

    #@31
    .line 253
    .local v51, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@35
    move-object/from16 v79, v0

    #@37
    .line 254
    .local v79, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@3b
    move-object/from16 v67, v0

    #@3d
    .line 255
    .local v67, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@41
    move-object/from16 v34, v0

    #@43
    .line 256
    .local v34, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@47
    move-object/from16 v65, v0

    #@49
    .line 257
    .local v65, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@4d
    move-object/from16 v74, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .local v74, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v84

    #@50
    .line 260
    if-eqz v79, :cond_b

    #@52
    .line 261
    move-object/from16 v0, v79

    #@54
    move/from16 v1, p1

    #@56
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@59
    move-result-object v78

    #@5a
    .line 262
    :goto_0
    if-eqz v51, :cond_c

    #@5c
    .line 263
    move-object/from16 v0, v51

    #@5e
    move/from16 v1, p1

    #@60
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@63
    move-result-object v50

    #@64
    .line 264
    :goto_1
    if-eqz v67, :cond_d

    #@66
    .line 265
    move-object/from16 v0, v67

    #@68
    move/from16 v1, p1

    #@6a
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@6d
    move-result-object v66

    #@6e
    .line 266
    :goto_2
    if-eqz v34, :cond_e

    #@70
    .line 267
    move-object/from16 v0, v34

    #@72
    move/from16 v1, p1

    #@74
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@77
    move-result-object v33

    #@78
    .line 268
    :goto_3
    if-eqz v65, :cond_f

    #@7a
    .line 269
    move-object/from16 v0, v65

    #@7c
    move/from16 v1, p1

    #@7e
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@81
    move-result-object v64

    #@82
    .line 270
    :goto_4
    if-eqz v74, :cond_10

    #@84
    .line 271
    const-string/jumbo v83, "com.android.contacts"

    #@87
    move-object/from16 v0, v74

    #@89
    move-object/from16 v1, v83

    #@8b
    move/from16 v2, p1

    #@8d
    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    #@90
    move-result-object v27

    #@91
    .line 272
    :goto_5
    if-eqz v74, :cond_11

    #@93
    .line 273
    const-string/jumbo v83, "com.android.calendar"

    #@96
    move-object/from16 v0, v74

    #@98
    move-object/from16 v1, v83

    #@9a
    move/from16 v2, p1

    #@9c
    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    #@9f
    move-result-object v12

    #@a0
    .line 275
    :goto_6
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@a4
    move-object/from16 v83, v0

    #@a6
    move-object/from16 v0, v83

    #@a8
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@aa
    move-object/from16 v84, v0

    #@ac
    monitor-enter v84

    #@ad
    .line 278
    :try_start_1
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@b1
    move-object/from16 v83, v0

    #@b3
    move-object/from16 v0, v83

    #@b5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    #@b7
    move-object/from16 v83, v0

    #@b9
    .line 277
    move-object/from16 v0, p0

    #@bb
    move-object/from16 v1, v83

    #@bd
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@c0
    move-result-object v48

    #@c1
    .line 279
    .local v48, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v48, :cond_0

    #@c3
    .line 280
    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@c6
    move-result v83

    #@c7
    .line 279
    if-eqz v83, :cond_0

    #@c9
    .line 281
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@cb
    const/16 v85, 0x1

    #@cd
    move-object/from16 v0, p0

    #@cf
    move-object/from16 v1, v48

    #@d1
    move-object/from16 v2, v83

    #@d3
    move/from16 v3, v85

    #@d5
    move/from16 v4, p1

    #@d7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@da
    .line 286
    :cond_0
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@de
    move-object/from16 v83, v0

    #@e0
    move-object/from16 v0, v83

    #@e2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@e4
    move-object/from16 v83, v0

    #@e6
    .line 285
    move-object/from16 v0, p0

    #@e8
    move-object/from16 v1, v83

    #@ea
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@ed
    move-result-object v75

    #@ee
    .line 287
    .local v75, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v75, :cond_1

    #@f0
    .line 288
    invoke-static/range {v75 .. v75}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@f3
    move-result v83

    #@f4
    .line 287
    if-eqz v83, :cond_1

    #@f6
    .line 289
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f8
    const/16 v85, 0x1

    #@fa
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, v75

    #@fe
    move-object/from16 v2, v83

    #@100
    move/from16 v3, v85

    #@102
    move/from16 v4, p1

    #@104
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@107
    .line 290
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@109
    const/16 v85, 0x0

    #@10b
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v75

    #@10f
    move-object/from16 v2, v83

    #@111
    move/from16 v3, v85

    #@113
    move/from16 v4, p1

    #@115
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@118
    .line 291
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@11a
    const/16 v85, 0x0

    #@11c
    move-object/from16 v0, p0

    #@11e
    move-object/from16 v1, v75

    #@120
    move-object/from16 v2, v83

    #@122
    move/from16 v3, v85

    #@124
    move/from16 v4, p1

    #@126
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@129
    .line 296
    :cond_1
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@12d
    move-object/from16 v83, v0

    #@12f
    move-object/from16 v0, v83

    #@131
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    #@133
    move-object/from16 v83, v0

    #@135
    .line 295
    move-object/from16 v0, p0

    #@137
    move-object/from16 v1, v83

    #@139
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@13c
    move-result-object v61

    #@13d
    .line 297
    .local v61, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v61, :cond_2

    #@13f
    .line 298
    invoke-static/range {v61 .. v61}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@142
    move-result v83

    #@143
    .line 297
    if-eqz v83, :cond_2

    #@145
    .line 299
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@147
    move-object/from16 v0, p0

    #@149
    move-object/from16 v1, v61

    #@14b
    move-object/from16 v2, v83

    #@14d
    move/from16 v3, p1

    #@14f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@152
    .line 300
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@154
    move-object/from16 v0, p0

    #@156
    move-object/from16 v1, v61

    #@158
    move-object/from16 v2, v83

    #@15a
    move/from16 v3, p1

    #@15c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@15f
    .line 301
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@161
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v61

    #@165
    move-object/from16 v2, v83

    #@167
    move/from16 v3, p1

    #@169
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@16c
    .line 302
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@16e
    move-object/from16 v0, p0

    #@170
    move-object/from16 v1, v61

    #@172
    move-object/from16 v2, v83

    #@174
    move/from16 v3, p1

    #@176
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@179
    .line 306
    :cond_2
    new-instance v14, Landroid/content/Intent;

    #@17b
    const-string/jumbo v83, "android.media.action.IMAGE_CAPTURE"

    #@17e
    move-object/from16 v0, v83

    #@180
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@183
    .line 307
    .local v14, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@185
    move/from16 v1, p1

    #@187
    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@18a
    move-result-object v15

    #@18b
    .line 309
    .local v15, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_3

    #@18d
    .line 310
    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@190
    move-result v83

    #@191
    .line 309
    if-eqz v83, :cond_3

    #@193
    .line 311
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@195
    move-object/from16 v0, p0

    #@197
    move-object/from16 v1, v83

    #@199
    move/from16 v2, p1

    #@19b
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@19e
    .line 312
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    move-object/from16 v1, v83

    #@1a4
    move/from16 v2, p1

    #@1a6
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1a9
    .line 313
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    move-object/from16 v1, v83

    #@1af
    move/from16 v2, p1

    #@1b1
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1b4
    .line 318
    :cond_3
    const-string/jumbo v83, "media"

    #@1b7
    .line 317
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v83

    #@1bb
    move/from16 v2, p1

    #@1bd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@1c0
    move-result-object v54

    #@1c1
    .line 319
    .local v54, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v54, :cond_4

    #@1c3
    .line 320
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1c5
    const/16 v85, 0x1

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    move-object/from16 v1, v54

    #@1cb
    move-object/from16 v2, v83

    #@1cd
    move/from16 v3, v85

    #@1cf
    move/from16 v4, p1

    #@1d1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@1d4
    .line 325
    :cond_4
    const-string/jumbo v83, "downloads"

    #@1d7
    .line 324
    move-object/from16 v0, p0

    #@1d9
    move-object/from16 v1, v83

    #@1db
    move/from16 v2, p1

    #@1dd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@1e0
    move-result-object v37

    #@1e1
    .line 326
    .local v37, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_5

    #@1e3
    .line 327
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1e5
    const/16 v85, 0x1

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    move-object/from16 v1, v37

    #@1eb
    move-object/from16 v2, v83

    #@1ed
    move/from16 v3, v85

    #@1ef
    move/from16 v4, p1

    #@1f1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@1f4
    .line 331
    :cond_5
    new-instance v38, Landroid/content/Intent;

    #@1f6
    const-string/jumbo v83, "android.intent.action.VIEW_DOWNLOADS"

    #@1f9
    move-object/from16 v0, v38

    #@1fb
    move-object/from16 v1, v83

    #@1fd
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@200
    .line 332
    .local v38, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@202
    move-object/from16 v1, v38

    #@204
    move/from16 v2, p1

    #@206
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@209
    move-result-object v39

    #@20a
    .line 334
    .local v39, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_6

    #@20c
    .line 335
    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@20f
    move-result v83

    #@210
    .line 334
    if-eqz v83, :cond_6

    #@212
    .line 336
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@214
    const/16 v85, 0x1

    #@216
    move-object/from16 v0, p0

    #@218
    move-object/from16 v1, v39

    #@21a
    move-object/from16 v2, v83

    #@21c
    move/from16 v3, v85

    #@21e
    move/from16 v4, p1

    #@220
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@223
    .line 341
    :cond_6
    const-string/jumbo v83, "com.android.externalstorage.documents"

    #@226
    .line 340
    move-object/from16 v0, p0

    #@228
    move-object/from16 v1, v83

    #@22a
    move/from16 v2, p1

    #@22c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@22f
    move-result-object v73

    #@230
    .line 342
    .local v73, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v73, :cond_7

    #@232
    .line 343
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@234
    const/16 v85, 0x1

    #@236
    move-object/from16 v0, p0

    #@238
    move-object/from16 v1, v73

    #@23a
    move-object/from16 v2, v83

    #@23c
    move/from16 v3, v85

    #@23e
    move/from16 v4, p1

    #@240
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@243
    .line 347
    :cond_7
    new-instance v20, Landroid/content/Intent;

    #@245
    const-string/jumbo v83, "android.credentials.INSTALL"

    #@248
    move-object/from16 v0, v20

    #@24a
    move-object/from16 v1, v83

    #@24c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24f
    .line 348
    .local v20, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@251
    move-object/from16 v1, v20

    #@253
    move/from16 v2, p1

    #@255
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@258
    move-result-object v21

    #@259
    .line 350
    .local v21, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_8

    #@25b
    .line 351
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@25e
    move-result v83

    #@25f
    .line 350
    if-eqz v83, :cond_8

    #@261
    .line 352
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@263
    const/16 v85, 0x1

    #@265
    move-object/from16 v0, p0

    #@267
    move-object/from16 v1, v21

    #@269
    move-object/from16 v2, v83

    #@26b
    move/from16 v3, v85

    #@26d
    move/from16 v4, p1

    #@26f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@272
    .line 356
    :cond_8
    if-nez v33, :cond_12

    #@274
    .line 357
    new-instance v35, Landroid/content/Intent;

    #@276
    const-string/jumbo v83, "android.intent.action.DIAL"

    #@279
    move-object/from16 v0, v35

    #@27b
    move-object/from16 v1, v83

    #@27d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@280
    .line 358
    .local v35, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@282
    move-object/from16 v1, v35

    #@284
    move/from16 v2, p1

    #@286
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@289
    move-result-object v36

    #@28a
    .line 360
    .local v36, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_9

    #@28c
    .line 361
    move-object/from16 v0, p0

    #@28e
    move-object/from16 v1, v36

    #@290
    move/from16 v2, p1

    #@292
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@295
    .line 373
    .end local v35    # "dialerIntent":Landroid/content/Intent;
    .end local v36    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_9
    if-eqz v64, :cond_14

    #@297
    .line 374
    const/16 v83, 0x0

    #@299
    move-object/from16 v0, v64

    #@29b
    array-length v0, v0

    #@29c
    move/from16 v85, v0

    #@29e
    :goto_7
    move/from16 v0, v83

    #@2a0
    move/from16 v1, v85

    #@2a2
    if-ge v0, v1, :cond_14

    #@2a4
    aget-object v63, v64, v83

    #@2a6
    .line 376
    .local v63, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a8
    move-object/from16 v1, v63

    #@2aa
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2ad
    move-result-object v62

    #@2ae
    .line 377
    .local v62, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v62, :cond_a

    #@2b0
    .line 378
    move-object/from16 v0, p0

    #@2b2
    move-object/from16 v1, v62

    #@2b4
    move/from16 v2, p1

    #@2b6
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@2b9
    .line 374
    :cond_a
    add-int/lit8 v83, v83, 0x1

    #@2bb
    goto :goto_7

    #@2bc
    .line 251
    .end local v14    # "cameraIntent":Landroid/content/Intent;
    .end local v15    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v20    # "certInstallerIntent":Landroid/content/Intent;
    .end local v21    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v34    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v37    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v38    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v39    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v48    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v51    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v54    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v61    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v62    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v63    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v65    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v67    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v73    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v75    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v79    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_0
    move-exception v83

    #@2bd
    monitor-exit v84

    #@2be
    throw v83

    #@2bf
    .line 261
    .restart local v34    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v51    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v65    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v67    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v74    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v79    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_b
    const/16 v78, 0x0

    #@2c1
    .local v78, "voiceInteractPackageNames":[Ljava/lang/String;
    goto/16 :goto_0

    #@2c3
    .line 263
    .end local v78    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_c
    const/16 v50, 0x0

    #@2c5
    .local v50, "locationPackageNames":[Ljava/lang/String;
    goto/16 :goto_1

    #@2c7
    .line 265
    .end local v50    # "locationPackageNames":[Ljava/lang/String;
    :cond_d
    const/16 v66, 0x0

    #@2c9
    .local v66, "smsAppPackageNames":[Ljava/lang/String;
    goto/16 :goto_2

    #@2cb
    .line 267
    .end local v66    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_e
    const/16 v33, 0x0

    #@2cd
    .local v33, "dialerAppPackageNames":[Ljava/lang/String;
    goto/16 :goto_3

    #@2cf
    .line 269
    .end local v33    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_f
    const/16 v64, 0x0

    #@2d1
    .local v64, "simCallManagerPackageNames":[Ljava/lang/String;
    goto/16 :goto_4

    #@2d3
    .line 271
    .end local v64    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_10
    const/16 v27, 0x0

    #@2d5
    .local v27, "contactsSyncAdapterPackages":[Ljava/lang/String;
    goto/16 :goto_5

    #@2d7
    .line 273
    .end local v27    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_11
    const/4 v12, 0x0

    #@2d8
    .local v12, "calendarSyncAdapterPackages":[Ljava/lang/String;
    goto/16 :goto_6

    #@2da
    .line 364
    .end local v12    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v14    # "cameraIntent":Landroid/content/Intent;
    .restart local v15    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v20    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v21    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v37    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v38    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v39    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v48    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v54    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v61    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v73    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v75    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_12
    const/16 v83, 0x0

    #@2dc
    :try_start_2
    move-object/from16 v0, v33

    #@2de
    array-length v0, v0

    #@2df
    move/from16 v85, v0

    #@2e1
    :goto_8
    move/from16 v0, v83

    #@2e3
    move/from16 v1, v85

    #@2e5
    if-ge v0, v1, :cond_9

    #@2e7
    aget-object v32, v33, v83

    #@2e9
    .line 365
    .local v32, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2eb
    move-object/from16 v1, v32

    #@2ed
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2f0
    move-result-object v36

    #@2f1
    .line 366
    .restart local v36    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_13

    #@2f3
    .line 367
    move-object/from16 v0, p0

    #@2f5
    move-object/from16 v1, v36

    #@2f7
    move/from16 v2, p1

    #@2f9
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@2fc
    .line 364
    :cond_13
    add-int/lit8 v83, v83, 0x1

    #@2fe
    goto :goto_8

    #@2ff
    .line 385
    .end local v32    # "dialerAppPackageName":Ljava/lang/String;
    .end local v36    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_14
    if-nez v66, :cond_1b

    #@301
    .line 386
    new-instance v68, Landroid/content/Intent;

    #@303
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@306
    move-object/from16 v0, v68

    #@308
    move-object/from16 v1, v83

    #@30a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@30d
    .line 387
    .local v68, "smsIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_MESSAGING"

    #@310
    move-object/from16 v0, v68

    #@312
    move-object/from16 v1, v83

    #@314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@317
    .line 388
    move-object/from16 v0, p0

    #@319
    move-object/from16 v1, v68

    #@31b
    move/from16 v2, p1

    #@31d
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@320
    move-result-object v69

    #@321
    .line 390
    .local v69, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_15

    #@323
    .line 391
    move-object/from16 v0, p0

    #@325
    move-object/from16 v1, v69

    #@327
    move/from16 v2, p1

    #@329
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@32c
    .line 403
    .end local v68    # "smsIntent":Landroid/content/Intent;
    .end local v69    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_15
    new-instance v18, Landroid/content/Intent;

    #@32e
    const-string/jumbo v83, "android.provider.Telephony.SMS_CB_RECEIVED"

    #@331
    move-object/from16 v0, v18

    #@333
    move-object/from16 v1, v83

    #@335
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@338
    .line 405
    .local v18, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@33a
    move-object/from16 v1, v18

    #@33c
    move/from16 v2, p1

    #@33e
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@341
    move-result-object v19

    #@342
    .line 406
    .local v19, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_16

    #@344
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@347
    move-result v83

    #@348
    if-eqz v83, :cond_16

    #@34a
    .line 407
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@34c
    move-object/from16 v0, p0

    #@34e
    move-object/from16 v1, v19

    #@350
    move-object/from16 v2, v83

    #@352
    move/from16 v3, p1

    #@354
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@357
    .line 411
    :cond_16
    new-instance v16, Landroid/content/Intent;

    #@359
    const-string/jumbo v83, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    #@35c
    move-object/from16 v0, v16

    #@35e
    move-object/from16 v1, v83

    #@360
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@363
    .line 413
    .local v16, "carrierProvIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@365
    move-object/from16 v1, v16

    #@367
    move/from16 v2, p1

    #@369
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@36c
    move-result-object v17

    #@36d
    .line 414
    .local v17, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_17

    #@36f
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@372
    move-result v83

    #@373
    if-eqz v83, :cond_17

    #@375
    .line 415
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@377
    const/16 v85, 0x0

    #@379
    move-object/from16 v0, p0

    #@37b
    move-object/from16 v1, v17

    #@37d
    move-object/from16 v2, v83

    #@37f
    move/from16 v3, v85

    #@381
    move/from16 v4, p1

    #@383
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@386
    .line 419
    :cond_17
    new-instance v7, Landroid/content/Intent;

    #@388
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@38b
    move-object/from16 v0, v83

    #@38d
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@390
    .line 420
    .local v7, "calendarIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_CALENDAR"

    #@393
    move-object/from16 v0, v83

    #@395
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@398
    .line 421
    move-object/from16 v0, p0

    #@39a
    move/from16 v1, p1

    #@39c
    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@39f
    move-result-object v8

    #@3a0
    .line 423
    .local v8, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_18

    #@3a2
    .line 424
    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3a5
    move-result v83

    #@3a6
    .line 423
    if-eqz v83, :cond_18

    #@3a8
    .line 425
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    move-object/from16 v1, v83

    #@3ae
    move/from16 v2, p1

    #@3b0
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3b3
    .line 426
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move-object/from16 v1, v83

    #@3b9
    move/from16 v2, p1

    #@3bb
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3be
    .line 431
    :cond_18
    const-string/jumbo v83, "com.android.calendar"

    #@3c1
    .line 430
    move-object/from16 v0, p0

    #@3c3
    move-object/from16 v1, v83

    #@3c5
    move/from16 v2, p1

    #@3c7
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@3ca
    move-result-object v9

    #@3cb
    .line 432
    .local v9, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_19

    #@3cd
    .line 433
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    move-object/from16 v1, v83

    #@3d3
    move/from16 v2, p1

    #@3d5
    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3d8
    .line 434
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@3da
    .line 435
    const/16 v85, 0x1

    #@3dc
    .line 434
    move-object/from16 v0, p0

    #@3de
    move-object/from16 v1, v83

    #@3e0
    move/from16 v2, v85

    #@3e2
    move/from16 v3, p1

    #@3e4
    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@3e7
    .line 436
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    move-object/from16 v1, v83

    #@3ed
    move/from16 v2, p1

    #@3ef
    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3f2
    .line 440
    :cond_19
    move-object/from16 v0, p0

    #@3f4
    move/from16 v1, p1

    #@3f6
    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    #@3f9
    move-result-object v13

    #@3fa
    .line 442
    .local v13, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@3fd
    move-result v11

    #@3fe
    .line 443
    .local v11, "calendarSyncAdapterCount":I
    const/16 v47, 0x0

    #@400
    .local v47, "i":I
    :goto_9
    move/from16 v0, v47

    #@402
    if-ge v0, v11, :cond_1d

    #@404
    .line 444
    move/from16 v0, v47

    #@406
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@409
    move-result-object v10

    #@40a
    check-cast v10, Landroid/content/pm/PackageParser$Package;

    #@40c
    .line 445
    .local v10, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@40f
    move-result v83

    #@410
    if-eqz v83, :cond_1a

    #@412
    .line 446
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@414
    move-object/from16 v0, p0

    #@416
    move-object/from16 v1, v83

    #@418
    move/from16 v2, p1

    #@41a
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@41d
    .line 443
    :cond_1a
    add-int/lit8 v47, v47, 0x1

    #@41f
    goto :goto_9

    #@420
    .line 394
    .end local v7    # "calendarIntent":Landroid/content/Intent;
    .end local v8    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "calendarSyncAdapterCount":I
    .end local v13    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v16    # "carrierProvIntent":Landroid/content/Intent;
    .end local v17    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v18    # "cbrIntent":Landroid/content/Intent;
    .end local v19    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v47    # "i":I
    :cond_1b
    const/16 v83, 0x0

    #@422
    move-object/from16 v0, v66

    #@424
    array-length v0, v0

    #@425
    move/from16 v85, v0

    #@427
    :goto_a
    move/from16 v0, v83

    #@429
    move/from16 v1, v85

    #@42b
    if-ge v0, v1, :cond_15

    #@42d
    aget-object v70, v66, v83

    #@42f
    .line 395
    .local v70, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@431
    move-object/from16 v1, v70

    #@433
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@436
    move-result-object v69

    #@437
    .line 396
    .restart local v69    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_1c

    #@439
    .line 397
    move-object/from16 v0, p0

    #@43b
    move-object/from16 v1, v69

    #@43d
    move/from16 v2, p1

    #@43f
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@442
    .line 394
    :cond_1c
    add-int/lit8 v83, v83, 0x1

    #@444
    goto :goto_a

    #@445
    .line 451
    .end local v69    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v70    # "smsPackageName":Ljava/lang/String;
    .restart local v7    # "calendarIntent":Landroid/content/Intent;
    .restart local v8    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v9    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v11    # "calendarSyncAdapterCount":I
    .restart local v13    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v16    # "carrierProvIntent":Landroid/content/Intent;
    .restart local v17    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "cbrIntent":Landroid/content/Intent;
    .restart local v19    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v47    # "i":I
    :cond_1d
    new-instance v22, Landroid/content/Intent;

    #@447
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@44a
    move-object/from16 v0, v22

    #@44c
    move-object/from16 v1, v83

    #@44e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@451
    .line 452
    .local v22, "contactsIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_CONTACTS"

    #@454
    move-object/from16 v0, v22

    #@456
    move-object/from16 v1, v83

    #@458
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@45b
    .line 453
    move-object/from16 v0, p0

    #@45d
    move-object/from16 v1, v22

    #@45f
    move/from16 v2, p1

    #@461
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@464
    move-result-object v23

    #@465
    .line 455
    .local v23, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_1e

    #@467
    .line 456
    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@46a
    move-result v83

    #@46b
    .line 455
    if-eqz v83, :cond_1e

    #@46d
    .line 457
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@46f
    move-object/from16 v0, p0

    #@471
    move-object/from16 v1, v23

    #@473
    move-object/from16 v2, v83

    #@475
    move/from16 v3, p1

    #@477
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@47a
    .line 458
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@47c
    move-object/from16 v0, p0

    #@47e
    move-object/from16 v1, v23

    #@480
    move-object/from16 v2, v83

    #@482
    move/from16 v3, p1

    #@484
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@487
    .line 462
    :cond_1e
    move-object/from16 v0, p0

    #@489
    move-object/from16 v1, v27

    #@48b
    move/from16 v2, p1

    #@48d
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    #@490
    move-result-object v28

    #@491
    .line 464
    .local v28, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@494
    move-result v26

    #@495
    .line 465
    .local v26, "contactsSyncAdapterCount":I
    const/16 v47, 0x0

    #@497
    :goto_b
    move/from16 v0, v47

    #@499
    move/from16 v1, v26

    #@49b
    if-ge v0, v1, :cond_20

    #@49d
    .line 466
    move-object/from16 v0, v28

    #@49f
    move/from16 v1, v47

    #@4a1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4a4
    move-result-object v25

    #@4a5
    check-cast v25, Landroid/content/pm/PackageParser$Package;

    #@4a7
    .line 467
    .local v25, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@4aa
    move-result v83

    #@4ab
    if-eqz v83, :cond_1f

    #@4ad
    .line 468
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@4af
    move-object/from16 v0, p0

    #@4b1
    move-object/from16 v1, v25

    #@4b3
    move-object/from16 v2, v83

    #@4b5
    move/from16 v3, p1

    #@4b7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@4ba
    .line 465
    :cond_1f
    add-int/lit8 v47, v47, 0x1

    #@4bc
    goto :goto_b

    #@4bd
    .line 474
    .end local v25    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_20
    const-string/jumbo v83, "com.android.contacts"

    #@4c0
    .line 473
    move-object/from16 v0, p0

    #@4c2
    move-object/from16 v1, v83

    #@4c4
    move/from16 v2, p1

    #@4c6
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@4c9
    move-result-object v24

    #@4ca
    .line 475
    .local v24, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_21

    #@4cc
    .line 476
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@4ce
    .line 477
    const/16 v85, 0x1

    #@4d0
    .line 476
    move-object/from16 v0, p0

    #@4d2
    move-object/from16 v1, v24

    #@4d4
    move-object/from16 v2, v83

    #@4d6
    move/from16 v3, v85

    #@4d8
    move/from16 v4, p1

    #@4da
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@4dd
    .line 478
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@4df
    .line 479
    const/16 v85, 0x1

    #@4e1
    .line 478
    move-object/from16 v0, p0

    #@4e3
    move-object/from16 v1, v24

    #@4e5
    move-object/from16 v2, v83

    #@4e7
    move/from16 v3, v85

    #@4e9
    move/from16 v4, p1

    #@4eb
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@4ee
    .line 480
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@4f0
    move-object/from16 v0, p0

    #@4f2
    move-object/from16 v1, v24

    #@4f4
    move-object/from16 v2, v83

    #@4f6
    move/from16 v3, p1

    #@4f8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@4fb
    .line 484
    :cond_21
    new-instance v30, Landroid/content/Intent;

    #@4fd
    .line 485
    const-string/jumbo v83, "android.app.action.PROVISION_MANAGED_DEVICE"

    #@500
    .line 484
    move-object/from16 v0, v30

    #@502
    move-object/from16 v1, v83

    #@504
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@507
    .line 487
    .local v30, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@509
    move-object/from16 v1, v30

    #@50b
    move/from16 v2, p1

    #@50d
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@510
    move-result-object v31

    #@511
    .line 488
    .local v31, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_22

    #@513
    .line 489
    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@516
    move-result v83

    #@517
    .line 488
    if-eqz v83, :cond_22

    #@519
    .line 490
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@51b
    move-object/from16 v0, p0

    #@51d
    move-object/from16 v1, v31

    #@51f
    move-object/from16 v2, v83

    #@521
    move/from16 v3, p1

    #@523
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@526
    .line 494
    :cond_22
    new-instance v52, Landroid/content/Intent;

    #@528
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@52b
    move-object/from16 v0, v52

    #@52d
    move-object/from16 v1, v83

    #@52f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@532
    .line 495
    .local v52, "mapsIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_MAPS"

    #@535
    move-object/from16 v0, v52

    #@537
    move-object/from16 v1, v83

    #@539
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@53c
    .line 496
    move-object/from16 v0, p0

    #@53e
    move-object/from16 v1, v52

    #@540
    move/from16 v2, p1

    #@542
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@545
    move-result-object v53

    #@546
    .line 498
    .local v53, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v53, :cond_23

    #@548
    .line 499
    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@54b
    move-result v83

    #@54c
    .line 498
    if-eqz v83, :cond_23

    #@54e
    .line 500
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@550
    move-object/from16 v0, p0

    #@552
    move-object/from16 v1, v53

    #@554
    move-object/from16 v2, v83

    #@556
    move/from16 v3, p1

    #@558
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@55b
    .line 504
    :cond_23
    new-instance v44, Landroid/content/Intent;

    #@55d
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@560
    move-object/from16 v0, v44

    #@562
    move-object/from16 v1, v83

    #@564
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@567
    .line 505
    .local v44, "galleryIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_GALLERY"

    #@56a
    move-object/from16 v0, v44

    #@56c
    move-object/from16 v1, v83

    #@56e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@571
    .line 506
    move-object/from16 v0, p0

    #@573
    move-object/from16 v1, v44

    #@575
    move/from16 v2, p1

    #@577
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@57a
    move-result-object v45

    #@57b
    .line 508
    .local v45, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v45, :cond_24

    #@57d
    .line 509
    invoke-static/range {v45 .. v45}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@580
    move-result v83

    #@581
    .line 508
    if-eqz v83, :cond_24

    #@583
    .line 510
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@585
    move-object/from16 v0, p0

    #@587
    move-object/from16 v1, v45

    #@589
    move-object/from16 v2, v83

    #@58b
    move/from16 v3, p1

    #@58d
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@590
    .line 514
    :cond_24
    new-instance v40, Landroid/content/Intent;

    #@592
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@595
    move-object/from16 v0, v40

    #@597
    move-object/from16 v1, v83

    #@599
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@59c
    .line 515
    .local v40, "emailIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_EMAIL"

    #@59f
    move-object/from16 v0, v40

    #@5a1
    move-object/from16 v1, v83

    #@5a3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@5a6
    .line 516
    move-object/from16 v0, p0

    #@5a8
    move-object/from16 v1, v40

    #@5aa
    move/from16 v2, p1

    #@5ac
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@5af
    move-result-object v41

    #@5b0
    .line 518
    .local v41, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v41, :cond_25

    #@5b2
    .line 519
    invoke-static/range {v41 .. v41}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@5b5
    move-result v83

    #@5b6
    .line 518
    if-eqz v83, :cond_25

    #@5b8
    .line 520
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@5ba
    move-object/from16 v0, p0

    #@5bc
    move-object/from16 v1, v41

    #@5be
    move-object/from16 v2, v83

    #@5c0
    move/from16 v3, p1

    #@5c2
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@5c5
    .line 521
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@5c7
    move-object/from16 v0, p0

    #@5c9
    move-object/from16 v1, v41

    #@5cb
    move-object/from16 v2, v83

    #@5cd
    move/from16 v3, p1

    #@5cf
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@5d2
    .line 525
    :cond_25
    const/4 v6, 0x0

    #@5d3
    .line 526
    .local v6, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    #@5d5
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5d7
    move-object/from16 v83, v0

    #@5d9
    move-object/from16 v0, v83

    #@5db
    move/from16 v1, p1

    #@5dd
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    #@5e0
    move-result-object v29

    #@5e1
    .line 527
    .local v29, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v29, :cond_26

    #@5e3
    .line 528
    move-object/from16 v0, p0

    #@5e5
    move-object/from16 v1, v29

    #@5e7
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@5ea
    move-result-object v6

    #@5eb
    .line 530
    .end local v6    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_26
    if-nez v6, :cond_27

    #@5ed
    .line 531
    new-instance v5, Landroid/content/Intent;

    #@5ef
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@5f2
    move-object/from16 v0, v83

    #@5f4
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5f7
    .line 532
    .local v5, "browserIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.APP_BROWSER"

    #@5fa
    move-object/from16 v0, v83

    #@5fc
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@5ff
    .line 533
    move-object/from16 v0, p0

    #@601
    move/from16 v1, p1

    #@603
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@606
    move-result-object v6

    #@607
    .line 536
    .end local v5    # "browserIntent":Landroid/content/Intent;
    :cond_27
    if-eqz v6, :cond_28

    #@609
    .line 537
    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@60c
    move-result v83

    #@60d
    .line 536
    if-eqz v83, :cond_28

    #@60f
    .line 538
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@611
    move-object/from16 v0, p0

    #@613
    move-object/from16 v1, v83

    #@615
    move/from16 v2, p1

    #@617
    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@61a
    .line 542
    :cond_28
    if-eqz v78, :cond_2a

    #@61c
    .line 543
    const/16 v83, 0x0

    #@61e
    move-object/from16 v0, v78

    #@620
    array-length v0, v0

    #@621
    move/from16 v85, v0

    #@623
    :goto_c
    move/from16 v0, v83

    #@625
    move/from16 v1, v85

    #@627
    if-ge v0, v1, :cond_2a

    #@629
    aget-object v77, v78, v83

    #@62b
    .line 544
    .local v77, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@62d
    move-object/from16 v1, v77

    #@62f
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@632
    move-result-object v76

    #@633
    .line 546
    .local v76, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v76, :cond_29

    #@635
    .line 547
    invoke-static/range {v76 .. v76}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@638
    move-result v86

    #@639
    .line 546
    if-eqz v86, :cond_29

    #@63b
    .line 549
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@63d
    .line 548
    move-object/from16 v0, p0

    #@63f
    move-object/from16 v1, v76

    #@641
    move-object/from16 v2, v86

    #@643
    move/from16 v3, p1

    #@645
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@648
    .line 551
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@64a
    .line 550
    move-object/from16 v0, p0

    #@64c
    move-object/from16 v1, v76

    #@64e
    move-object/from16 v2, v86

    #@650
    move/from16 v3, p1

    #@652
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@655
    .line 553
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@657
    .line 552
    move-object/from16 v0, p0

    #@659
    move-object/from16 v1, v76

    #@65b
    move-object/from16 v2, v86

    #@65d
    move/from16 v3, p1

    #@65f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@662
    .line 555
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@664
    .line 554
    move-object/from16 v0, p0

    #@666
    move-object/from16 v1, v76

    #@668
    move-object/from16 v2, v86

    #@66a
    move/from16 v3, p1

    #@66c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@66f
    .line 557
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@671
    .line 556
    move-object/from16 v0, p0

    #@673
    move-object/from16 v1, v76

    #@675
    move-object/from16 v2, v86

    #@677
    move/from16 v3, p1

    #@679
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@67c
    .line 559
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@67e
    .line 558
    move-object/from16 v0, p0

    #@680
    move-object/from16 v1, v76

    #@682
    move-object/from16 v2, v86

    #@684
    move/from16 v3, p1

    #@686
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@689
    .line 543
    :cond_29
    add-int/lit8 v83, v83, 0x1

    #@68b
    goto :goto_c

    #@68c
    .line 565
    .end local v76    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v77    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_2a
    new-instance v80, Landroid/content/Intent;

    #@68e
    const-string/jumbo v83, "android.speech.RecognitionService"

    #@691
    move-object/from16 v0, v80

    #@693
    move-object/from16 v1, v83

    #@695
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@698
    .line 566
    .local v80, "voiceRecoIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.DEFAULT"

    #@69b
    move-object/from16 v0, v80

    #@69d
    move-object/from16 v1, v83

    #@69f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@6a2
    .line 567
    move-object/from16 v0, p0

    #@6a4
    move-object/from16 v1, v80

    #@6a6
    move/from16 v2, p1

    #@6a8
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@6ab
    move-result-object v81

    #@6ac
    .line 569
    .local v81, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v81, :cond_2b

    #@6ae
    .line 570
    invoke-static/range {v81 .. v81}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@6b1
    move-result v83

    #@6b2
    .line 569
    if-eqz v83, :cond_2b

    #@6b4
    .line 571
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@6b6
    move-object/from16 v0, p0

    #@6b8
    move-object/from16 v1, v81

    #@6ba
    move-object/from16 v2, v83

    #@6bc
    move/from16 v3, p1

    #@6be
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6c1
    .line 575
    :cond_2b
    if-eqz v50, :cond_2d

    #@6c3
    .line 576
    const/16 v83, 0x0

    #@6c5
    move-object/from16 v0, v50

    #@6c7
    array-length v0, v0

    #@6c8
    move/from16 v85, v0

    #@6ca
    :goto_d
    move/from16 v0, v83

    #@6cc
    move/from16 v1, v85

    #@6ce
    if-ge v0, v1, :cond_2d

    #@6d0
    aget-object v59, v50, v83

    #@6d2
    .line 577
    .local v59, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6d4
    move-object/from16 v1, v59

    #@6d6
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@6d9
    move-result-object v49

    #@6da
    .line 578
    .local v49, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v49, :cond_2c

    #@6dc
    .line 579
    invoke-static/range {v49 .. v49}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@6df
    move-result v86

    #@6e0
    .line 578
    if-eqz v86, :cond_2c

    #@6e2
    .line 580
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@6e4
    move-object/from16 v0, p0

    #@6e6
    move-object/from16 v1, v49

    #@6e8
    move-object/from16 v2, v86

    #@6ea
    move/from16 v3, p1

    #@6ec
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6ef
    .line 581
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@6f1
    move-object/from16 v0, p0

    #@6f3
    move-object/from16 v1, v49

    #@6f5
    move-object/from16 v2, v86

    #@6f7
    move/from16 v3, p1

    #@6f9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6fc
    .line 582
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@6fe
    move-object/from16 v0, p0

    #@700
    move-object/from16 v1, v49

    #@702
    move-object/from16 v2, v86

    #@704
    move/from16 v3, p1

    #@706
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@709
    .line 583
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@70b
    move-object/from16 v0, p0

    #@70d
    move-object/from16 v1, v49

    #@70f
    move-object/from16 v2, v86

    #@711
    move/from16 v3, p1

    #@713
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@716
    .line 584
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@718
    move-object/from16 v0, p0

    #@71a
    move-object/from16 v1, v49

    #@71c
    move-object/from16 v2, v86

    #@71e
    move/from16 v3, p1

    #@720
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@723
    .line 585
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@725
    .line 586
    const/16 v87, 0x1

    #@727
    .line 585
    move-object/from16 v0, p0

    #@729
    move-object/from16 v1, v49

    #@72b
    move-object/from16 v2, v86

    #@72d
    move/from16 v3, v87

    #@72f
    move/from16 v4, p1

    #@731
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@734
    .line 587
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@736
    move-object/from16 v0, p0

    #@738
    move-object/from16 v1, v49

    #@73a
    move-object/from16 v2, v86

    #@73c
    move/from16 v3, p1

    #@73e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@741
    .line 588
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@743
    move-object/from16 v0, p0

    #@745
    move-object/from16 v1, v49

    #@747
    move-object/from16 v2, v86

    #@749
    move/from16 v3, p1

    #@74b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@74e
    .line 589
    sget-object v86, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@750
    move-object/from16 v0, p0

    #@752
    move-object/from16 v1, v49

    #@754
    move-object/from16 v2, v86

    #@756
    move/from16 v3, p1

    #@758
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@75b
    .line 576
    :cond_2c
    add-int/lit8 v83, v83, 0x1

    #@75d
    goto/16 :goto_d

    #@75f
    .line 595
    .end local v49    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v59    # "packageName":Ljava/lang/String;
    :cond_2d
    new-instance v55, Landroid/content/Intent;

    #@761
    const-string/jumbo v83, "android.intent.action.VIEW"

    #@764
    move-object/from16 v0, v55

    #@766
    move-object/from16 v1, v83

    #@768
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@76b
    .line 596
    .local v55, "musicIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.DEFAULT"

    #@76e
    move-object/from16 v0, v55

    #@770
    move-object/from16 v1, v83

    #@772
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@775
    .line 597
    new-instance v83, Ljava/io/File;

    #@777
    const-string/jumbo v85, "foo.mp3"

    #@77a
    move-object/from16 v0, v83

    #@77c
    move-object/from16 v1, v85

    #@77e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@781
    invoke-static/range {v83 .. v83}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@784
    move-result-object v83

    #@785
    .line 598
    const-string/jumbo v85, "audio/mpeg"

    #@788
    .line 597
    move-object/from16 v0, v55

    #@78a
    move-object/from16 v1, v83

    #@78c
    move-object/from16 v2, v85

    #@78e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@791
    .line 599
    move-object/from16 v0, p0

    #@793
    move-object/from16 v1, v55

    #@795
    move/from16 v2, p1

    #@797
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@79a
    move-result-object v56

    #@79b
    .line 601
    .local v56, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v56, :cond_2e

    #@79d
    .line 602
    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@7a0
    move-result v83

    #@7a1
    .line 601
    if-eqz v83, :cond_2e

    #@7a3
    .line 603
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@7a5
    move-object/from16 v0, p0

    #@7a7
    move-object/from16 v1, v56

    #@7a9
    move-object/from16 v2, v83

    #@7ab
    move/from16 v3, p1

    #@7ad
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@7b0
    .line 607
    :cond_2e
    move-object/from16 v0, p0

    #@7b2
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@7b4
    move-object/from16 v83, v0

    #@7b6
    const-string/jumbo v85, "android.hardware.type.watch"

    #@7b9
    const/16 v86, 0x0

    #@7bb
    move-object/from16 v0, v83

    #@7bd
    move-object/from16 v1, v85

    #@7bf
    move/from16 v2, v86

    #@7c1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    #@7c4
    move-result v83

    #@7c5
    if-eqz v83, :cond_2f

    #@7c7
    .line 608
    new-instance v46, Landroid/content/Intent;

    #@7c9
    const-string/jumbo v83, "android.intent.action.MAIN"

    #@7cc
    move-object/from16 v0, v46

    #@7ce
    move-object/from16 v1, v83

    #@7d0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7d3
    .line 609
    .local v46, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v83, "android.intent.category.HOME_MAIN"

    #@7d6
    move-object/from16 v0, v46

    #@7d8
    move-object/from16 v1, v83

    #@7da
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@7dd
    .line 611
    move-object/from16 v0, p0

    #@7df
    move-object/from16 v1, v46

    #@7e1
    move/from16 v2, p1

    #@7e3
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@7e6
    move-result-object v82

    #@7e7
    .line 614
    .local v82, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v82, :cond_2f

    #@7e9
    .line 615
    invoke-static/range {v82 .. v82}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@7ec
    move-result v83

    #@7ed
    .line 614
    if-eqz v83, :cond_2f

    #@7ef
    .line 616
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@7f1
    const/16 v85, 0x0

    #@7f3
    move-object/from16 v0, p0

    #@7f5
    move-object/from16 v1, v82

    #@7f7
    move-object/from16 v2, v83

    #@7f9
    move/from16 v3, v85

    #@7fb
    move/from16 v4, p1

    #@7fd
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@800
    .line 618
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@802
    const/16 v85, 0x1

    #@804
    move-object/from16 v0, p0

    #@806
    move-object/from16 v1, v82

    #@808
    move-object/from16 v2, v83

    #@80a
    move/from16 v3, v85

    #@80c
    move/from16 v4, p1

    #@80e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@811
    .line 619
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@813
    const/16 v85, 0x0

    #@815
    move-object/from16 v0, p0

    #@817
    move-object/from16 v1, v82

    #@819
    move-object/from16 v2, v83

    #@81b
    move/from16 v3, v85

    #@81d
    move/from16 v4, p1

    #@81f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@822
    .line 621
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@824
    const/16 v85, 0x0

    #@826
    move-object/from16 v0, p0

    #@828
    move-object/from16 v1, v82

    #@82a
    move-object/from16 v2, v83

    #@82c
    move/from16 v3, v85

    #@82e
    move/from16 v4, p1

    #@830
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@833
    .line 628
    .end local v46    # "homeIntent":Landroid/content/Intent;
    .end local v82    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    :cond_2f
    const-string/jumbo v83, "com.android.printspooler"

    #@836
    .line 627
    move-object/from16 v0, p0

    #@838
    move-object/from16 v1, v83

    #@83a
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@83d
    move-result-object v60

    #@83e
    .line 629
    .local v60, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v60, :cond_30

    #@840
    .line 630
    invoke-static/range {v60 .. v60}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@843
    move-result v83

    #@844
    .line 629
    if-eqz v83, :cond_30

    #@846
    .line 631
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@848
    const/16 v85, 0x1

    #@84a
    move-object/from16 v0, p0

    #@84c
    move-object/from16 v1, v60

    #@84e
    move-object/from16 v2, v83

    #@850
    move/from16 v3, v85

    #@852
    move/from16 v4, p1

    #@854
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@857
    .line 635
    :cond_30
    new-instance v42, Landroid/content/Intent;

    #@859
    const-string/jumbo v83, "android.telephony.action.EMERGENCY_ASSISTANCE"

    #@85c
    move-object/from16 v0, v42

    #@85e
    move-object/from16 v1, v83

    #@860
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@863
    .line 636
    .local v42, "emergencyInfoIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@865
    move-object/from16 v1, v42

    #@867
    move/from16 v2, p1

    #@869
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@86c
    move-result-object v43

    #@86d
    .line 638
    .local v43, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v43, :cond_31

    #@86f
    .line 639
    invoke-static/range {v43 .. v43}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@872
    move-result v83

    #@873
    .line 638
    if-eqz v83, :cond_31

    #@875
    .line 640
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@877
    const/16 v85, 0x1

    #@879
    move-object/from16 v0, p0

    #@87b
    move-object/from16 v1, v43

    #@87d
    move-object/from16 v2, v83

    #@87f
    move/from16 v3, v85

    #@881
    move/from16 v4, p1

    #@883
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@886
    .line 641
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@888
    const/16 v85, 0x1

    #@88a
    move-object/from16 v0, p0

    #@88c
    move-object/from16 v1, v43

    #@88e
    move-object/from16 v2, v83

    #@890
    move/from16 v3, v85

    #@892
    move/from16 v4, p1

    #@894
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@897
    .line 645
    :cond_31
    new-instance v57, Landroid/content/Intent;

    #@899
    const-string/jumbo v83, "android.intent.action.VIEW"

    #@89c
    move-object/from16 v0, v57

    #@89e
    move-object/from16 v1, v83

    #@8a0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8a3
    .line 646
    .local v57, "nfcTagIntent":Landroid/content/Intent;
    const-string/jumbo v83, "vnd.android.cursor.item/ndef_msg"

    #@8a6
    move-object/from16 v0, v57

    #@8a8
    move-object/from16 v1, v83

    #@8aa
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@8ad
    .line 647
    move-object/from16 v0, p0

    #@8af
    move-object/from16 v1, v57

    #@8b1
    move/from16 v2, p1

    #@8b3
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@8b6
    move-result-object v58

    #@8b7
    .line 649
    .local v58, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v58, :cond_32

    #@8b9
    .line 650
    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@8bc
    move-result v83

    #@8bd
    .line 649
    if-eqz v83, :cond_32

    #@8bf
    .line 651
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@8c1
    const/16 v85, 0x0

    #@8c3
    move-object/from16 v0, p0

    #@8c5
    move-object/from16 v1, v58

    #@8c7
    move-object/from16 v2, v83

    #@8c9
    move/from16 v3, v85

    #@8cb
    move/from16 v4, p1

    #@8cd
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@8d0
    .line 652
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@8d2
    const/16 v85, 0x0

    #@8d4
    move-object/from16 v0, p0

    #@8d6
    move-object/from16 v1, v58

    #@8d8
    move-object/from16 v2, v83

    #@8da
    move/from16 v3, v85

    #@8dc
    move/from16 v4, p1

    #@8de
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@8e1
    .line 656
    :cond_32
    new-instance v71, Landroid/content/Intent;

    #@8e3
    const-string/jumbo v83, "android.os.storage.action.MANAGE_STORAGE"

    #@8e6
    move-object/from16 v0, v71

    #@8e8
    move-object/from16 v1, v83

    #@8ea
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8ed
    .line 657
    .local v71, "storageManagerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@8ef
    move-object/from16 v1, v71

    #@8f1
    move/from16 v2, p1

    #@8f3
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@8f6
    move-result-object v72

    #@8f7
    .line 659
    .local v72, "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v72, :cond_33

    #@8f9
    .line 660
    invoke-static/range {v72 .. v72}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@8fc
    move-result v83

    #@8fd
    .line 659
    if-eqz v83, :cond_33

    #@8ff
    .line 661
    sget-object v83, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@901
    const/16 v85, 0x1

    #@903
    move-object/from16 v0, p0

    #@905
    move-object/from16 v1, v72

    #@907
    move-object/from16 v2, v83

    #@909
    move/from16 v3, v85

    #@90b
    move/from16 v4, p1

    #@90d
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@910
    .line 663
    :cond_33
    move-object/from16 v0, p0

    #@912
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@914
    move-object/from16 v83, v0

    #@916
    move-object/from16 v0, v83

    #@918
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@91a
    move-object/from16 v83, v0

    #@91c
    move-object/from16 v0, v83

    #@91e
    move/from16 v1, p1

    #@920
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@923
    monitor-exit v84

    #@924
    .line 241
    return-void

    #@925
    .line 275
    .end local v7    # "calendarIntent":Landroid/content/Intent;
    .end local v8    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "calendarSyncAdapterCount":I
    .end local v13    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v14    # "cameraIntent":Landroid/content/Intent;
    .end local v15    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v16    # "carrierProvIntent":Landroid/content/Intent;
    .end local v17    # "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    .end local v18    # "cbrIntent":Landroid/content/Intent;
    .end local v19    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v20    # "certInstallerIntent":Landroid/content/Intent;
    .end local v21    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v22    # "contactsIntent":Landroid/content/Intent;
    .end local v23    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v26    # "contactsSyncAdapterCount":I
    .end local v28    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v29    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v30    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v31    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v37    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v38    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v39    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v40    # "emailIntent":Landroid/content/Intent;
    .end local v41    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v42    # "emergencyInfoIntent":Landroid/content/Intent;
    .end local v43    # "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    .end local v44    # "galleryIntent":Landroid/content/Intent;
    .end local v45    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v47    # "i":I
    .end local v48    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v52    # "mapsIntent":Landroid/content/Intent;
    .end local v53    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v54    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v55    # "musicIntent":Landroid/content/Intent;
    .end local v56    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "nfcTagIntent":Landroid/content/Intent;
    .end local v58    # "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    .end local v60    # "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v61    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v71    # "storageManagerIntent":Landroid/content/Intent;
    .end local v72    # "storageManagerPckg":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v80    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v81    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v83

    #@926
    monitor-exit v84

    #@927
    throw v83
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 216
    const-string/jumbo v7, "DefaultPermGrantPolicy"

    #@3
    new-instance v8, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v9, "Granting permissions to platform components for user "

    #@b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v8

    #@13
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v8

    #@17
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 218
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1c
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@1e
    monitor-enter v8

    #@1f
    .line 219
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@21
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@23
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    #@26
    move-result-object v7

    #@27
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v6

    #@2b
    .local v6, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_3

    #@31
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v5

    #@35
    check-cast v5, Landroid/content/pm/PackageParser$Package;

    #@37
    .line 220
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_0

    #@3d
    .line 221
    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    .line 222
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@48
    move-result v7

    #@49
    .line 220
    if-nez v7, :cond_0

    #@4b
    .line 225
    new-instance v4, Landroid/util/ArraySet;

    #@4d
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@50
    .line 226
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v3

    #@56
    .line 227
    .local v3, "permissionCount":I
    const/4 v1, 0x0

    #@57
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@59
    .line 228
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Ljava/lang/String;

    #@61
    .line 229
    .local v2, "permission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@63
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@65
    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    #@67
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    move-result-object v0

    #@6b
    check-cast v0, Lcom/android/server/pm/BasePermission;

    #@6d
    .line 230
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    #@6f
    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    #@72
    move-result v7

    #@73
    if-eqz v7, :cond_1

    #@75
    .line 231
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@78
    .line 227
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@7a
    goto :goto_1

    #@7b
    .line 234
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@7e
    move-result v7

    #@7f
    if-nez v7, :cond_0

    #@81
    .line 235
    const/4 v7, 0x1

    #@82
    invoke-direct {p0, v5, v4, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 218
    .end local v1    # "i":I
    .end local v3    # "permissionCount":I
    .end local v4    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    #@87
    monitor-exit v8

    #@88
    throw v7

    #@89
    .restart local v6    # "pkg$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v8

    #@8a
    .line 215
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v4, v3

    #@5
    move v5, p3

    #@6
    .line 850
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@9
    .line 849
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 855
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@9
    .line 854
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 18
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "isDefaultPhoneOrSms"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    #@0
    .prologue
    .line 860
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@2
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 861
    return-void

    #@b
    .line 864
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@f
    move-object/from16 v16, v0

    #@11
    .line 865
    .local v16, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    #@12
    .line 873
    .local v14, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_2

    #@14
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 874
    move-object/from16 v0, p0

    #@1c
    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1e
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@20
    move-object/from16 v0, p1

    #@22
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    #@27
    move-result-object v17

    #@28
    .line 875
    .local v17, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v17, :cond_2

    #@2a
    .line 876
    move-object/from16 v0, v17

    #@2c
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2e
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 877
    return-void

    #@37
    .line 879
    :cond_1
    move-object/from16 v0, v17

    #@39
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3b
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@3d
    move-object/from16 v0, v16

    #@3f
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    if-nez v1, :cond_2

    #@45
    .line 880
    new-instance v14, Landroid/util/ArraySet;

    #@47
    .end local v14    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@49
    invoke-direct {v14, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@4c
    .line 881
    .local v14, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    #@4e
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@50
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@52
    move-object/from16 v16, v0

    #@54
    .line 886
    .end local v14    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@57
    move-result v13

    #@58
    .line 887
    .local v13, "grantablePermissionCount":I
    const/4 v15, 0x0

    #@59
    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_9

    #@5b
    .line 888
    move-object/from16 v0, v16

    #@5d
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Ljava/lang/String;

    #@63
    .line 892
    .local v2, "permission":Ljava/lang/String;
    if-eqz v14, :cond_3

    #@65
    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_5

    #@6b
    .line 896
    :cond_3
    move-object/from16 v0, p2

    #@6d
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_5

    #@73
    .line 897
    move-object/from16 v0, p0

    #@75
    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@77
    move-object/from16 v0, p1

    #@79
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@7b
    move/from16 v0, p5

    #@7d
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    #@80
    move-result v12

    #@81
    .line 905
    .local v12, "flags":I
    if-eqz v12, :cond_4

    #@83
    if-eqz p4, :cond_8

    #@85
    .line 907
    :cond_4
    const/16 v11, 0x14

    #@87
    .line 909
    .local v11, "fixedFlags":I
    and-int/lit8 v1, v12, 0x14

    #@89
    if-eqz v1, :cond_6

    #@8b
    .line 887
    .end local v11    # "fixedFlags":I
    .end local v12    # "flags":I
    :cond_5
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@8d
    goto :goto_0

    #@8e
    .line 913
    .restart local v11    # "fixedFlags":I
    .restart local v12    # "flags":I
    :cond_6
    move-object/from16 v0, p0

    #@90
    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@92
    move-object/from16 v0, p1

    #@94
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@96
    move/from16 v0, p5

    #@98
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@9b
    .line 919
    const/16 v4, 0x20

    #@9d
    .line 920
    .local v4, "newFlags":I
    if-eqz p3, :cond_7

    #@9f
    .line 921
    const/16 v4, 0x30

    #@a1
    .line 924
    :cond_7
    move-object/from16 v0, p0

    #@a3
    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@a5
    move-object/from16 v0, p1

    #@a7
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@a9
    move v5, v4

    #@aa
    move/from16 v6, p5

    #@ac
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    #@af
    .line 930
    .end local v4    # "newFlags":I
    .end local v11    # "fixedFlags":I
    :cond_8
    and-int/lit8 v1, v12, 0x20

    #@b1
    if-eqz v1, :cond_5

    #@b3
    .line 931
    and-int/lit8 v1, v12, 0x10

    #@b5
    if-eqz v1, :cond_5

    #@b7
    .line 932
    if-nez p3, :cond_5

    #@b9
    .line 937
    move-object/from16 v0, p0

    #@bb
    iget-object v5, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@bd
    move-object/from16 v0, p1

    #@bf
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@c1
    .line 938
    const/16 v8, 0x10

    #@c3
    const/4 v9, 0x0

    #@c4
    move-object v6, v2

    #@c5
    move/from16 v10, p5

    #@c7
    .line 937
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    #@ca
    goto :goto_1

    #@cb
    .line 859
    .end local v2    # "permission":Ljava/lang/String;
    .end local v12    # "flags":I
    :cond_9
    return-void
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 945
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x2710

    #@c
    if-ge v3, v4, :cond_0

    #@e
    .line 946
    return v1

    #@f
    .line 948
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 949
    return v2

    #@16
    .line 951
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@18
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@1a
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@1c
    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    #@1f
    move-result-object v0

    #@20
    .line 952
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    #@22
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 953
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@28
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@2c
    and-int/lit8 v3, v3, 0x8

    #@2e
    if-nez v3, :cond_3

    #@30
    .line 954
    return v2

    #@31
    .line 956
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@35
    and-int/lit8 v3, v3, 0x8

    #@37
    if-nez v3, :cond_3

    #@39
    .line 957
    return v2

    #@3a
    .line 959
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3c
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    #@3e
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@40
    .line 960
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@42
    .line 959
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_4

    #@48
    :goto_0
    return v1

    #@49
    :cond_4
    move v1, v2

    #@4a
    goto :goto_0
.end method

.method private parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    const/4 v5, 0x3

    #@1
    .line 1037
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 1039
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v1

    #@9
    .local v1, "type":I
    const/4 v2, 0x1

    #@a
    if-eq v1, v2, :cond_3

    #@c
    .line 1040
    if-ne v1, v5, :cond_1

    #@e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@11
    move-result v2

    #@12
    if-le v2, v0, :cond_3

    #@14
    .line 1041
    :cond_1
    if-eq v1, v5, :cond_0

    #@16
    const/4 v2, 0x4

    #@17
    if-eq v1, v2, :cond_0

    #@19
    .line 1044
    const-string/jumbo v2, "exceptions"

    #@1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 1045
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    #@29
    goto :goto_0

    #@2a
    .line 1047
    :cond_2
    const-string/jumbo v2, "DefaultPermGrantPolicy"

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "Unknown tag "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_0

    #@49
    .line 1036
    :cond_3
    return-void
.end method

.method private parseExceptions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "outGrantExceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x0

    #@2
    .line 1054
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v0

    #@6
    .line 1056
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v4

    #@a
    .local v4, "type":I
    const/4 v5, 0x1

    #@b
    if-eq v4, v5, :cond_6

    #@d
    .line 1057
    if-ne v4, v9, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v5

    #@13
    if-le v5, v0, :cond_6

    #@15
    .line 1058
    :cond_1
    if-eq v4, v9, :cond_0

    #@17
    const/4 v5, 0x4

    #@18
    if-eq v4, v5, :cond_0

    #@1a
    .line 1061
    const-string/jumbo v5, "exception"

    #@1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_5

    #@27
    .line 1062
    const-string/jumbo v5, "package"

    #@2a
    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 1065
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    check-cast v1, Ljava/util/List;

    #@34
    .line 1066
    .local v1, "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    if-nez v1, :cond_4

    #@36
    .line 1068
    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@39
    move-result-object v3

    #@3a
    .line 1069
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_2

    #@3c
    .line 1070
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    #@3f
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "Unknown package:"

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@56
    .line 1071
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@59
    goto :goto_0

    #@5a
    .line 1076
    :cond_2
    invoke-static {v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@5d
    move-result v5

    #@5e
    if-nez v5, :cond_3

    #@60
    .line 1077
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    #@63
    new-instance v6, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v7, "Skipping non supporting runtime permissions package:"

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 1079
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7d
    goto :goto_0

    #@7e
    .line 1082
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    #@80
    .end local v1    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@83
    .line 1083
    .restart local v1    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    .line 1086
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    #@89
    goto/16 :goto_0

    #@8b
    .line 1088
    .end local v1    # "packageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    #@8e
    new-instance v6, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v7, "Unknown tag "

    #@96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v6

    #@9a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    const-string/jumbo v7, "under <exceptions>"

    #@a5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v6

    #@a9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b0
    goto/16 :goto_0

    #@b2
    .line 1053
    :cond_6
    return-void
.end method

.method private parsePermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .local p2, "outPackageExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x3

    #@2
    .line 1095
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@5
    move-result v3

    #@6
    .line 1097
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@9
    move-result v4

    #@a
    .local v4, "type":I
    const/4 v5, 0x1

    #@b
    if-eq v4, v5, :cond_4

    #@d
    .line 1098
    if-ne v4, v8, :cond_1

    #@f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@12
    move-result v5

    #@13
    if-le v5, v3, :cond_4

    #@15
    .line 1099
    :cond_1
    if-eq v4, v8, :cond_0

    #@17
    const/4 v5, 0x4

    #@18
    if-eq v4, v5, :cond_0

    #@1a
    .line 1103
    const-string/jumbo v5, "permission"

    #@1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_3

    #@27
    .line 1104
    const-string/jumbo v5, "name"

    #@2a
    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    .line 1105
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_2

    #@30
    .line 1106
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    #@33
    const-string/jumbo v6, "Mandatory name attribute missing for permission tag"

    #@36
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 1107
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@3c
    goto :goto_0

    #@3d
    .line 1111
    :cond_2
    const-string/jumbo v5, "fixed"

    #@40
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@43
    move-result v1

    #@44
    .line 1113
    .local v1, "fixed":Z
    new-instance v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;

    #@46
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;-><init>(Ljava/lang/String;Z)V

    #@49
    .line 1114
    .local v0, "exception":Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 1116
    .end local v0    # "exception":Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
    .end local v1    # "fixed":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "DefaultPermGrantPolicy"

    #@50
    new-instance v6, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string/jumbo v7, "Unknown tag "

    #@58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v6

    #@5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    const-string/jumbo v7, "under <exception>"

    #@67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    goto :goto_0

    #@73
    .line 1094
    :cond_4
    return-void
.end method

.method private readDefaultPermissionExceptionsLPw()Landroid/util/ArrayMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 999
    new-instance v0, Ljava/io/File;

    #@4
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    #@7
    move-result-object v9

    #@8
    const-string/jumbo v11, "etc/default-permissions"

    #@b
    invoke-direct {v0, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    .line 1000
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@11
    move-result v9

    #@12
    if-eqz v9, :cond_0

    #@14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@17
    move-result v9

    #@18
    if-eqz v9, :cond_0

    #@1a
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_0

    #@20
    .line 1004
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@23
    move-result-object v3

    #@24
    .line 1005
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    #@26
    .line 1006
    new-instance v9, Landroid/util/ArrayMap;

    #@28
    invoke-direct {v9, v8}, Landroid/util/ArrayMap;-><init>(I)V

    #@2b
    return-object v9

    #@2c
    .line 1001
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    new-instance v9, Landroid/util/ArrayMap;

    #@2e
    invoke-direct {v9, v8}, Landroid/util/ArrayMap;-><init>(I)V

    #@31
    return-object v9

    #@32
    .line 1009
    .restart local v3    # "files":[Ljava/io/File;
    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    #@34
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    #@37
    .line 1012
    .local v4, "grantExceptions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/DefaultPermissionGrantPolicy$DefaultPermissionGrant;>;>;"
    array-length v13, v3

    #@38
    move v12, v8

    #@39
    :goto_0
    if-ge v12, v13, :cond_9

    #@3b
    aget-object v2, v3, v12

    #@3d
    .line 1013
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@40
    move-result-object v8

    #@41
    const-string/jumbo v9, ".xml"

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@47
    move-result v8

    #@48
    if-nez v8, :cond_3

    #@4a
    .line 1014
    const-string/jumbo v8, "DefaultPermGrantPolicy"

    #@4d
    new-instance v9, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v11, "Non-xml file "

    #@55
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v9

    #@59
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v9

    #@5d
    const-string/jumbo v11, " in "

    #@60
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    const-string/jumbo v11, " directory, ignoring"

    #@6b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@76
    .line 1012
    :cond_2
    :goto_1
    add-int/lit8 v8, v12, 0x1

    #@78
    move v12, v8

    #@79
    goto :goto_0

    #@7a
    .line 1017
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    #@7d
    move-result v8

    #@7e
    if-nez v8, :cond_4

    #@80
    .line 1018
    const-string/jumbo v8, "DefaultPermGrantPolicy"

    #@83
    new-instance v9, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v11, "Default permissions file "

    #@8b
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    const-string/jumbo v11, " cannot be read"

    #@96
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v9

    #@9a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v9

    #@9e
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    goto :goto_1

    #@a2
    .line 1021
    :cond_4
    const/4 v6, 0x0

    #@a3
    .line 1022
    .local v6, "str":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    #@a5
    new-instance v8, Ljava/io/FileInputStream;

    #@a7
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@aa
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@ad
    .line 1024
    .end local v6    # "str":Ljava/io/InputStream;
    .local v7, "str":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@b0
    move-result-object v5

    #@b1
    .line 1025
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    #@b2
    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@b5
    .line 1026
    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@b8
    .line 1029
    if-eqz v7, :cond_5

    #@ba
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@bd
    :cond_5
    move-object v8, v10

    #@be
    :goto_2
    if-eqz v8, :cond_2

    #@c0
    :try_start_3
    throw v8
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@c1
    .line 1027
    :catch_0
    move-exception v1

    #@c2
    .local v1, "e":Ljava/lang/Exception;
    move-object v6, v7

    #@c3
    .line 1028
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "str":Ljava/io/InputStream;
    :goto_3
    const-string/jumbo v8, "DefaultPermGrantPolicy"

    #@c6
    new-instance v9, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v11, "Error reading default permissions file "

    #@ce
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v9

    #@da
    invoke-static {v8, v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@dd
    goto :goto_1

    #@de
    .line 1029
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "str":Ljava/io/InputStream;
    :catch_1
    move-exception v8

    #@df
    goto :goto_2

    #@e0
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "str":Ljava/io/InputStream;
    .restart local v6    # "str":Ljava/io/InputStream;
    :catch_2
    move-exception v8

    #@e1
    .end local v6    # "str":Ljava/io/InputStream;
    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e2
    :catchall_0
    move-exception v9

    #@e3
    move-object v14, v9

    #@e4
    move-object v9, v8

    #@e5
    move-object v8, v14

    #@e6
    :goto_5
    if-eqz v6, :cond_6

    #@e8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@eb
    :cond_6
    :goto_6
    if-eqz v9, :cond_8

    #@ed
    :try_start_6
    throw v9

    #@ee
    .line 1027
    :catch_3
    move-exception v1

    #@ef
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    #@f0
    .line 1029
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    #@f1
    if-nez v9, :cond_7

    #@f3
    move-object v9, v11

    #@f4
    goto :goto_6

    #@f5
    :cond_7
    if-eq v9, v11, :cond_6

    #@f7
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@fa
    goto :goto_6

    #@fb
    :cond_8
    throw v8
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    #@fc
    .line 1032
    .end local v2    # "file":Ljava/io/File;
    :cond_9
    return-object v4

    #@fd
    .line 1029
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "str":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    #@fe
    move-object v9, v10

    #@ff
    goto :goto_5

    #@100
    .end local v6    # "str":Ljava/io/InputStream;
    .restart local v7    # "str":Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    #@101
    move-object v9, v10

    #@102
    move-object v6, v7

    #@103
    .end local v7    # "str":Ljava/io/InputStream;
    .local v6, "str":Ljava/io/InputStream;
    goto :goto_5

    #@104
    .end local v6    # "str":Ljava/io/InputStream;
    .restart local v7    # "str":Ljava/io/InputStream;
    :catch_5
    move-exception v8

    #@105
    move-object v6, v7

    #@106
    .end local v7    # "str":Ljava/io/InputStream;
    .restart local v6    # "str":Ljava/io/InputStream;
    goto :goto_4
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    #@3
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    #@6
    .line 208
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionExceptions(I)V

    #@9
    .line 205
    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 755
    const-string/jumbo v0, "DefaultPermGrantPolicy"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Granting permissions to default browser for user:"

    #@c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 756
    if-nez p1, :cond_0

    #@1d
    .line 757
    return-void

    #@1e
    .line 759
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@21
    move-result-object v1

    #@22
    .line 760
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@24
    .line 761
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@27
    move-result v0

    #@28
    .line 760
    if-eqz v0, :cond_1

    #@2a
    .line 762
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@2c
    move-object v0, p0

    #@2d
    move v4, v3

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 754
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 704
    const-string/jumbo v0, "DefaultPermGrantPolicy"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "Granting permissions to default dialer app for user:"

    #@d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 705
    if-nez p1, :cond_0

    #@1e
    .line 706
    return-void

    #@1f
    .line 708
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@22
    move-result-object v1

    #@23
    .line 709
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@25
    .line 710
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@28
    move-result v0

    #@29
    .line 709
    if-eqz v0, :cond_1

    #@2b
    .line 711
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@2d
    move-object v0, p0

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 712
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@34
    move-object v0, p0

    #@35
    move v5, p2

    #@36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@39
    .line 713
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    move-object v0, p0

    #@3c
    move v5, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@40
    .line 714
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@42
    move-object v0, p0

    #@43
    move v5, p2

    #@44
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@47
    .line 715
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@49
    move-object v0, p0

    #@4a
    move v5, p2

    #@4b
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@4e
    .line 703
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 729
    if-nez p1, :cond_0

    #@2
    .line 730
    return-void

    #@3
    .line 732
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@6
    move-result-object v0

    #@7
    .line 733
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@9
    .line 734
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@c
    .line 728
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 691
    const-string/jumbo v0, "DefaultPermGrantPolicy"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "Granting permissions to default sms app for user:"

    #@d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 692
    if-nez p1, :cond_0

    #@1e
    .line 693
    return-void

    #@1f
    .line 695
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@22
    move-result-object v1

    #@23
    .line 696
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@25
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 697
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@2d
    move-object v0, p0

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 698
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@34
    move-object v0, p0

    #@35
    move v5, p2

    #@36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@39
    .line 699
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    move-object v0, p0

    #@3c
    move v5, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@40
    .line 690
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 739
    const-string/jumbo v2, "DefaultPermGrantPolicy"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "Granting permissions to enabled carrier apps for user:"

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 740
    if-nez p1, :cond_0

    #@1c
    .line 741
    return-void

    #@1d
    .line 743
    :cond_0
    const/4 v2, 0x0

    #@1e
    array-length v3, p1

    #@1f
    :goto_0
    if-ge v2, v3, :cond_2

    #@21
    aget-object v1, p1, v2

    #@23
    .line 744
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@26
    move-result-object v0

    #@27
    .line 745
    .local v0, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@29
    .line 746
    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@2c
    move-result v4

    #@2d
    .line 745
    if-eqz v4, :cond_1

    #@2f
    .line 747
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@31
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@34
    .line 748
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@36
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@39
    .line 749
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3e
    .line 743
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 738
    .end local v0    # "carrierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public scheduleReadDefaultPermissionExceptions()V
    .locals 2

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@6
    .line 211
    return-void
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 193
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 181
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 197
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 189
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@0
    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@2
    .line 201
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 185
    return-void
.end method
