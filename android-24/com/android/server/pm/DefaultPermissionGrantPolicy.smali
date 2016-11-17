.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
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


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 67
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@7
    .line 69
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 70
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 71
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 72
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@21
    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 73
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@29
    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 74
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@31
    const-string/jumbo v1, "android.permission.USE_SIP"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 75
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@39
    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    .line 78
    new-instance v0, Landroid/util/ArraySet;

    #@41
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@44
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@46
    .line 80
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@48
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    #@4b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    .line 81
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@50
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    #@53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    .line 82
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@58
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    #@5b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e
    .line 85
    new-instance v0, Landroid/util/ArraySet;

    #@60
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@63
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@65
    .line 87
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@67
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@6a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    .line 88
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@6f
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    .line 91
    new-instance v0, Landroid/util/ArraySet;

    #@77
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@7a
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@7c
    .line 93
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@7e
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    #@81
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@84
    .line 94
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@86
    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    #@89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8c
    .line 97
    new-instance v0, Landroid/util/ArraySet;

    #@8e
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@91
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@93
    .line 99
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@95
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9b
    .line 100
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@9d
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    #@a0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a3
    .line 101
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@a5
    const-string/jumbo v1, "android.permission.READ_SMS"

    #@a8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ab
    .line 102
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@ad
    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    #@b0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b3
    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@b5
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    #@b8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    .line 104
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@bd
    const-string/jumbo v1, "android.permission.READ_CELL_BROADCASTS"

    #@c0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c3
    .line 107
    new-instance v0, Landroid/util/ArraySet;

    #@c5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@c8
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@ca
    .line 109
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@cc
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    #@cf
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d2
    .line 112
    new-instance v0, Landroid/util/ArraySet;

    #@d4
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@d7
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@d9
    .line 114
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@db
    const-string/jumbo v1, "android.permission.CAMERA"

    #@de
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e1
    .line 117
    new-instance v0, Landroid/util/ArraySet;

    #@e3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@e6
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@e8
    .line 119
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@ea
    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    #@ed
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f0
    .line 122
    new-instance v0, Landroid/util/ArraySet;

    #@f2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@f5
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f7
    .line 124
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f9
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    #@fc
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ff
    .line 125
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@101
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@107
    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5
    .line 137
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 907
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
    .line 772
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    const/high16 v2, 0xc0000

    #@5
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@8
    move-result-object v0

    #@9
    .line 773
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    #@b
    .line 774
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@d
    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 776
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
    .line 711
    iget-object v2, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    .line 712
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
    .line 711
    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v1

    #@15
    .line 713
    .local v1, "handler":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    #@17
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    if-nez v2, :cond_1

    #@1b
    .line 714
    :cond_0
    return-object v5

    #@1c
    .line 716
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1e
    .line 717
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
    .line 718
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
    .line 717
    if-eqz v2, :cond_2

    #@3a
    .line 719
    return-object v5

    #@3b
    .line 721
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
    .line 726
    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    .line 727
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
    .line 726
    invoke-virtual {v5, p1, v6, v7, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@18
    move-result-object v3

    #@19
    .line 729
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_0

    #@1b
    .line 730
    return-object v8

    #@1c
    .line 732
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1f
    move-result v1

    #@20
    .line 733
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    #@21
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@23
    .line 734
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@29
    .line 736
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2b
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2d
    .line 735
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@30
    move-result-object v2

    #@31
    .line 737
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1

    #@33
    .line 738
    return-object v2

    #@34
    .line 733
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 741
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
    .line 746
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 748
    .local v4, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string/jumbo v5, "android.intent.action.MAIN"

    #@a
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 749
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    #@10
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 751
    const/4 v5, 0x0

    #@14
    array-length v6, p1

    #@15
    :goto_0
    if-ge v5, v6, :cond_2

    #@17
    aget-object v3, p1, v5

    #@19
    .line 752
    .local v3, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 754
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1e
    .line 755
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
    .line 754
    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@2f
    move-result-object v0

    #@30
    .line 757
    .local v0, "homeActivity":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@32
    .line 751
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@34
    goto :goto_0

    #@35
    .line 761
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@38
    move-result-object v2

    #@39
    .line 762
    .local v2, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    #@3b
    .line 763
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3e
    goto :goto_1

    #@3f
    .line 767
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
    .line 780
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
    .line 784
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@4
    move-result-object v0

    #@5
    .line 785
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 786
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
    .line 788
    :cond_1
    return-object v1
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 664
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
    .line 665
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 666
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@22
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@25
    .line 667
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@27
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@2a
    .line 663
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 614
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 616
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
    .line 618
    .local v0, "isPhonePermFixed":Z
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@12
    .line 617
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@15
    .line 619
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@17
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1a
    .line 620
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@1c
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1f
    .line 621
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@21
    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@24
    .line 613
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
    .line 627
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 628
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@b
    .line 629
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@d
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@10
    .line 630
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@12
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@15
    .line 626
    :cond_0
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 86
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 197
    const-string/jumbo v81, "DefaultPermGrantPolicy"

    #@3
    new-instance v82, Ljava/lang/StringBuilder;

    #@5
    invoke-direct/range {v82 .. v82}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v83, "Granting permissions to default platform handlers for user "

    #@b
    invoke-virtual/range {v82 .. v83}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v82

    #@f
    move-object/from16 v0, v82

    #@11
    move/from16 v1, p1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v82

    #@17
    invoke-virtual/range {v82 .. v82}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v82

    #@1b
    invoke-static/range {v81 .. v82}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 206
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@22
    move-object/from16 v81, v0

    #@24
    move-object/from16 v0, v81

    #@26
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@28
    move-object/from16 v82, v0

    #@2a
    monitor-enter v82

    #@2b
    .line 207
    :try_start_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2f
    move-object/from16 v51, v0

    #@31
    .line 208
    .local v51, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@35
    move-object/from16 v77, v0

    #@37
    .line 209
    .local v77, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@3b
    move-object/from16 v67, v0

    #@3d
    .line 210
    .local v67, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@41
    move-object/from16 v34, v0

    #@43
    .line 211
    .local v34, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@47
    move-object/from16 v65, v0

    #@49
    .line 212
    .local v65, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@4d
    move-object/from16 v72, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4f
    .local v72, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v82

    #@50
    .line 215
    if-eqz v77, :cond_b

    #@52
    .line 216
    move-object/from16 v0, v77

    #@54
    move/from16 v1, p1

    #@56
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@59
    move-result-object v76

    #@5a
    .line 217
    :goto_0
    if-eqz v51, :cond_c

    #@5c
    .line 218
    move-object/from16 v0, v51

    #@5e
    move/from16 v1, p1

    #@60
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@63
    move-result-object v50

    #@64
    .line 219
    :goto_1
    if-eqz v67, :cond_d

    #@66
    .line 220
    move-object/from16 v0, v67

    #@68
    move/from16 v1, p1

    #@6a
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@6d
    move-result-object v66

    #@6e
    .line 221
    :goto_2
    if-eqz v34, :cond_e

    #@70
    .line 222
    move-object/from16 v0, v34

    #@72
    move/from16 v1, p1

    #@74
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@77
    move-result-object v33

    #@78
    .line 223
    :goto_3
    if-eqz v65, :cond_f

    #@7a
    .line 224
    move-object/from16 v0, v65

    #@7c
    move/from16 v1, p1

    #@7e
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@81
    move-result-object v64

    #@82
    .line 225
    :goto_4
    if-eqz v72, :cond_10

    #@84
    .line 226
    const-string/jumbo v81, "com.android.contacts"

    #@87
    move-object/from16 v0, v72

    #@89
    move-object/from16 v1, v81

    #@8b
    move/from16 v2, p1

    #@8d
    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    #@90
    move-result-object v27

    #@91
    .line 227
    :goto_5
    if-eqz v72, :cond_11

    #@93
    .line 228
    const-string/jumbo v81, "com.android.calendar"

    #@96
    move-object/from16 v0, v72

    #@98
    move-object/from16 v1, v81

    #@9a
    move/from16 v2, p1

    #@9c
    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    #@9f
    move-result-object v12

    #@a0
    .line 230
    :goto_6
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@a4
    move-object/from16 v81, v0

    #@a6
    move-object/from16 v0, v81

    #@a8
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@aa
    move-object/from16 v82, v0

    #@ac
    monitor-enter v82

    #@ad
    .line 233
    :try_start_1
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@b1
    move-object/from16 v81, v0

    #@b3
    move-object/from16 v0, v81

    #@b5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    #@b7
    move-object/from16 v81, v0

    #@b9
    .line 232
    move-object/from16 v0, p0

    #@bb
    move-object/from16 v1, v81

    #@bd
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@c0
    move-result-object v48

    #@c1
    .line 234
    .local v48, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v48, :cond_0

    #@c3
    .line 235
    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@c6
    move-result v81

    #@c7
    .line 234
    if-eqz v81, :cond_0

    #@c9
    .line 236
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@cb
    const/16 v83, 0x1

    #@cd
    move-object/from16 v0, p0

    #@cf
    move-object/from16 v1, v48

    #@d1
    move-object/from16 v2, v81

    #@d3
    move/from16 v3, v83

    #@d5
    move/from16 v4, p1

    #@d7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@da
    .line 241
    :cond_0
    move-object/from16 v0, p0

    #@dc
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@de
    move-object/from16 v81, v0

    #@e0
    move-object/from16 v0, v81

    #@e2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@e4
    move-object/from16 v81, v0

    #@e6
    .line 240
    move-object/from16 v0, p0

    #@e8
    move-object/from16 v1, v81

    #@ea
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@ed
    move-result-object v73

    #@ee
    .line 242
    .local v73, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v73, :cond_1

    #@f0
    .line 243
    invoke-static/range {v73 .. v73}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@f3
    move-result v81

    #@f4
    .line 242
    if-eqz v81, :cond_1

    #@f6
    .line 244
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f8
    const/16 v83, 0x1

    #@fa
    move-object/from16 v0, p0

    #@fc
    move-object/from16 v1, v73

    #@fe
    move-object/from16 v2, v81

    #@100
    move/from16 v3, v83

    #@102
    move/from16 v4, p1

    #@104
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@107
    .line 245
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@109
    const/16 v83, 0x0

    #@10b
    move-object/from16 v0, p0

    #@10d
    move-object/from16 v1, v73

    #@10f
    move-object/from16 v2, v81

    #@111
    move/from16 v3, v83

    #@113
    move/from16 v4, p1

    #@115
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@118
    .line 246
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@11a
    const/16 v83, 0x0

    #@11c
    move-object/from16 v0, p0

    #@11e
    move-object/from16 v1, v73

    #@120
    move-object/from16 v2, v81

    #@122
    move/from16 v3, v83

    #@124
    move/from16 v4, p1

    #@126
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@129
    .line 251
    :cond_1
    move-object/from16 v0, p0

    #@12b
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@12d
    move-object/from16 v81, v0

    #@12f
    move-object/from16 v0, v81

    #@131
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    #@133
    move-object/from16 v81, v0

    #@135
    .line 250
    move-object/from16 v0, p0

    #@137
    move-object/from16 v1, v81

    #@139
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@13c
    move-result-object v61

    #@13d
    .line 252
    .local v61, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v61, :cond_2

    #@13f
    .line 253
    invoke-static/range {v61 .. v61}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@142
    move-result v81

    #@143
    .line 252
    if-eqz v81, :cond_2

    #@145
    .line 254
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@147
    move-object/from16 v0, p0

    #@149
    move-object/from16 v1, v61

    #@14b
    move-object/from16 v2, v81

    #@14d
    move/from16 v3, p1

    #@14f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@152
    .line 255
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@154
    move-object/from16 v0, p0

    #@156
    move-object/from16 v1, v61

    #@158
    move-object/from16 v2, v81

    #@15a
    move/from16 v3, p1

    #@15c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@15f
    .line 256
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@161
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v61

    #@165
    move-object/from16 v2, v81

    #@167
    move/from16 v3, p1

    #@169
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@16c
    .line 257
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@16e
    move-object/from16 v0, p0

    #@170
    move-object/from16 v1, v61

    #@172
    move-object/from16 v2, v81

    #@174
    move/from16 v3, p1

    #@176
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@179
    .line 261
    :cond_2
    new-instance v14, Landroid/content/Intent;

    #@17b
    const-string/jumbo v81, "android.media.action.IMAGE_CAPTURE"

    #@17e
    move-object/from16 v0, v81

    #@180
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@183
    .line 262
    .local v14, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@185
    move/from16 v1, p1

    #@187
    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@18a
    move-result-object v15

    #@18b
    .line 264
    .local v15, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_3

    #@18d
    .line 265
    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@190
    move-result v81

    #@191
    .line 264
    if-eqz v81, :cond_3

    #@193
    .line 266
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@195
    move-object/from16 v0, p0

    #@197
    move-object/from16 v1, v81

    #@199
    move/from16 v2, p1

    #@19b
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@19e
    .line 267
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@1a0
    move-object/from16 v0, p0

    #@1a2
    move-object/from16 v1, v81

    #@1a4
    move/from16 v2, p1

    #@1a6
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1a9
    .line 268
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1ab
    move-object/from16 v0, p0

    #@1ad
    move-object/from16 v1, v81

    #@1af
    move/from16 v2, p1

    #@1b1
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1b4
    .line 273
    :cond_3
    const-string/jumbo v81, "media"

    #@1b7
    .line 272
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v81

    #@1bb
    move/from16 v2, p1

    #@1bd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@1c0
    move-result-object v54

    #@1c1
    .line 274
    .local v54, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v54, :cond_4

    #@1c3
    .line 275
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1c5
    const/16 v83, 0x1

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    move-object/from16 v1, v54

    #@1cb
    move-object/from16 v2, v81

    #@1cd
    move/from16 v3, v83

    #@1cf
    move/from16 v4, p1

    #@1d1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@1d4
    .line 280
    :cond_4
    const-string/jumbo v81, "downloads"

    #@1d7
    .line 279
    move-object/from16 v0, p0

    #@1d9
    move-object/from16 v1, v81

    #@1db
    move/from16 v2, p1

    #@1dd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@1e0
    move-result-object v37

    #@1e1
    .line 281
    .local v37, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_5

    #@1e3
    .line 282
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1e5
    const/16 v83, 0x1

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    move-object/from16 v1, v37

    #@1eb
    move-object/from16 v2, v81

    #@1ed
    move/from16 v3, v83

    #@1ef
    move/from16 v4, p1

    #@1f1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@1f4
    .line 286
    :cond_5
    new-instance v38, Landroid/content/Intent;

    #@1f6
    const-string/jumbo v81, "android.intent.action.VIEW_DOWNLOADS"

    #@1f9
    move-object/from16 v0, v38

    #@1fb
    move-object/from16 v1, v81

    #@1fd
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@200
    .line 287
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
    .line 289
    .local v39, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_6

    #@20c
    .line 290
    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@20f
    move-result v81

    #@210
    .line 289
    if-eqz v81, :cond_6

    #@212
    .line 291
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@214
    const/16 v83, 0x1

    #@216
    move-object/from16 v0, p0

    #@218
    move-object/from16 v1, v39

    #@21a
    move-object/from16 v2, v81

    #@21c
    move/from16 v3, v83

    #@21e
    move/from16 v4, p1

    #@220
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@223
    .line 296
    :cond_6
    const-string/jumbo v81, "com.android.externalstorage.documents"

    #@226
    .line 295
    move-object/from16 v0, p0

    #@228
    move-object/from16 v1, v81

    #@22a
    move/from16 v2, p1

    #@22c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@22f
    move-result-object v71

    #@230
    .line 297
    .local v71, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v71, :cond_7

    #@232
    .line 298
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@234
    const/16 v83, 0x1

    #@236
    move-object/from16 v0, p0

    #@238
    move-object/from16 v1, v71

    #@23a
    move-object/from16 v2, v81

    #@23c
    move/from16 v3, v83

    #@23e
    move/from16 v4, p1

    #@240
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@243
    .line 302
    :cond_7
    new-instance v20, Landroid/content/Intent;

    #@245
    const-string/jumbo v81, "android.credentials.INSTALL"

    #@248
    move-object/from16 v0, v20

    #@24a
    move-object/from16 v1, v81

    #@24c
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24f
    .line 303
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
    .line 305
    .local v21, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_8

    #@25b
    .line 306
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@25e
    move-result v81

    #@25f
    .line 305
    if-eqz v81, :cond_8

    #@261
    .line 307
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@263
    const/16 v83, 0x1

    #@265
    move-object/from16 v0, p0

    #@267
    move-object/from16 v1, v21

    #@269
    move-object/from16 v2, v81

    #@26b
    move/from16 v3, v83

    #@26d
    move/from16 v4, p1

    #@26f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@272
    .line 311
    :cond_8
    if-nez v33, :cond_12

    #@274
    .line 312
    new-instance v35, Landroid/content/Intent;

    #@276
    const-string/jumbo v81, "android.intent.action.DIAL"

    #@279
    move-object/from16 v0, v35

    #@27b
    move-object/from16 v1, v81

    #@27d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@280
    .line 313
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
    .line 315
    .local v36, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_9

    #@28c
    .line 316
    move-object/from16 v0, p0

    #@28e
    move-object/from16 v1, v36

    #@290
    move/from16 v2, p1

    #@292
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@295
    .line 328
    .end local v35    # "dialerIntent":Landroid/content/Intent;
    .end local v36    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_9
    if-eqz v64, :cond_14

    #@297
    .line 329
    const/16 v81, 0x0

    #@299
    move-object/from16 v0, v64

    #@29b
    array-length v0, v0

    #@29c
    move/from16 v83, v0

    #@29e
    :goto_7
    move/from16 v0, v81

    #@2a0
    move/from16 v1, v83

    #@2a2
    if-ge v0, v1, :cond_14

    #@2a4
    aget-object v63, v64, v81

    #@2a6
    .line 331
    .local v63, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2a8
    move-object/from16 v1, v63

    #@2aa
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2ad
    move-result-object v62

    #@2ae
    .line 332
    .local v62, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v62, :cond_a

    #@2b0
    .line 333
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
    .line 329
    :cond_a
    add-int/lit8 v81, v81, 0x1

    #@2bb
    goto :goto_7

    #@2bc
    .line 206
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
    .end local v71    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v72    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v73    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v77    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_0
    move-exception v81

    #@2bd
    monitor-exit v82

    #@2be
    throw v81

    #@2bf
    .line 216
    .restart local v34    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v51    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v65    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v67    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v72    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v77    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_b
    const/16 v76, 0x0

    #@2c1
    .local v76, "voiceInteractPackageNames":[Ljava/lang/String;
    goto/16 :goto_0

    #@2c3
    .line 218
    .end local v76    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_c
    const/16 v50, 0x0

    #@2c5
    .local v50, "locationPackageNames":[Ljava/lang/String;
    goto/16 :goto_1

    #@2c7
    .line 220
    .end local v50    # "locationPackageNames":[Ljava/lang/String;
    :cond_d
    const/16 v66, 0x0

    #@2c9
    .local v66, "smsAppPackageNames":[Ljava/lang/String;
    goto/16 :goto_2

    #@2cb
    .line 222
    .end local v66    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_e
    const/16 v33, 0x0

    #@2cd
    .local v33, "dialerAppPackageNames":[Ljava/lang/String;
    goto/16 :goto_3

    #@2cf
    .line 224
    .end local v33    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_f
    const/16 v64, 0x0

    #@2d1
    .local v64, "simCallManagerPackageNames":[Ljava/lang/String;
    goto/16 :goto_4

    #@2d3
    .line 226
    .end local v64    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_10
    const/16 v27, 0x0

    #@2d5
    .local v27, "contactsSyncAdapterPackages":[Ljava/lang/String;
    goto/16 :goto_5

    #@2d7
    .line 228
    .end local v27    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_11
    const/4 v12, 0x0

    #@2d8
    .local v12, "calendarSyncAdapterPackages":[Ljava/lang/String;
    goto/16 :goto_6

    #@2da
    .line 319
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
    .restart local v71    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v73    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_12
    const/16 v81, 0x0

    #@2dc
    :try_start_2
    move-object/from16 v0, v33

    #@2de
    array-length v0, v0

    #@2df
    move/from16 v83, v0

    #@2e1
    :goto_8
    move/from16 v0, v81

    #@2e3
    move/from16 v1, v83

    #@2e5
    if-ge v0, v1, :cond_9

    #@2e7
    aget-object v32, v33, v81

    #@2e9
    .line 320
    .local v32, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2eb
    move-object/from16 v1, v32

    #@2ed
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2f0
    move-result-object v36

    #@2f1
    .line 321
    .restart local v36    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v36, :cond_13

    #@2f3
    .line 322
    move-object/from16 v0, p0

    #@2f5
    move-object/from16 v1, v36

    #@2f7
    move/from16 v2, p1

    #@2f9
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@2fc
    .line 319
    :cond_13
    add-int/lit8 v81, v81, 0x1

    #@2fe
    goto :goto_8

    #@2ff
    .line 340
    .end local v32    # "dialerAppPackageName":Ljava/lang/String;
    .end local v36    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_14
    if-nez v66, :cond_1b

    #@301
    .line 341
    new-instance v68, Landroid/content/Intent;

    #@303
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@306
    move-object/from16 v0, v68

    #@308
    move-object/from16 v1, v81

    #@30a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@30d
    .line 342
    .local v68, "smsIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_MESSAGING"

    #@310
    move-object/from16 v0, v68

    #@312
    move-object/from16 v1, v81

    #@314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@317
    .line 343
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
    .line 345
    .local v69, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_15

    #@323
    .line 346
    move-object/from16 v0, p0

    #@325
    move-object/from16 v1, v69

    #@327
    move/from16 v2, p1

    #@329
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@32c
    .line 358
    .end local v68    # "smsIntent":Landroid/content/Intent;
    .end local v69    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_15
    new-instance v18, Landroid/content/Intent;

    #@32e
    const-string/jumbo v81, "android.provider.Telephony.SMS_CB_RECEIVED"

    #@331
    move-object/from16 v0, v18

    #@333
    move-object/from16 v1, v81

    #@335
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@338
    .line 360
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
    .line 361
    .local v19, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_16

    #@344
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@347
    move-result v81

    #@348
    if-eqz v81, :cond_16

    #@34a
    .line 362
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@34c
    move-object/from16 v0, p0

    #@34e
    move-object/from16 v1, v19

    #@350
    move-object/from16 v2, v81

    #@352
    move/from16 v3, p1

    #@354
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@357
    .line 366
    :cond_16
    new-instance v16, Landroid/content/Intent;

    #@359
    const-string/jumbo v81, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    #@35c
    move-object/from16 v0, v16

    #@35e
    move-object/from16 v1, v81

    #@360
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@363
    .line 368
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
    .line 369
    .local v17, "carrierProvPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_17

    #@36f
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@372
    move-result v81

    #@373
    if-eqz v81, :cond_17

    #@375
    .line 370
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@377
    const/16 v83, 0x0

    #@379
    move-object/from16 v0, p0

    #@37b
    move-object/from16 v1, v17

    #@37d
    move-object/from16 v2, v81

    #@37f
    move/from16 v3, v83

    #@381
    move/from16 v4, p1

    #@383
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@386
    .line 374
    :cond_17
    new-instance v7, Landroid/content/Intent;

    #@388
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@38b
    move-object/from16 v0, v81

    #@38d
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@390
    .line 375
    .local v7, "calendarIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_CALENDAR"

    #@393
    move-object/from16 v0, v81

    #@395
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@398
    .line 376
    move-object/from16 v0, p0

    #@39a
    move/from16 v1, p1

    #@39c
    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@39f
    move-result-object v8

    #@3a0
    .line 378
    .local v8, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_18

    #@3a2
    .line 379
    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3a5
    move-result v81

    #@3a6
    .line 378
    if-eqz v81, :cond_18

    #@3a8
    .line 380
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@3aa
    move-object/from16 v0, p0

    #@3ac
    move-object/from16 v1, v81

    #@3ae
    move/from16 v2, p1

    #@3b0
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3b3
    .line 381
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move-object/from16 v1, v81

    #@3b9
    move/from16 v2, p1

    #@3bb
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3be
    .line 386
    :cond_18
    const-string/jumbo v81, "com.android.calendar"

    #@3c1
    .line 385
    move-object/from16 v0, p0

    #@3c3
    move-object/from16 v1, v81

    #@3c5
    move/from16 v2, p1

    #@3c7
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@3ca
    move-result-object v9

    #@3cb
    .line 387
    .local v9, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_19

    #@3cd
    .line 388
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    move-object/from16 v1, v81

    #@3d3
    move/from16 v2, p1

    #@3d5
    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3d8
    .line 389
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@3da
    .line 390
    const/16 v83, 0x1

    #@3dc
    .line 389
    move-object/from16 v0, p0

    #@3de
    move-object/from16 v1, v81

    #@3e0
    move/from16 v2, v83

    #@3e2
    move/from16 v3, p1

    #@3e4
    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@3e7
    .line 391
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@3e9
    move-object/from16 v0, p0

    #@3eb
    move-object/from16 v1, v81

    #@3ed
    move/from16 v2, p1

    #@3ef
    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3f2
    .line 395
    :cond_19
    move-object/from16 v0, p0

    #@3f4
    move/from16 v1, p1

    #@3f6
    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    #@3f9
    move-result-object v13

    #@3fa
    .line 397
    .local v13, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@3fd
    move-result v11

    #@3fe
    .line 398
    .local v11, "calendarSyncAdapterCount":I
    const/16 v47, 0x0

    #@400
    .local v47, "i":I
    :goto_9
    move/from16 v0, v47

    #@402
    if-ge v0, v11, :cond_1d

    #@404
    .line 399
    move/from16 v0, v47

    #@406
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@409
    move-result-object v10

    #@40a
    check-cast v10, Landroid/content/pm/PackageParser$Package;

    #@40c
    .line 400
    .local v10, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@40f
    move-result v81

    #@410
    if-eqz v81, :cond_1a

    #@412
    .line 401
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@414
    move-object/from16 v0, p0

    #@416
    move-object/from16 v1, v81

    #@418
    move/from16 v2, p1

    #@41a
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@41d
    .line 398
    :cond_1a
    add-int/lit8 v47, v47, 0x1

    #@41f
    goto :goto_9

    #@420
    .line 349
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
    const/16 v81, 0x0

    #@422
    move-object/from16 v0, v66

    #@424
    array-length v0, v0

    #@425
    move/from16 v83, v0

    #@427
    :goto_a
    move/from16 v0, v81

    #@429
    move/from16 v1, v83

    #@42b
    if-ge v0, v1, :cond_15

    #@42d
    aget-object v70, v66, v81

    #@42f
    .line 350
    .local v70, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@431
    move-object/from16 v1, v70

    #@433
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@436
    move-result-object v69

    #@437
    .line 351
    .restart local v69    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v69, :cond_1c

    #@439
    .line 352
    move-object/from16 v0, p0

    #@43b
    move-object/from16 v1, v69

    #@43d
    move/from16 v2, p1

    #@43f
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@442
    .line 349
    :cond_1c
    add-int/lit8 v81, v81, 0x1

    #@444
    goto :goto_a

    #@445
    .line 406
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
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@44a
    move-object/from16 v0, v22

    #@44c
    move-object/from16 v1, v81

    #@44e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@451
    .line 407
    .local v22, "contactsIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_CONTACTS"

    #@454
    move-object/from16 v0, v22

    #@456
    move-object/from16 v1, v81

    #@458
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@45b
    .line 408
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
    .line 410
    .local v23, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v23, :cond_1e

    #@467
    .line 411
    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@46a
    move-result v81

    #@46b
    .line 410
    if-eqz v81, :cond_1e

    #@46d
    .line 412
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@46f
    move-object/from16 v0, p0

    #@471
    move-object/from16 v1, v23

    #@473
    move-object/from16 v2, v81

    #@475
    move/from16 v3, p1

    #@477
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@47a
    .line 413
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@47c
    move-object/from16 v0, p0

    #@47e
    move-object/from16 v1, v23

    #@480
    move-object/from16 v2, v81

    #@482
    move/from16 v3, p1

    #@484
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@487
    .line 417
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
    .line 419
    .local v28, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    #@494
    move-result v26

    #@495
    .line 420
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
    .line 421
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
    .line 422
    .local v25, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@4aa
    move-result v81

    #@4ab
    if-eqz v81, :cond_1f

    #@4ad
    .line 423
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@4af
    move-object/from16 v0, p0

    #@4b1
    move-object/from16 v1, v25

    #@4b3
    move-object/from16 v2, v81

    #@4b5
    move/from16 v3, p1

    #@4b7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@4ba
    .line 420
    :cond_1f
    add-int/lit8 v47, v47, 0x1

    #@4bc
    goto :goto_b

    #@4bd
    .line 429
    .end local v25    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_20
    const-string/jumbo v81, "com.android.contacts"

    #@4c0
    .line 428
    move-object/from16 v0, p0

    #@4c2
    move-object/from16 v1, v81

    #@4c4
    move/from16 v2, p1

    #@4c6
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@4c9
    move-result-object v24

    #@4ca
    .line 430
    .local v24, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v24, :cond_21

    #@4cc
    .line 431
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@4ce
    .line 432
    const/16 v83, 0x1

    #@4d0
    .line 431
    move-object/from16 v0, p0

    #@4d2
    move-object/from16 v1, v24

    #@4d4
    move-object/from16 v2, v81

    #@4d6
    move/from16 v3, v83

    #@4d8
    move/from16 v4, p1

    #@4da
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@4dd
    .line 433
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@4df
    .line 434
    const/16 v83, 0x1

    #@4e1
    .line 433
    move-object/from16 v0, p0

    #@4e3
    move-object/from16 v1, v24

    #@4e5
    move-object/from16 v2, v81

    #@4e7
    move/from16 v3, v83

    #@4e9
    move/from16 v4, p1

    #@4eb
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@4ee
    .line 435
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@4f0
    move-object/from16 v0, p0

    #@4f2
    move-object/from16 v1, v24

    #@4f4
    move-object/from16 v2, v81

    #@4f6
    move/from16 v3, p1

    #@4f8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@4fb
    .line 439
    :cond_21
    new-instance v30, Landroid/content/Intent;

    #@4fd
    .line 440
    const-string/jumbo v81, "android.app.action.PROVISION_MANAGED_DEVICE"

    #@500
    .line 439
    move-object/from16 v0, v30

    #@502
    move-object/from16 v1, v81

    #@504
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@507
    .line 442
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
    .line 443
    .local v31, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v31, :cond_22

    #@513
    .line 444
    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@516
    move-result v81

    #@517
    .line 443
    if-eqz v81, :cond_22

    #@519
    .line 445
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@51b
    move-object/from16 v0, p0

    #@51d
    move-object/from16 v1, v31

    #@51f
    move-object/from16 v2, v81

    #@521
    move/from16 v3, p1

    #@523
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@526
    .line 449
    :cond_22
    new-instance v52, Landroid/content/Intent;

    #@528
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@52b
    move-object/from16 v0, v52

    #@52d
    move-object/from16 v1, v81

    #@52f
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@532
    .line 450
    .local v52, "mapsIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_MAPS"

    #@535
    move-object/from16 v0, v52

    #@537
    move-object/from16 v1, v81

    #@539
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@53c
    .line 451
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
    .line 453
    .local v53, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v53, :cond_23

    #@548
    .line 454
    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@54b
    move-result v81

    #@54c
    .line 453
    if-eqz v81, :cond_23

    #@54e
    .line 455
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@550
    move-object/from16 v0, p0

    #@552
    move-object/from16 v1, v53

    #@554
    move-object/from16 v2, v81

    #@556
    move/from16 v3, p1

    #@558
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@55b
    .line 459
    :cond_23
    new-instance v44, Landroid/content/Intent;

    #@55d
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@560
    move-object/from16 v0, v44

    #@562
    move-object/from16 v1, v81

    #@564
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@567
    .line 460
    .local v44, "galleryIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_GALLERY"

    #@56a
    move-object/from16 v0, v44

    #@56c
    move-object/from16 v1, v81

    #@56e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@571
    .line 461
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
    .line 463
    .local v45, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v45, :cond_24

    #@57d
    .line 464
    invoke-static/range {v45 .. v45}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@580
    move-result v81

    #@581
    .line 463
    if-eqz v81, :cond_24

    #@583
    .line 465
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@585
    move-object/from16 v0, p0

    #@587
    move-object/from16 v1, v45

    #@589
    move-object/from16 v2, v81

    #@58b
    move/from16 v3, p1

    #@58d
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@590
    .line 469
    :cond_24
    new-instance v40, Landroid/content/Intent;

    #@592
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@595
    move-object/from16 v0, v40

    #@597
    move-object/from16 v1, v81

    #@599
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@59c
    .line 470
    .local v40, "emailIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_EMAIL"

    #@59f
    move-object/from16 v0, v40

    #@5a1
    move-object/from16 v1, v81

    #@5a3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@5a6
    .line 471
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
    .line 473
    .local v41, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v41, :cond_25

    #@5b2
    .line 474
    invoke-static/range {v41 .. v41}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@5b5
    move-result v81

    #@5b6
    .line 473
    if-eqz v81, :cond_25

    #@5b8
    .line 475
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@5ba
    move-object/from16 v0, p0

    #@5bc
    move-object/from16 v1, v41

    #@5be
    move-object/from16 v2, v81

    #@5c0
    move/from16 v3, p1

    #@5c2
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@5c5
    .line 479
    :cond_25
    const/4 v6, 0x0

    #@5c6
    .line 480
    .local v6, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    #@5c8
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5ca
    move-object/from16 v81, v0

    #@5cc
    move-object/from16 v0, v81

    #@5ce
    move/from16 v1, p1

    #@5d0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    #@5d3
    move-result-object v29

    #@5d4
    .line 481
    .local v29, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v29, :cond_26

    #@5d6
    .line 482
    move-object/from16 v0, p0

    #@5d8
    move-object/from16 v1, v29

    #@5da
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@5dd
    move-result-object v6

    #@5de
    .line 484
    .end local v6    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_26
    if-nez v6, :cond_27

    #@5e0
    .line 485
    new-instance v5, Landroid/content/Intent;

    #@5e2
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@5e5
    move-object/from16 v0, v81

    #@5e7
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5ea
    .line 486
    .local v5, "browserIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.APP_BROWSER"

    #@5ed
    move-object/from16 v0, v81

    #@5ef
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@5f2
    .line 487
    move-object/from16 v0, p0

    #@5f4
    move/from16 v1, p1

    #@5f6
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@5f9
    move-result-object v6

    #@5fa
    .line 490
    .end local v5    # "browserIntent":Landroid/content/Intent;
    :cond_27
    if-eqz v6, :cond_28

    #@5fc
    .line 491
    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@5ff
    move-result v81

    #@600
    .line 490
    if-eqz v81, :cond_28

    #@602
    .line 492
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@604
    move-object/from16 v0, p0

    #@606
    move-object/from16 v1, v81

    #@608
    move/from16 v2, p1

    #@60a
    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@60d
    .line 496
    :cond_28
    if-eqz v76, :cond_2a

    #@60f
    .line 497
    const/16 v81, 0x0

    #@611
    move-object/from16 v0, v76

    #@613
    array-length v0, v0

    #@614
    move/from16 v83, v0

    #@616
    :goto_c
    move/from16 v0, v81

    #@618
    move/from16 v1, v83

    #@61a
    if-ge v0, v1, :cond_2a

    #@61c
    aget-object v75, v76, v81

    #@61e
    .line 498
    .local v75, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@620
    move-object/from16 v1, v75

    #@622
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@625
    move-result-object v74

    #@626
    .line 500
    .local v74, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v74, :cond_29

    #@628
    .line 501
    invoke-static/range {v74 .. v74}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@62b
    move-result v84

    #@62c
    .line 500
    if-eqz v84, :cond_29

    #@62e
    .line 503
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@630
    .line 502
    move-object/from16 v0, p0

    #@632
    move-object/from16 v1, v74

    #@634
    move-object/from16 v2, v84

    #@636
    move/from16 v3, p1

    #@638
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@63b
    .line 505
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@63d
    .line 504
    move-object/from16 v0, p0

    #@63f
    move-object/from16 v1, v74

    #@641
    move-object/from16 v2, v84

    #@643
    move/from16 v3, p1

    #@645
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@648
    .line 507
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@64a
    .line 506
    move-object/from16 v0, p0

    #@64c
    move-object/from16 v1, v74

    #@64e
    move-object/from16 v2, v84

    #@650
    move/from16 v3, p1

    #@652
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@655
    .line 509
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@657
    .line 508
    move-object/from16 v0, p0

    #@659
    move-object/from16 v1, v74

    #@65b
    move-object/from16 v2, v84

    #@65d
    move/from16 v3, p1

    #@65f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@662
    .line 511
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@664
    .line 510
    move-object/from16 v0, p0

    #@666
    move-object/from16 v1, v74

    #@668
    move-object/from16 v2, v84

    #@66a
    move/from16 v3, p1

    #@66c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@66f
    .line 513
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@671
    .line 512
    move-object/from16 v0, p0

    #@673
    move-object/from16 v1, v74

    #@675
    move-object/from16 v2, v84

    #@677
    move/from16 v3, p1

    #@679
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@67c
    .line 497
    :cond_29
    add-int/lit8 v81, v81, 0x1

    #@67e
    goto :goto_c

    #@67f
    .line 519
    .end local v74    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_2a
    new-instance v78, Landroid/content/Intent;

    #@681
    const-string/jumbo v81, "android.speech.RecognitionService"

    #@684
    move-object/from16 v0, v78

    #@686
    move-object/from16 v1, v81

    #@688
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@68b
    .line 520
    .local v78, "voiceRecoIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.DEFAULT"

    #@68e
    move-object/from16 v0, v78

    #@690
    move-object/from16 v1, v81

    #@692
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@695
    .line 521
    move-object/from16 v0, p0

    #@697
    move-object/from16 v1, v78

    #@699
    move/from16 v2, p1

    #@69b
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@69e
    move-result-object v79

    #@69f
    .line 523
    .local v79, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v79, :cond_2b

    #@6a1
    .line 524
    invoke-static/range {v79 .. v79}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@6a4
    move-result v81

    #@6a5
    .line 523
    if-eqz v81, :cond_2b

    #@6a7
    .line 525
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@6a9
    move-object/from16 v0, p0

    #@6ab
    move-object/from16 v1, v79

    #@6ad
    move-object/from16 v2, v81

    #@6af
    move/from16 v3, p1

    #@6b1
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6b4
    .line 529
    :cond_2b
    if-eqz v50, :cond_2d

    #@6b6
    .line 530
    const/16 v81, 0x0

    #@6b8
    move-object/from16 v0, v50

    #@6ba
    array-length v0, v0

    #@6bb
    move/from16 v83, v0

    #@6bd
    :goto_d
    move/from16 v0, v81

    #@6bf
    move/from16 v1, v83

    #@6c1
    if-ge v0, v1, :cond_2d

    #@6c3
    aget-object v59, v50, v81

    #@6c5
    .line 531
    .local v59, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6c7
    move-object/from16 v1, v59

    #@6c9
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@6cc
    move-result-object v49

    #@6cd
    .line 532
    .local v49, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v49, :cond_2c

    #@6cf
    .line 533
    invoke-static/range {v49 .. v49}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@6d2
    move-result v84

    #@6d3
    .line 532
    if-eqz v84, :cond_2c

    #@6d5
    .line 534
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@6d7
    move-object/from16 v0, p0

    #@6d9
    move-object/from16 v1, v49

    #@6db
    move-object/from16 v2, v84

    #@6dd
    move/from16 v3, p1

    #@6df
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6e2
    .line 535
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@6e4
    move-object/from16 v0, p0

    #@6e6
    move-object/from16 v1, v49

    #@6e8
    move-object/from16 v2, v84

    #@6ea
    move/from16 v3, p1

    #@6ec
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6ef
    .line 536
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@6f1
    move-object/from16 v0, p0

    #@6f3
    move-object/from16 v1, v49

    #@6f5
    move-object/from16 v2, v84

    #@6f7
    move/from16 v3, p1

    #@6f9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6fc
    .line 537
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@6fe
    move-object/from16 v0, p0

    #@700
    move-object/from16 v1, v49

    #@702
    move-object/from16 v2, v84

    #@704
    move/from16 v3, p1

    #@706
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@709
    .line 538
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@70b
    move-object/from16 v0, p0

    #@70d
    move-object/from16 v1, v49

    #@70f
    move-object/from16 v2, v84

    #@711
    move/from16 v3, p1

    #@713
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@716
    .line 539
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@718
    .line 540
    const/16 v85, 0x1

    #@71a
    .line 539
    move-object/from16 v0, p0

    #@71c
    move-object/from16 v1, v49

    #@71e
    move-object/from16 v2, v84

    #@720
    move/from16 v3, v85

    #@722
    move/from16 v4, p1

    #@724
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@727
    .line 541
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@729
    move-object/from16 v0, p0

    #@72b
    move-object/from16 v1, v49

    #@72d
    move-object/from16 v2, v84

    #@72f
    move/from16 v3, p1

    #@731
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@734
    .line 542
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@736
    move-object/from16 v0, p0

    #@738
    move-object/from16 v1, v49

    #@73a
    move-object/from16 v2, v84

    #@73c
    move/from16 v3, p1

    #@73e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@741
    .line 543
    sget-object v84, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@743
    move-object/from16 v0, p0

    #@745
    move-object/from16 v1, v49

    #@747
    move-object/from16 v2, v84

    #@749
    move/from16 v3, p1

    #@74b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@74e
    .line 530
    :cond_2c
    add-int/lit8 v81, v81, 0x1

    #@750
    goto/16 :goto_d

    #@752
    .line 549
    .end local v49    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v59    # "packageName":Ljava/lang/String;
    :cond_2d
    new-instance v55, Landroid/content/Intent;

    #@754
    const-string/jumbo v81, "android.intent.action.VIEW"

    #@757
    move-object/from16 v0, v55

    #@759
    move-object/from16 v1, v81

    #@75b
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@75e
    .line 550
    .local v55, "musicIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.DEFAULT"

    #@761
    move-object/from16 v0, v55

    #@763
    move-object/from16 v1, v81

    #@765
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@768
    .line 551
    new-instance v81, Ljava/io/File;

    #@76a
    const-string/jumbo v83, "foo.mp3"

    #@76d
    move-object/from16 v0, v81

    #@76f
    move-object/from16 v1, v83

    #@771
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@774
    invoke-static/range {v81 .. v81}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@777
    move-result-object v81

    #@778
    .line 552
    const-string/jumbo v83, "audio/mpeg"

    #@77b
    .line 551
    move-object/from16 v0, v55

    #@77d
    move-object/from16 v1, v81

    #@77f
    move-object/from16 v2, v83

    #@781
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@784
    .line 553
    move-object/from16 v0, p0

    #@786
    move-object/from16 v1, v55

    #@788
    move/from16 v2, p1

    #@78a
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@78d
    move-result-object v56

    #@78e
    .line 555
    .local v56, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v56, :cond_2e

    #@790
    .line 556
    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@793
    move-result v81

    #@794
    .line 555
    if-eqz v81, :cond_2e

    #@796
    .line 557
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@798
    move-object/from16 v0, p0

    #@79a
    move-object/from16 v1, v56

    #@79c
    move-object/from16 v2, v81

    #@79e
    move/from16 v3, p1

    #@7a0
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@7a3
    .line 561
    :cond_2e
    move-object/from16 v0, p0

    #@7a5
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@7a7
    move-object/from16 v81, v0

    #@7a9
    const-string/jumbo v83, "android.hardware.type.watch"

    #@7ac
    const/16 v84, 0x0

    #@7ae
    move-object/from16 v0, v81

    #@7b0
    move-object/from16 v1, v83

    #@7b2
    move/from16 v2, v84

    #@7b4
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    #@7b7
    move-result v81

    #@7b8
    if-eqz v81, :cond_2f

    #@7ba
    .line 562
    new-instance v46, Landroid/content/Intent;

    #@7bc
    const-string/jumbo v81, "android.intent.action.MAIN"

    #@7bf
    move-object/from16 v0, v46

    #@7c1
    move-object/from16 v1, v81

    #@7c3
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7c6
    .line 563
    .local v46, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v81, "android.intent.category.HOME_MAIN"

    #@7c9
    move-object/from16 v0, v46

    #@7cb
    move-object/from16 v1, v81

    #@7cd
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@7d0
    .line 565
    move-object/from16 v0, p0

    #@7d2
    move-object/from16 v1, v46

    #@7d4
    move/from16 v2, p1

    #@7d6
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@7d9
    move-result-object v80

    #@7da
    .line 568
    .local v80, "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v80, :cond_2f

    #@7dc
    .line 569
    invoke-static/range {v80 .. v80}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@7df
    move-result v81

    #@7e0
    .line 568
    if-eqz v81, :cond_2f

    #@7e2
    .line 570
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@7e4
    const/16 v83, 0x0

    #@7e6
    move-object/from16 v0, p0

    #@7e8
    move-object/from16 v1, v80

    #@7ea
    move-object/from16 v2, v81

    #@7ec
    move/from16 v3, v83

    #@7ee
    move/from16 v4, p1

    #@7f0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@7f3
    .line 572
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@7f5
    const/16 v83, 0x1

    #@7f7
    move-object/from16 v0, p0

    #@7f9
    move-object/from16 v1, v80

    #@7fb
    move-object/from16 v2, v81

    #@7fd
    move/from16 v3, v83

    #@7ff
    move/from16 v4, p1

    #@801
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@804
    .line 573
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@806
    const/16 v83, 0x0

    #@808
    move-object/from16 v0, p0

    #@80a
    move-object/from16 v1, v80

    #@80c
    move-object/from16 v2, v81

    #@80e
    move/from16 v3, v83

    #@810
    move/from16 v4, p1

    #@812
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@815
    .line 575
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@817
    const/16 v83, 0x0

    #@819
    move-object/from16 v0, p0

    #@81b
    move-object/from16 v1, v80

    #@81d
    move-object/from16 v2, v81

    #@81f
    move/from16 v3, v83

    #@821
    move/from16 v4, p1

    #@823
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@826
    .line 582
    .end local v46    # "homeIntent":Landroid/content/Intent;
    .end local v80    # "wearHomePackage":Landroid/content/pm/PackageParser$Package;
    :cond_2f
    const-string/jumbo v81, "com.android.printspooler"

    #@829
    .line 581
    move-object/from16 v0, p0

    #@82b
    move-object/from16 v1, v81

    #@82d
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@830
    move-result-object v60

    #@831
    .line 583
    .local v60, "printSpoolerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v60, :cond_30

    #@833
    .line 584
    invoke-static/range {v60 .. v60}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@836
    move-result v81

    #@837
    .line 583
    if-eqz v81, :cond_30

    #@839
    .line 585
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@83b
    const/16 v83, 0x1

    #@83d
    move-object/from16 v0, p0

    #@83f
    move-object/from16 v1, v60

    #@841
    move-object/from16 v2, v81

    #@843
    move/from16 v3, v83

    #@845
    move/from16 v4, p1

    #@847
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@84a
    .line 589
    :cond_30
    new-instance v42, Landroid/content/Intent;

    #@84c
    const-string/jumbo v81, "android.telephony.action.EMERGENCY_ASSISTANCE"

    #@84f
    move-object/from16 v0, v42

    #@851
    move-object/from16 v1, v81

    #@853
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@856
    .line 590
    .local v42, "emergencyInfoIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@858
    move-object/from16 v1, v42

    #@85a
    move/from16 v2, p1

    #@85c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@85f
    move-result-object v43

    #@860
    .line 592
    .local v43, "emergencyInfoPckg":Landroid/content/pm/PackageParser$Package;
    if-eqz v43, :cond_31

    #@862
    .line 593
    invoke-static/range {v43 .. v43}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@865
    move-result v81

    #@866
    .line 592
    if-eqz v81, :cond_31

    #@868
    .line 594
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@86a
    const/16 v83, 0x1

    #@86c
    move-object/from16 v0, p0

    #@86e
    move-object/from16 v1, v43

    #@870
    move-object/from16 v2, v81

    #@872
    move/from16 v3, v83

    #@874
    move/from16 v4, p1

    #@876
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@879
    .line 595
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@87b
    const/16 v83, 0x1

    #@87d
    move-object/from16 v0, p0

    #@87f
    move-object/from16 v1, v43

    #@881
    move-object/from16 v2, v81

    #@883
    move/from16 v3, v83

    #@885
    move/from16 v4, p1

    #@887
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@88a
    .line 599
    :cond_31
    new-instance v57, Landroid/content/Intent;

    #@88c
    const-string/jumbo v81, "android.intent.action.VIEW"

    #@88f
    move-object/from16 v0, v57

    #@891
    move-object/from16 v1, v81

    #@893
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@896
    .line 600
    .local v57, "nfcTagIntent":Landroid/content/Intent;
    const-string/jumbo v81, "vnd.android.cursor.item/ndef_msg"

    #@899
    move-object/from16 v0, v57

    #@89b
    move-object/from16 v1, v81

    #@89d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@8a0
    .line 601
    move-object/from16 v0, p0

    #@8a2
    move-object/from16 v1, v57

    #@8a4
    move/from16 v2, p1

    #@8a6
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@8a9
    move-result-object v58

    #@8aa
    .line 603
    .local v58, "nfcTagPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v58, :cond_32

    #@8ac
    .line 604
    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@8af
    move-result v81

    #@8b0
    .line 603
    if-eqz v81, :cond_32

    #@8b2
    .line 605
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@8b4
    const/16 v83, 0x0

    #@8b6
    move-object/from16 v0, p0

    #@8b8
    move-object/from16 v1, v58

    #@8ba
    move-object/from16 v2, v81

    #@8bc
    move/from16 v3, v83

    #@8be
    move/from16 v4, p1

    #@8c0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@8c3
    .line 606
    sget-object v81, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@8c5
    const/16 v83, 0x0

    #@8c7
    move-object/from16 v0, p0

    #@8c9
    move-object/from16 v1, v58

    #@8cb
    move-object/from16 v2, v81

    #@8cd
    move/from16 v3, v83

    #@8cf
    move/from16 v4, p1

    #@8d1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@8d4
    .line 608
    :cond_32
    move-object/from16 v0, p0

    #@8d6
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@8d8
    move-object/from16 v81, v0

    #@8da
    move-object/from16 v0, v81

    #@8dc
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@8de
    move-object/from16 v81, v0

    #@8e0
    move-object/from16 v0, v81

    #@8e2
    move/from16 v1, p1

    #@8e4
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@8e7
    monitor-exit v82

    #@8e8
    .line 196
    return-void

    #@8e9
    .line 230
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
    .end local v71    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v73    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v78    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v79    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v81

    #@8ea
    monitor-exit v82

    #@8eb
    throw v81
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 171
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
    .line 173
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1c
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@1e
    monitor-enter v8

    #@1f
    .line 174
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
    .line 175
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_0

    #@3d
    .line 176
    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    .line 177
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@48
    move-result v7

    #@49
    .line 175
    if-nez v7, :cond_0

    #@4b
    .line 180
    new-instance v4, Landroid/util/ArraySet;

    #@4d
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@50
    .line 181
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v3

    #@56
    .line 182
    .local v3, "permissionCount":I
    const/4 v1, 0x0

    #@57
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@59
    .line 183
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Ljava/lang/String;

    #@61
    .line 184
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
    .line 185
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    #@6f
    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    #@72
    move-result v7

    #@73
    if-eqz v7, :cond_1

    #@75
    .line 186
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@78
    .line 182
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@7a
    goto :goto_1

    #@7b
    .line 189
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@7e
    move-result v7

    #@7f
    if-nez v7, :cond_0

    #@81
    .line 190
    const/4 v7, 0x1

    #@82
    invoke-direct {p0, v5, v4, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 173
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
    .line 170
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
    .line 793
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@9
    .line 792
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
    .line 798
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
    .line 797
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
    .line 803
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
    .line 804
    return-void

    #@b
    .line 807
    :cond_0
    move-object/from16 v0, p1

    #@d
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@f
    move-object/from16 v16, v0

    #@11
    .line 808
    .local v16, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    #@12
    .line 816
    .local v14, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p4, :cond_2

    #@14
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 817
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
    .line 818
    .local v17, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v17, :cond_2

    #@2a
    .line 819
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
    .line 820
    return-void

    #@37
    .line 822
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
    .line 823
    new-instance v14, Landroid/util/ArraySet;

    #@47
    .end local v14    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    #@49
    invoke-direct {v14, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@4c
    .line 824
    .local v14, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    #@4e
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@50
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@52
    move-object/from16 v16, v0

    #@54
    .line 829
    .end local v14    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    #@57
    move-result v13

    #@58
    .line 830
    .local v13, "grantablePermissionCount":I
    const/4 v15, 0x0

    #@59
    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_9

    #@5b
    .line 831
    move-object/from16 v0, v16

    #@5d
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Ljava/lang/String;

    #@63
    .line 835
    .local v2, "permission":Ljava/lang/String;
    if-eqz v14, :cond_3

    #@65
    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_5

    #@6b
    .line 839
    :cond_3
    move-object/from16 v0, p2

    #@6d
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_5

    #@73
    .line 840
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
    .line 848
    .local v12, "flags":I
    if-eqz v12, :cond_4

    #@83
    if-eqz p4, :cond_8

    #@85
    .line 850
    :cond_4
    const/16 v11, 0x14

    #@87
    .line 852
    .local v11, "fixedFlags":I
    and-int/lit8 v1, v12, 0x14

    #@89
    if-eqz v1, :cond_6

    #@8b
    .line 830
    .end local v11    # "fixedFlags":I
    .end local v12    # "flags":I
    :cond_5
    :goto_1
    add-int/lit8 v15, v15, 0x1

    #@8d
    goto :goto_0

    #@8e
    .line 856
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
    .line 862
    const/16 v4, 0x20

    #@9d
    .line 863
    .local v4, "newFlags":I
    if-eqz p3, :cond_7

    #@9f
    .line 864
    const/16 v4, 0x30

    #@a1
    .line 867
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
    .line 873
    .end local v4    # "newFlags":I
    .end local v11    # "fixedFlags":I
    :cond_8
    and-int/lit8 v1, v12, 0x20

    #@b1
    if-eqz v1, :cond_5

    #@b3
    .line 874
    and-int/lit8 v1, v12, 0x10

    #@b5
    if-eqz v1, :cond_5

    #@b7
    .line 875
    if-nez p3, :cond_5

    #@b9
    .line 880
    move-object/from16 v0, p0

    #@bb
    iget-object v5, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@bd
    move-object/from16 v0, p1

    #@bf
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@c1
    .line 881
    const/16 v8, 0x10

    #@c3
    const/4 v9, 0x0

    #@c4
    move-object v6, v2

    #@c5
    move/from16 v10, p5

    #@c7
    .line 880
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    #@ca
    goto :goto_1

    #@cb
    .line 802
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
    .line 888
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
    .line 889
    return v1

    #@f
    .line 891
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 892
    return v2

    #@16
    .line 894
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
    .line 895
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    #@22
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 896
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
    .line 897
    return v2

    #@31
    .line 899
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@35
    and-int/lit8 v3, v3, 0x8

    #@37
    if-nez v3, :cond_3

    #@39
    .line 900
    return v2

    #@3a
    .line 902
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3c
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    #@3e
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@40
    .line 903
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@42
    .line 902
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


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    #@3
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    #@6
    .line 165
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
    .line 698
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
    .line 699
    if-nez p1, :cond_0

    #@1d
    .line 700
    return-void

    #@1e
    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@21
    move-result-object v1

    #@22
    .line 703
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@24
    .line 704
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@27
    move-result v0

    #@28
    .line 703
    if-eqz v0, :cond_1

    #@2a
    .line 705
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
    .line 697
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
    .line 648
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
    .line 649
    if-nez p1, :cond_0

    #@1e
    .line 650
    return-void

    #@1f
    .line 652
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@22
    move-result-object v1

    #@23
    .line 653
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@25
    .line 654
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@28
    move-result v0

    #@29
    .line 653
    if-eqz v0, :cond_1

    #@2b
    .line 655
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@2d
    move-object v0, p0

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 656
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@34
    move-object v0, p0

    #@35
    move v5, p2

    #@36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@39
    .line 657
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    move-object v0, p0

    #@3c
    move v5, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@40
    .line 658
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@42
    move-object v0, p0

    #@43
    move v5, p2

    #@44
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@47
    .line 647
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 672
    if-nez p1, :cond_0

    #@2
    .line 673
    return-void

    #@3
    .line 675
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@6
    move-result-object v0

    #@7
    .line 676
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@9
    .line 677
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@c
    .line 671
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
    .line 635
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
    .line 636
    if-nez p1, :cond_0

    #@1e
    .line 637
    return-void

    #@1f
    .line 639
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@22
    move-result-object v1

    #@23
    .line 640
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@25
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 641
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@2d
    move-object v0, p0

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 642
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@34
    move-object v0, p0

    #@35
    move v5, p2

    #@36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@39
    .line 643
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    move-object v0, p0

    #@3c
    move v5, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@40
    .line 634
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 682
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
    .line 683
    if-nez p1, :cond_0

    #@1c
    .line 684
    return-void

    #@1d
    .line 686
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
    .line 687
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@26
    move-result-object v0

    #@27
    .line 688
    .local v0, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@29
    .line 689
    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@2c
    move-result v4

    #@2d
    .line 688
    if-eqz v4, :cond_1

    #@2f
    .line 690
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@31
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@34
    .line 691
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@36
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@39
    .line 692
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3e
    .line 686
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 681
    .end local v0    # "carrierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 153
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 141
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 157
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 149
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@2
    .line 161
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 145
    return-void
.end method
