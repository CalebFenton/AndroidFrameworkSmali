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

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

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
    .line 61
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@7
    .line 63
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@9
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    #@c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 64
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@11
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    #@14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    .line 65
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@19
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    #@1c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1f
    .line 66
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@21
    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    #@24
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@27
    .line 67
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@29
    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    #@2c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2f
    .line 68
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@31
    const-string/jumbo v1, "android.permission.USE_SIP"

    #@34
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@37
    .line 69
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@39
    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    #@3c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3f
    .line 72
    new-instance v0, Landroid/util/ArraySet;

    #@41
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@44
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@46
    .line 74
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@48
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    #@4b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4e
    .line 75
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@50
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    #@53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@56
    .line 76
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@58
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    #@5b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5e
    .line 79
    new-instance v0, Landroid/util/ArraySet;

    #@60
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@63
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@65
    .line 81
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@67
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    #@6a
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@6d
    .line 82
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@6f
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    #@72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@75
    .line 85
    new-instance v0, Landroid/util/ArraySet;

    #@77
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@7a
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@7c
    .line 87
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@7e
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    #@81
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@84
    .line 88
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@86
    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    #@89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@8c
    .line 91
    new-instance v0, Landroid/util/ArraySet;

    #@8e
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@91
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@93
    .line 93
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@95
    const-string/jumbo v1, "android.permission.SEND_SMS"

    #@98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9b
    .line 94
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@9d
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    #@a0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@a3
    .line 95
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@a5
    const-string/jumbo v1, "android.permission.READ_SMS"

    #@a8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ab
    .line 96
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@ad
    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    #@b0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@b3
    .line 97
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@b5
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    #@b8
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@bb
    .line 98
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@bd
    const-string/jumbo v1, "android.permission.READ_CELL_BROADCASTS"

    #@c0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@c3
    .line 101
    new-instance v0, Landroid/util/ArraySet;

    #@c5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@c8
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@ca
    .line 103
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@cc
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    #@cf
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d2
    .line 106
    new-instance v0, Landroid/util/ArraySet;

    #@d4
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@d7
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@d9
    .line 108
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@db
    const-string/jumbo v1, "android.permission.CAMERA"

    #@de
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@e1
    .line 111
    new-instance v0, Landroid/util/ArraySet;

    #@e3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@e6
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@e8
    .line 113
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@ea
    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    #@ed
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f0
    .line 116
    new-instance v0, Landroid/util/ArraySet;

    #@f2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@f5
    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f7
    .line 118
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@f9
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    #@fc
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@ff
    .line 119
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@101
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@107
    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5
    .line 132
    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 848
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
    .line 732
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@7
    move-result-object v0

    #@8
    .line 733
    .local v0, "provider":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    #@a
    .line 734
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    #@c
    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 736
    :cond_0
    return-object v3
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 666
    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@5
    .line 667
    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@7
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 668
    const/16 v7, 0x200

    #@13
    .line 666
    invoke-virtual {v5, p1, v6, v7, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@16
    move-result-object v3

    #@17
    .line 669
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_0

    #@19
    .line 670
    return-object v8

    #@1a
    .line 672
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1d
    move-result v1

    #@1e
    .line 673
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    #@1f
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@21
    .line 674
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@27
    .line 676
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@29
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2b
    .line 675
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2e
    move-result-object v2

    #@2f
    .line 677
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1

    #@31
    .line 678
    return-object v2

    #@32
    .line 673
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 681
    .end local v0    # "handler":Landroid/content/pm/ResolveInfo;
    .end local v2    # "handlerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_2
    return-object v8
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 686
    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@3
    .line 687
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
    .line 688
    const/16 v7, 0x200

    #@11
    .line 686
    invoke-virtual {v5, p1, v6, v7, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    .line 689
    .local v3, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_0

    #@17
    .line 690
    return-object v8

    #@18
    .line 692
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1b
    move-result v1

    #@1c
    .line 693
    .local v1, "handlerCount":I
    const/4 v4, 0x0

    #@1d
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    #@1f
    .line 694
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@25
    .line 696
    .local v0, "handler":Landroid/content/pm/ResolveInfo;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@27
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@29
    .line 695
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2c
    move-result-object v2

    #@2d
    .line 697
    .local v2, "handlerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_1

    #@2f
    .line 698
    return-object v2

    #@30
    .line 693
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 701
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
    .line 706
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 708
    .local v4, "syncAdapterPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Landroid/content/Intent;

    #@7
    const-string/jumbo v5, "android.intent.action.MAIN"

    #@a
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@d
    .line 709
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    #@10
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 711
    const/4 v5, 0x0

    #@14
    array-length v6, p1

    #@15
    :goto_0
    if-ge v5, v6, :cond_2

    #@17
    aget-object v3, p1, v5

    #@19
    .line 712
    .local v3, "syncAdapterPackageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1c
    .line 714
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1e
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    #@20
    .line 715
    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@22
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@27
    move-result-object v8

    #@28
    invoke-virtual {v1, v8}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@2b
    move-result-object v8

    #@2c
    .line 716
    const/16 v9, 0x200

    #@2e
    .line 714
    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    #@31
    move-result-object v0

    #@32
    .line 717
    .local v0, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@35
    move-result v7

    #@36
    if-nez v7, :cond_1

    #@38
    .line 711
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 721
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@3e
    move-result-object v2

    #@3f
    .line 722
    .local v2, "syncAdapterPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_0

    #@41
    .line 723
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    goto :goto_1

    #@45
    .line 727
    .end local v0    # "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
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
    .line 740
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
    .line 744
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@4
    move-result-object v0

    #@5
    .line 745
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@7
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 746
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
    .line 748
    :cond_1
    return-object v1
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3
    .param p1, "simCallManagerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 619
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
    .line 620
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 621
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@22
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@25
    .line 622
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@27
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@2a
    .line 618
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "dialerPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 570
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 571
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@b
    .line 572
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@d
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@10
    .line 573
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@12
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@15
    .line 574
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@17
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@1a
    .line 569
    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "smsPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 581
    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 582
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@b
    .line 583
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@d
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@10
    .line 584
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@12
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@15
    .line 580
    :cond_0
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 82
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 196
    const-string/jumbo v77, "DefaultPermGrantPolicy"

    #@3
    new-instance v78, Ljava/lang/StringBuilder;

    #@5
    invoke-direct/range {v78 .. v78}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v79, "Granting permissions to default platform handlers for user "

    #@b
    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v78

    #@f
    move-object/from16 v0, v78

    #@11
    move/from16 v1, p1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v78

    #@17
    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v78

    #@1b
    invoke-static/range {v77 .. v78}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 206
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@22
    move-object/from16 v77, v0

    #@24
    move-object/from16 v0, v77

    #@26
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@28
    move-object/from16 v78, v0

    #@2a
    monitor-enter v78

    #@2b
    .line 207
    :try_start_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2f
    move-object/from16 v46, v0

    #@31
    .line 208
    .local v46, "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@35
    move-object/from16 v50, v0

    #@37
    .line 209
    .local v50, "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@3b
    move-object/from16 v74, v0

    #@3d
    .line 210
    .local v74, "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@41
    move-object/from16 v64, v0

    #@43
    .line 211
    .local v64, "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@47
    move-object/from16 v32, v0

    #@49
    .line 212
    .local v32, "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@4b
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@4d
    move-object/from16 v62, v0

    #@4f
    .line 213
    .local v62, "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@53
    move-object/from16 v69, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@55
    .local v69, "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    monitor-exit v78

    #@56
    .line 216
    if-eqz v46, :cond_b

    #@58
    .line 217
    move-object/from16 v0, v46

    #@5a
    move/from16 v1, p1

    #@5c
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@5f
    move-result-object v45

    #@60
    .line 218
    :goto_0
    if-eqz v74, :cond_c

    #@62
    .line 219
    move-object/from16 v0, v74

    #@64
    move/from16 v1, p1

    #@66
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@69
    move-result-object v73

    #@6a
    .line 220
    :goto_1
    if-eqz v50, :cond_d

    #@6c
    .line 221
    move-object/from16 v0, v50

    #@6e
    move/from16 v1, p1

    #@70
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@73
    move-result-object v49

    #@74
    .line 222
    :goto_2
    if-eqz v64, :cond_e

    #@76
    .line 223
    move-object/from16 v0, v64

    #@78
    move/from16 v1, p1

    #@7a
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@7d
    move-result-object v63

    #@7e
    .line 224
    :goto_3
    if-eqz v32, :cond_f

    #@80
    .line 225
    move-object/from16 v0, v32

    #@82
    move/from16 v1, p1

    #@84
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@87
    move-result-object v31

    #@88
    .line 226
    :goto_4
    if-eqz v62, :cond_10

    #@8a
    .line 227
    move-object/from16 v0, v62

    #@8c
    move/from16 v1, p1

    #@8e
    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    #@91
    move-result-object v61

    #@92
    .line 228
    :goto_5
    if-eqz v69, :cond_11

    #@94
    .line 229
    const-string/jumbo v77, "com.android.contacts"

    #@97
    move-object/from16 v0, v69

    #@99
    move-object/from16 v1, v77

    #@9b
    move/from16 v2, p1

    #@9d
    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    #@a0
    move-result-object v25

    #@a1
    .line 230
    :goto_6
    if-eqz v69, :cond_12

    #@a3
    .line 231
    const-string/jumbo v77, "com.android.calendar"

    #@a6
    move-object/from16 v0, v69

    #@a8
    move-object/from16 v1, v77

    #@aa
    move/from16 v2, p1

    #@ac
    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    #@af
    move-result-object v12

    #@b0
    .line 233
    :goto_7
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@b4
    move-object/from16 v77, v0

    #@b6
    move-object/from16 v0, v77

    #@b8
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@ba
    move-object/from16 v78, v0

    #@bc
    monitor-enter v78

    #@bd
    .line 236
    :try_start_1
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@c1
    move-object/from16 v77, v0

    #@c3
    move-object/from16 v0, v77

    #@c5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    #@c7
    move-object/from16 v77, v0

    #@c9
    .line 235
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, v77

    #@cd
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@d0
    move-result-object v47

    #@d1
    .line 237
    .local v47, "installerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v47, :cond_0

    #@d3
    .line 238
    invoke-static/range {v47 .. v47}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@d6
    move-result v77

    #@d7
    .line 237
    if-eqz v77, :cond_0

    #@d9
    .line 239
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@db
    const/16 v79, 0x1

    #@dd
    move-object/from16 v0, p0

    #@df
    move-object/from16 v1, v47

    #@e1
    move-object/from16 v2, v77

    #@e3
    move/from16 v3, v79

    #@e5
    move/from16 v4, p1

    #@e7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@ea
    .line 244
    :cond_0
    move-object/from16 v0, p0

    #@ec
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@ee
    move-object/from16 v77, v0

    #@f0
    move-object/from16 v0, v77

    #@f2
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    #@f4
    move-object/from16 v77, v0

    #@f6
    .line 243
    move-object/from16 v0, p0

    #@f8
    move-object/from16 v1, v77

    #@fa
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@fd
    move-result-object v70

    #@fe
    .line 245
    .local v70, "verifierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v70, :cond_1

    #@100
    .line 246
    invoke-static/range {v70 .. v70}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@103
    move-result v77

    #@104
    .line 245
    if-eqz v77, :cond_1

    #@106
    .line 247
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@108
    const/16 v79, 0x1

    #@10a
    move-object/from16 v0, p0

    #@10c
    move-object/from16 v1, v70

    #@10e
    move-object/from16 v2, v77

    #@110
    move/from16 v3, v79

    #@112
    move/from16 v4, p1

    #@114
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@117
    .line 251
    :cond_1
    new-instance v57, Landroid/content/Intent;

    #@119
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@11c
    move-object/from16 v0, v57

    #@11e
    move-object/from16 v1, v77

    #@120
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@123
    .line 252
    .local v57, "setupIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.SETUP_WIZARD"

    #@126
    move-object/from16 v0, v57

    #@128
    move-object/from16 v1, v77

    #@12a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@12d
    .line 253
    move-object/from16 v0, p0

    #@12f
    move-object/from16 v1, v57

    #@131
    move/from16 v2, p1

    #@133
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@136
    move-result-object v58

    #@137
    .line 255
    .local v58, "setupPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v58, :cond_2

    #@139
    .line 256
    invoke-static/range {v58 .. v58}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@13c
    move-result v77

    #@13d
    .line 255
    if-eqz v77, :cond_2

    #@13f
    .line 257
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@141
    move-object/from16 v0, p0

    #@143
    move-object/from16 v1, v58

    #@145
    move-object/from16 v2, v77

    #@147
    move/from16 v3, p1

    #@149
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@14c
    .line 258
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@14e
    move-object/from16 v0, p0

    #@150
    move-object/from16 v1, v58

    #@152
    move-object/from16 v2, v77

    #@154
    move/from16 v3, p1

    #@156
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@159
    .line 262
    :cond_2
    new-instance v14, Landroid/content/Intent;

    #@15b
    const-string/jumbo v77, "android.media.action.IMAGE_CAPTURE"

    #@15e
    move-object/from16 v0, v77

    #@160
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@163
    .line 263
    .local v14, "cameraIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@165
    move/from16 v1, p1

    #@167
    invoke-direct {v0, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@16a
    move-result-object v15

    #@16b
    .line 265
    .local v15, "cameraPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v15, :cond_3

    #@16d
    .line 266
    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@170
    move-result v77

    #@171
    .line 265
    if-eqz v77, :cond_3

    #@173
    .line 267
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@175
    move-object/from16 v0, p0

    #@177
    move-object/from16 v1, v77

    #@179
    move/from16 v2, p1

    #@17b
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@17e
    .line 268
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@180
    move-object/from16 v0, p0

    #@182
    move-object/from16 v1, v77

    #@184
    move/from16 v2, p1

    #@186
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@189
    .line 269
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@18b
    move-object/from16 v0, p0

    #@18d
    move-object/from16 v1, v77

    #@18f
    move/from16 v2, p1

    #@191
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@194
    .line 274
    :cond_3
    const-string/jumbo v77, "media"

    #@197
    .line 273
    move-object/from16 v0, p0

    #@199
    move-object/from16 v1, v77

    #@19b
    move/from16 v2, p1

    #@19d
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@1a0
    move-result-object v53

    #@1a1
    .line 275
    .local v53, "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v53, :cond_4

    #@1a3
    .line 276
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1a5
    const/16 v79, 0x1

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    move-object/from16 v1, v53

    #@1ab
    move-object/from16 v2, v77

    #@1ad
    move/from16 v3, v79

    #@1af
    move/from16 v4, p1

    #@1b1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@1b4
    .line 281
    :cond_4
    const-string/jumbo v77, "downloads"

    #@1b7
    .line 280
    move-object/from16 v0, p0

    #@1b9
    move-object/from16 v1, v77

    #@1bb
    move/from16 v2, p1

    #@1bd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@1c0
    move-result-object v35

    #@1c1
    .line 282
    .local v35, "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v35, :cond_5

    #@1c3
    .line 283
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1c5
    const/16 v79, 0x1

    #@1c7
    move-object/from16 v0, p0

    #@1c9
    move-object/from16 v1, v35

    #@1cb
    move-object/from16 v2, v77

    #@1cd
    move/from16 v3, v79

    #@1cf
    move/from16 v4, p1

    #@1d1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@1d4
    .line 287
    :cond_5
    new-instance v36, Landroid/content/Intent;

    #@1d6
    const-string/jumbo v77, "android.intent.action.VIEW_DOWNLOADS"

    #@1d9
    move-object/from16 v0, v36

    #@1db
    move-object/from16 v1, v77

    #@1dd
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1e0
    .line 288
    .local v36, "downloadsUiIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@1e2
    move-object/from16 v1, v36

    #@1e4
    move/from16 v2, p1

    #@1e6
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@1e9
    move-result-object v37

    #@1ea
    .line 290
    .local v37, "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v37, :cond_6

    #@1ec
    .line 291
    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@1ef
    move-result v77

    #@1f0
    .line 290
    if-eqz v77, :cond_6

    #@1f2
    .line 292
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@1f4
    const/16 v79, 0x1

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    move-object/from16 v1, v37

    #@1fa
    move-object/from16 v2, v77

    #@1fc
    move/from16 v3, v79

    #@1fe
    move/from16 v4, p1

    #@200
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@203
    .line 297
    :cond_6
    const-string/jumbo v77, "com.android.externalstorage.documents"

    #@206
    .line 296
    move-object/from16 v0, p0

    #@208
    move-object/from16 v1, v77

    #@20a
    move/from16 v2, p1

    #@20c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@20f
    move-result-object v68

    #@210
    .line 298
    .local v68, "storagePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v68, :cond_7

    #@212
    .line 299
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@214
    move-object/from16 v0, p0

    #@216
    move-object/from16 v1, v68

    #@218
    move-object/from16 v2, v77

    #@21a
    move/from16 v3, p1

    #@21c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@21f
    .line 303
    :cond_7
    new-instance v18, Landroid/content/Intent;

    #@221
    const-string/jumbo v77, "android.credentials.INSTALL"

    #@224
    move-object/from16 v0, v18

    #@226
    move-object/from16 v1, v77

    #@228
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@22b
    .line 304
    .local v18, "certInstallerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v18

    #@22f
    move/from16 v2, p1

    #@231
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@234
    move-result-object v19

    #@235
    .line 306
    .local v19, "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v19, :cond_8

    #@237
    .line 307
    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@23a
    move-result v77

    #@23b
    .line 306
    if-eqz v77, :cond_8

    #@23d
    .line 308
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@23f
    const/16 v79, 0x1

    #@241
    move-object/from16 v0, p0

    #@243
    move-object/from16 v1, v19

    #@245
    move-object/from16 v2, v77

    #@247
    move/from16 v3, v79

    #@249
    move/from16 v4, p1

    #@24b
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@24e
    .line 312
    :cond_8
    if-nez v31, :cond_13

    #@250
    .line 313
    new-instance v33, Landroid/content/Intent;

    #@252
    const-string/jumbo v77, "android.intent.action.DIAL"

    #@255
    move-object/from16 v0, v33

    #@257
    move-object/from16 v1, v77

    #@259
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@25c
    .line 314
    .local v33, "dialerIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@25e
    move-object/from16 v1, v33

    #@260
    move/from16 v2, p1

    #@262
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@265
    move-result-object v34

    #@266
    .line 316
    .local v34, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_9

    #@268
    .line 317
    move-object/from16 v0, p0

    #@26a
    move-object/from16 v1, v34

    #@26c
    move/from16 v2, p1

    #@26e
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@271
    .line 329
    .end local v33    # "dialerIntent":Landroid/content/Intent;
    .end local v34    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_9
    if-eqz v61, :cond_15

    #@273
    .line 330
    const/16 v77, 0x0

    #@275
    move-object/from16 v0, v61

    #@277
    array-length v0, v0

    #@278
    move/from16 v79, v0

    #@27a
    :goto_8
    move/from16 v0, v77

    #@27c
    move/from16 v1, v79

    #@27e
    if-ge v0, v1, :cond_15

    #@280
    aget-object v60, v61, v77

    #@282
    .line 332
    .local v60, "simCallManagerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@284
    move-object/from16 v1, v60

    #@286
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@289
    move-result-object v59

    #@28a
    .line 333
    .local v59, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v59, :cond_a

    #@28c
    .line 334
    move-object/from16 v0, p0

    #@28e
    move-object/from16 v1, v59

    #@290
    move/from16 v2, p1

    #@292
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@295
    .line 330
    :cond_a
    add-int/lit8 v77, v77, 0x1

    #@297
    goto :goto_8

    #@298
    .line 206
    .end local v14    # "cameraIntent":Landroid/content/Intent;
    .end local v15    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v18    # "certInstallerIntent":Landroid/content/Intent;
    .end local v19    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v35    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v36    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v37    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v46    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v47    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v50    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v53    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "setupIntent":Landroid/content/Intent;
    .end local v58    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v59    # "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v60    # "simCallManagerPackageName":Ljava/lang/String;
    .end local v62    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v64    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .end local v68    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v69    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .end local v70    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v74    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :catchall_0
    move-exception v77

    #@299
    monitor-exit v78

    #@29a
    throw v77

    #@29b
    .line 217
    .restart local v32    # "dialerAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v46    # "imePackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v50    # "locationPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v62    # "simCallManagerPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v64    # "smsAppPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    .restart local v69    # "syncAdapterPackagesProvider":Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;
    .restart local v74    # "voiceInteractionPackagesProvider":Landroid/content/pm/PackageManagerInternal$PackagesProvider;
    :cond_b
    const/16 v45, 0x0

    #@29d
    .local v45, "imePackageNames":[Ljava/lang/String;
    goto/16 :goto_0

    #@29f
    .line 219
    .end local v45    # "imePackageNames":[Ljava/lang/String;
    :cond_c
    const/16 v73, 0x0

    #@2a1
    .local v73, "voiceInteractPackageNames":[Ljava/lang/String;
    goto/16 :goto_1

    #@2a3
    .line 221
    .end local v73    # "voiceInteractPackageNames":[Ljava/lang/String;
    :cond_d
    const/16 v49, 0x0

    #@2a5
    .local v49, "locationPackageNames":[Ljava/lang/String;
    goto/16 :goto_2

    #@2a7
    .line 223
    .end local v49    # "locationPackageNames":[Ljava/lang/String;
    :cond_e
    const/16 v63, 0x0

    #@2a9
    .local v63, "smsAppPackageNames":[Ljava/lang/String;
    goto/16 :goto_3

    #@2ab
    .line 225
    .end local v63    # "smsAppPackageNames":[Ljava/lang/String;
    :cond_f
    const/16 v31, 0x0

    #@2ad
    .local v31, "dialerAppPackageNames":[Ljava/lang/String;
    goto/16 :goto_4

    #@2af
    .line 227
    .end local v31    # "dialerAppPackageNames":[Ljava/lang/String;
    :cond_10
    const/16 v61, 0x0

    #@2b1
    .local v61, "simCallManagerPackageNames":[Ljava/lang/String;
    goto/16 :goto_5

    #@2b3
    .line 229
    .end local v61    # "simCallManagerPackageNames":[Ljava/lang/String;
    :cond_11
    const/16 v25, 0x0

    #@2b5
    .local v25, "contactsSyncAdapterPackages":[Ljava/lang/String;
    goto/16 :goto_6

    #@2b7
    .line 231
    .end local v25    # "contactsSyncAdapterPackages":[Ljava/lang/String;
    :cond_12
    const/4 v12, 0x0

    #@2b8
    .local v12, "calendarSyncAdapterPackages":[Ljava/lang/String;
    goto/16 :goto_7

    #@2ba
    .line 320
    .end local v12    # "calendarSyncAdapterPackages":[Ljava/lang/String;
    .restart local v14    # "cameraIntent":Landroid/content/Intent;
    .restart local v15    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "certInstallerIntent":Landroid/content/Intent;
    .restart local v19    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v35    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v36    # "downloadsUiIntent":Landroid/content/Intent;
    .restart local v37    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v47    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v53    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v57    # "setupIntent":Landroid/content/Intent;
    .restart local v58    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v68    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .restart local v70    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    :cond_13
    const/16 v77, 0x0

    #@2bc
    :try_start_2
    move-object/from16 v0, v31

    #@2be
    array-length v0, v0

    #@2bf
    move/from16 v79, v0

    #@2c1
    :goto_9
    move/from16 v0, v77

    #@2c3
    move/from16 v1, v79

    #@2c5
    if-ge v0, v1, :cond_9

    #@2c7
    aget-object v30, v31, v77

    #@2c9
    .line 321
    .local v30, "dialerAppPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2cb
    move-object/from16 v1, v30

    #@2cd
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@2d0
    move-result-object v34

    #@2d1
    .line 322
    .restart local v34    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v34, :cond_14

    #@2d3
    .line 323
    move-object/from16 v0, p0

    #@2d5
    move-object/from16 v1, v34

    #@2d7
    move/from16 v2, p1

    #@2d9
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@2dc
    .line 320
    :cond_14
    add-int/lit8 v77, v77, 0x1

    #@2de
    goto :goto_9

    #@2df
    .line 341
    .end local v30    # "dialerAppPackageName":Ljava/lang/String;
    .end local v34    # "dialerPackage":Landroid/content/pm/PackageParser$Package;
    :cond_15
    if-nez v63, :cond_1b

    #@2e1
    .line 342
    new-instance v65, Landroid/content/Intent;

    #@2e3
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@2e6
    move-object/from16 v0, v65

    #@2e8
    move-object/from16 v1, v77

    #@2ea
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2ed
    .line 343
    .local v65, "smsIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_MESSAGING"

    #@2f0
    move-object/from16 v0, v65

    #@2f2
    move-object/from16 v1, v77

    #@2f4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@2f7
    .line 344
    move-object/from16 v0, p0

    #@2f9
    move-object/from16 v1, v65

    #@2fb
    move/from16 v2, p1

    #@2fd
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@300
    move-result-object v66

    #@301
    .line 346
    .local v66, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v66, :cond_16

    #@303
    .line 347
    move-object/from16 v0, p0

    #@305
    move-object/from16 v1, v66

    #@307
    move/from16 v2, p1

    #@309
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@30c
    .line 359
    .end local v65    # "smsIntent":Landroid/content/Intent;
    .end local v66    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    :cond_16
    new-instance v16, Landroid/content/Intent;

    #@30e
    const-string/jumbo v77, "android.provider.Telephony.SMS_CB_RECEIVED"

    #@311
    move-object/from16 v0, v16

    #@313
    move-object/from16 v1, v77

    #@315
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@318
    .line 361
    .local v16, "cbrIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@31a
    move-object/from16 v1, v16

    #@31c
    move/from16 v2, p1

    #@31e
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@321
    move-result-object v17

    #@322
    .line 362
    .local v17, "cbrPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v17, :cond_17

    #@324
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@327
    move-result v77

    #@328
    if-eqz v77, :cond_17

    #@32a
    .line 363
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@32c
    const/16 v79, 0x0

    #@32e
    move-object/from16 v0, p0

    #@330
    move-object/from16 v1, v17

    #@332
    move-object/from16 v2, v77

    #@334
    move/from16 v3, v79

    #@336
    move/from16 v4, p1

    #@338
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@33b
    .line 367
    :cond_17
    new-instance v7, Landroid/content/Intent;

    #@33d
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@340
    move-object/from16 v0, v77

    #@342
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@345
    .line 368
    .local v7, "calendarIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_CALENDAR"

    #@348
    move-object/from16 v0, v77

    #@34a
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@34d
    .line 369
    move-object/from16 v0, p0

    #@34f
    move/from16 v1, p1

    #@351
    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@354
    move-result-object v8

    #@355
    .line 371
    .local v8, "calendarPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_18

    #@357
    .line 372
    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@35a
    move-result v77

    #@35b
    .line 371
    if-eqz v77, :cond_18

    #@35d
    .line 373
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@35f
    move-object/from16 v0, p0

    #@361
    move-object/from16 v1, v77

    #@363
    move/from16 v2, p1

    #@365
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@368
    .line 374
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@36a
    move-object/from16 v0, p0

    #@36c
    move-object/from16 v1, v77

    #@36e
    move/from16 v2, p1

    #@370
    invoke-direct {v0, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@373
    .line 379
    :cond_18
    const-string/jumbo v77, "com.android.calendar"

    #@376
    .line 378
    move-object/from16 v0, p0

    #@378
    move-object/from16 v1, v77

    #@37a
    move/from16 v2, p1

    #@37c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@37f
    move-result-object v9

    #@380
    .line 380
    .local v9, "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_19

    #@382
    .line 381
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@384
    move-object/from16 v0, p0

    #@386
    move-object/from16 v1, v77

    #@388
    move/from16 v2, p1

    #@38a
    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@38d
    .line 382
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@38f
    .line 383
    const/16 v79, 0x1

    #@391
    .line 382
    move-object/from16 v0, p0

    #@393
    move-object/from16 v1, v77

    #@395
    move/from16 v2, v79

    #@397
    move/from16 v3, p1

    #@399
    invoke-direct {v0, v9, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@39c
    .line 384
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@39e
    move-object/from16 v0, p0

    #@3a0
    move-object/from16 v1, v77

    #@3a2
    move/from16 v2, p1

    #@3a4
    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3a7
    .line 388
    :cond_19
    move-object/from16 v0, p0

    #@3a9
    move/from16 v1, p1

    #@3ab
    invoke-direct {v0, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    #@3ae
    move-result-object v13

    #@3af
    .line 390
    .local v13, "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@3b2
    move-result v11

    #@3b3
    .line 391
    .local v11, "calendarSyncAdapterCount":I
    const/16 v42, 0x0

    #@3b5
    .local v42, "i":I
    :goto_a
    move/from16 v0, v42

    #@3b7
    if-ge v0, v11, :cond_1d

    #@3b9
    .line 392
    move/from16 v0, v42

    #@3bb
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3be
    move-result-object v10

    #@3bf
    check-cast v10, Landroid/content/pm/PackageParser$Package;

    #@3c1
    .line 393
    .local v10, "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@3c4
    move-result v77

    #@3c5
    if-eqz v77, :cond_1a

    #@3c7
    .line 394
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@3c9
    move-object/from16 v0, p0

    #@3cb
    move-object/from16 v1, v77

    #@3cd
    move/from16 v2, p1

    #@3cf
    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3d2
    .line 391
    :cond_1a
    add-int/lit8 v42, v42, 0x1

    #@3d4
    goto :goto_a

    #@3d5
    .line 350
    .end local v7    # "calendarIntent":Landroid/content/Intent;
    .end local v8    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "calendarSyncAdapter":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "calendarSyncAdapterCount":I
    .end local v13    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v16    # "cbrIntent":Landroid/content/Intent;
    .end local v17    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v42    # "i":I
    :cond_1b
    const/16 v77, 0x0

    #@3d7
    move-object/from16 v0, v63

    #@3d9
    array-length v0, v0

    #@3da
    move/from16 v79, v0

    #@3dc
    :goto_b
    move/from16 v0, v77

    #@3de
    move/from16 v1, v79

    #@3e0
    if-ge v0, v1, :cond_16

    #@3e2
    aget-object v67, v63, v77

    #@3e4
    .line 351
    .local v67, "smsPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@3e6
    move-object/from16 v1, v67

    #@3e8
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@3eb
    move-result-object v66

    #@3ec
    .line 352
    .restart local v66    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v66, :cond_1c

    #@3ee
    .line 353
    move-object/from16 v0, p0

    #@3f0
    move-object/from16 v1, v66

    #@3f2
    move/from16 v2, p1

    #@3f4
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@3f7
    .line 350
    :cond_1c
    add-int/lit8 v77, v77, 0x1

    #@3f9
    goto :goto_b

    #@3fa
    .line 399
    .end local v66    # "smsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v67    # "smsPackageName":Ljava/lang/String;
    .restart local v7    # "calendarIntent":Landroid/content/Intent;
    .restart local v8    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v9    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v11    # "calendarSyncAdapterCount":I
    .restart local v13    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v16    # "cbrIntent":Landroid/content/Intent;
    .restart local v17    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .restart local v42    # "i":I
    :cond_1d
    new-instance v20, Landroid/content/Intent;

    #@3fc
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@3ff
    move-object/from16 v0, v20

    #@401
    move-object/from16 v1, v77

    #@403
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@406
    .line 400
    .local v20, "contactsIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_CONTACTS"

    #@409
    move-object/from16 v0, v20

    #@40b
    move-object/from16 v1, v77

    #@40d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@410
    .line 401
    move-object/from16 v0, p0

    #@412
    move-object/from16 v1, v20

    #@414
    move/from16 v2, p1

    #@416
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@419
    move-result-object v21

    #@41a
    .line 403
    .local v21, "contactsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v21, :cond_1e

    #@41c
    .line 404
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@41f
    move-result v77

    #@420
    .line 403
    if-eqz v77, :cond_1e

    #@422
    .line 405
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@424
    move-object/from16 v0, p0

    #@426
    move-object/from16 v1, v21

    #@428
    move-object/from16 v2, v77

    #@42a
    move/from16 v3, p1

    #@42c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@42f
    .line 406
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@431
    move-object/from16 v0, p0

    #@433
    move-object/from16 v1, v21

    #@435
    move-object/from16 v2, v77

    #@437
    move/from16 v3, p1

    #@439
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@43c
    .line 410
    :cond_1e
    move-object/from16 v0, p0

    #@43e
    move-object/from16 v1, v25

    #@440
    move/from16 v2, p1

    #@442
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    #@445
    move-result-object v26

    #@446
    .line 412
    .local v26, "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    #@449
    move-result v24

    #@44a
    .line 413
    .local v24, "contactsSyncAdapterCount":I
    const/16 v42, 0x0

    #@44c
    :goto_c
    move/from16 v0, v42

    #@44e
    move/from16 v1, v24

    #@450
    if-ge v0, v1, :cond_20

    #@452
    .line 414
    move-object/from16 v0, v26

    #@454
    move/from16 v1, v42

    #@456
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@459
    move-result-object v23

    #@45a
    check-cast v23, Landroid/content/pm/PackageParser$Package;

    #@45c
    .line 415
    .local v23, "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@45f
    move-result v77

    #@460
    if-eqz v77, :cond_1f

    #@462
    .line 416
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@464
    move-object/from16 v0, p0

    #@466
    move-object/from16 v1, v23

    #@468
    move-object/from16 v2, v77

    #@46a
    move/from16 v3, p1

    #@46c
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@46f
    .line 413
    :cond_1f
    add-int/lit8 v42, v42, 0x1

    #@471
    goto :goto_c

    #@472
    .line 422
    .end local v23    # "contactsSyncAdapter":Landroid/content/pm/PackageParser$Package;
    :cond_20
    const-string/jumbo v77, "com.android.contacts"

    #@475
    .line 421
    move-object/from16 v0, p0

    #@477
    move-object/from16 v1, v77

    #@479
    move/from16 v2, p1

    #@47b
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    #@47e
    move-result-object v22

    #@47f
    .line 423
    .local v22, "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v22, :cond_21

    #@481
    .line 424
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@483
    .line 425
    const/16 v79, 0x1

    #@485
    .line 424
    move-object/from16 v0, p0

    #@487
    move-object/from16 v1, v22

    #@489
    move-object/from16 v2, v77

    #@48b
    move/from16 v3, v79

    #@48d
    move/from16 v4, p1

    #@48f
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@492
    .line 426
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@494
    .line 427
    const/16 v79, 0x1

    #@496
    .line 426
    move-object/from16 v0, p0

    #@498
    move-object/from16 v1, v22

    #@49a
    move-object/from16 v2, v77

    #@49c
    move/from16 v3, v79

    #@49e
    move/from16 v4, p1

    #@4a0
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@4a3
    .line 428
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@4a5
    move-object/from16 v0, p0

    #@4a7
    move-object/from16 v1, v22

    #@4a9
    move-object/from16 v2, v77

    #@4ab
    move/from16 v3, p1

    #@4ad
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@4b0
    .line 432
    :cond_21
    new-instance v28, Landroid/content/Intent;

    #@4b2
    .line 433
    const-string/jumbo v77, "android.app.action.PROVISION_MANAGED_DEVICE"

    #@4b5
    .line 432
    move-object/from16 v0, v28

    #@4b7
    move-object/from16 v1, v77

    #@4b9
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4bc
    .line 435
    .local v28, "deviceProvisionIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@4be
    move-object/from16 v1, v28

    #@4c0
    move/from16 v2, p1

    #@4c2
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@4c5
    move-result-object v29

    #@4c6
    .line 436
    .local v29, "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v29, :cond_22

    #@4c8
    .line 437
    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@4cb
    move-result v77

    #@4cc
    .line 436
    if-eqz v77, :cond_22

    #@4ce
    .line 438
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@4d0
    move-object/from16 v0, p0

    #@4d2
    move-object/from16 v1, v29

    #@4d4
    move-object/from16 v2, v77

    #@4d6
    move/from16 v3, p1

    #@4d8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@4db
    .line 442
    :cond_22
    new-instance v51, Landroid/content/Intent;

    #@4dd
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@4e0
    move-object/from16 v0, v51

    #@4e2
    move-object/from16 v1, v77

    #@4e4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@4e7
    .line 443
    .local v51, "mapsIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_MAPS"

    #@4ea
    move-object/from16 v0, v51

    #@4ec
    move-object/from16 v1, v77

    #@4ee
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@4f1
    .line 444
    move-object/from16 v0, p0

    #@4f3
    move-object/from16 v1, v51

    #@4f5
    move/from16 v2, p1

    #@4f7
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@4fa
    move-result-object v52

    #@4fb
    .line 446
    .local v52, "mapsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v52, :cond_23

    #@4fd
    .line 447
    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@500
    move-result v77

    #@501
    .line 446
    if-eqz v77, :cond_23

    #@503
    .line 448
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@505
    move-object/from16 v0, p0

    #@507
    move-object/from16 v1, v52

    #@509
    move-object/from16 v2, v77

    #@50b
    move/from16 v3, p1

    #@50d
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@510
    .line 452
    :cond_23
    new-instance v40, Landroid/content/Intent;

    #@512
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@515
    move-object/from16 v0, v40

    #@517
    move-object/from16 v1, v77

    #@519
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@51c
    .line 453
    .local v40, "galleryIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_GALLERY"

    #@51f
    move-object/from16 v0, v40

    #@521
    move-object/from16 v1, v77

    #@523
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@526
    .line 454
    move-object/from16 v0, p0

    #@528
    move-object/from16 v1, v40

    #@52a
    move/from16 v2, p1

    #@52c
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@52f
    move-result-object v41

    #@530
    .line 456
    .local v41, "galleryPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v41, :cond_24

    #@532
    .line 457
    invoke-static/range {v41 .. v41}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@535
    move-result v77

    #@536
    .line 456
    if-eqz v77, :cond_24

    #@538
    .line 458
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@53a
    move-object/from16 v0, p0

    #@53c
    move-object/from16 v1, v41

    #@53e
    move-object/from16 v2, v77

    #@540
    move/from16 v3, p1

    #@542
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@545
    .line 462
    :cond_24
    new-instance v38, Landroid/content/Intent;

    #@547
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@54a
    move-object/from16 v0, v38

    #@54c
    move-object/from16 v1, v77

    #@54e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@551
    .line 463
    .local v38, "emailIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_EMAIL"

    #@554
    move-object/from16 v0, v38

    #@556
    move-object/from16 v1, v77

    #@558
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@55b
    .line 464
    move-object/from16 v0, p0

    #@55d
    move-object/from16 v1, v38

    #@55f
    move/from16 v2, p1

    #@561
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@564
    move-result-object v39

    #@565
    .line 466
    .local v39, "emailPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v39, :cond_25

    #@567
    .line 467
    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@56a
    move-result v77

    #@56b
    .line 466
    if-eqz v77, :cond_25

    #@56d
    .line 468
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@56f
    move-object/from16 v0, p0

    #@571
    move-object/from16 v1, v39

    #@573
    move-object/from16 v2, v77

    #@575
    move/from16 v3, p1

    #@577
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@57a
    .line 472
    :cond_25
    const/4 v6, 0x0

    #@57b
    .line 473
    .local v6, "browserPackage":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v0, p0

    #@57d
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@57f
    move-object/from16 v77, v0

    #@581
    move-object/from16 v0, v77

    #@583
    move/from16 v1, p1

    #@585
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    #@588
    move-result-object v27

    #@589
    .line 474
    .local v27, "defaultBrowserPackage":Ljava/lang/String;
    if-eqz v27, :cond_26

    #@58b
    .line 475
    move-object/from16 v0, p0

    #@58d
    move-object/from16 v1, v27

    #@58f
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@592
    move-result-object v6

    #@593
    .line 477
    .end local v6    # "browserPackage":Landroid/content/pm/PackageParser$Package;
    :cond_26
    if-nez v6, :cond_27

    #@595
    .line 478
    new-instance v5, Landroid/content/Intent;

    #@597
    const-string/jumbo v77, "android.intent.action.MAIN"

    #@59a
    move-object/from16 v0, v77

    #@59c
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@59f
    .line 479
    .local v5, "browserIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.APP_BROWSER"

    #@5a2
    move-object/from16 v0, v77

    #@5a4
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@5a7
    .line 480
    move-object/from16 v0, p0

    #@5a9
    move/from16 v1, p1

    #@5ab
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@5ae
    move-result-object v6

    #@5af
    .line 483
    .end local v5    # "browserIntent":Landroid/content/Intent;
    :cond_27
    if-eqz v6, :cond_28

    #@5b1
    .line 484
    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@5b4
    move-result v77

    #@5b5
    .line 483
    if-eqz v77, :cond_28

    #@5b7
    .line 485
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@5b9
    move-object/from16 v0, p0

    #@5bb
    move-object/from16 v1, v77

    #@5bd
    move/from16 v2, p1

    #@5bf
    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@5c2
    .line 489
    :cond_28
    if-eqz v45, :cond_2a

    #@5c4
    .line 490
    const/16 v77, 0x0

    #@5c6
    move-object/from16 v0, v45

    #@5c8
    array-length v0, v0

    #@5c9
    move/from16 v79, v0

    #@5cb
    :goto_d
    move/from16 v0, v77

    #@5cd
    move/from16 v1, v79

    #@5cf
    if-ge v0, v1, :cond_2a

    #@5d1
    aget-object v44, v45, v77

    #@5d3
    .line 491
    .local v44, "imePackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@5d5
    move-object/from16 v1, v44

    #@5d7
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@5da
    move-result-object v43

    #@5db
    .line 492
    .local v43, "imePackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v43, :cond_29

    #@5dd
    .line 493
    invoke-static/range {v43 .. v43}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@5e0
    move-result v80

    #@5e1
    .line 492
    if-eqz v80, :cond_29

    #@5e3
    .line 494
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@5e5
    move-object/from16 v0, p0

    #@5e7
    move-object/from16 v1, v43

    #@5e9
    move-object/from16 v2, v80

    #@5eb
    move/from16 v3, p1

    #@5ed
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@5f0
    .line 490
    :cond_29
    add-int/lit8 v77, v77, 0x1

    #@5f2
    goto :goto_d

    #@5f3
    .line 500
    .end local v43    # "imePackage":Landroid/content/pm/PackageParser$Package;
    .end local v44    # "imePackageName":Ljava/lang/String;
    :cond_2a
    if-eqz v73, :cond_2c

    #@5f5
    .line 501
    const/16 v77, 0x0

    #@5f7
    move-object/from16 v0, v73

    #@5f9
    array-length v0, v0

    #@5fa
    move/from16 v79, v0

    #@5fc
    :goto_e
    move/from16 v0, v77

    #@5fe
    move/from16 v1, v79

    #@600
    if-ge v0, v1, :cond_2c

    #@602
    aget-object v72, v73, v77

    #@604
    .line 502
    .local v72, "voiceInteractPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@606
    move-object/from16 v1, v72

    #@608
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@60b
    move-result-object v71

    #@60c
    .line 504
    .local v71, "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v71, :cond_2b

    #@60e
    .line 505
    invoke-static/range {v71 .. v71}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@611
    move-result v80

    #@612
    .line 504
    if-eqz v80, :cond_2b

    #@614
    .line 507
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@616
    .line 506
    move-object/from16 v0, p0

    #@618
    move-object/from16 v1, v71

    #@61a
    move-object/from16 v2, v80

    #@61c
    move/from16 v3, p1

    #@61e
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@621
    .line 509
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@623
    .line 508
    move-object/from16 v0, p0

    #@625
    move-object/from16 v1, v71

    #@627
    move-object/from16 v2, v80

    #@629
    move/from16 v3, p1

    #@62b
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@62e
    .line 511
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@630
    .line 510
    move-object/from16 v0, p0

    #@632
    move-object/from16 v1, v71

    #@634
    move-object/from16 v2, v80

    #@636
    move/from16 v3, p1

    #@638
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@63b
    .line 513
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@63d
    .line 512
    move-object/from16 v0, p0

    #@63f
    move-object/from16 v1, v71

    #@641
    move-object/from16 v2, v80

    #@643
    move/from16 v3, p1

    #@645
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@648
    .line 515
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@64a
    .line 514
    move-object/from16 v0, p0

    #@64c
    move-object/from16 v1, v71

    #@64e
    move-object/from16 v2, v80

    #@650
    move/from16 v3, p1

    #@652
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@655
    .line 517
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@657
    .line 516
    move-object/from16 v0, p0

    #@659
    move-object/from16 v1, v71

    #@65b
    move-object/from16 v2, v80

    #@65d
    move/from16 v3, p1

    #@65f
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@662
    .line 501
    :cond_2b
    add-int/lit8 v77, v77, 0x1

    #@664
    goto :goto_e

    #@665
    .line 523
    .end local v71    # "voiceInteractPackage":Landroid/content/pm/PackageParser$Package;
    .end local v72    # "voiceInteractPackageName":Ljava/lang/String;
    :cond_2c
    new-instance v75, Landroid/content/Intent;

    #@667
    const-string/jumbo v77, "android.speech.RecognitionService"

    #@66a
    move-object/from16 v0, v75

    #@66c
    move-object/from16 v1, v77

    #@66e
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@671
    .line 524
    .local v75, "voiceRecoIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.DEFAULT"

    #@674
    move-object/from16 v0, v75

    #@676
    move-object/from16 v1, v77

    #@678
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@67b
    .line 525
    move-object/from16 v0, p0

    #@67d
    move-object/from16 v1, v75

    #@67f
    move/from16 v2, p1

    #@681
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@684
    move-result-object v76

    #@685
    .line 527
    .local v76, "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v76, :cond_2d

    #@687
    .line 528
    invoke-static/range {v76 .. v76}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@68a
    move-result v77

    #@68b
    .line 527
    if-eqz v77, :cond_2d

    #@68d
    .line 529
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@68f
    move-object/from16 v0, p0

    #@691
    move-object/from16 v1, v76

    #@693
    move-object/from16 v2, v77

    #@695
    move/from16 v3, p1

    #@697
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@69a
    .line 533
    :cond_2d
    if-eqz v49, :cond_2f

    #@69c
    .line 534
    const/16 v77, 0x0

    #@69e
    move-object/from16 v0, v49

    #@6a0
    array-length v0, v0

    #@6a1
    move/from16 v79, v0

    #@6a3
    :goto_f
    move/from16 v0, v77

    #@6a5
    move/from16 v1, v79

    #@6a7
    if-ge v0, v1, :cond_2f

    #@6a9
    aget-object v56, v49, v77

    #@6ab
    .line 535
    .local v56, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6ad
    move-object/from16 v1, v56

    #@6af
    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@6b2
    move-result-object v48

    #@6b3
    .line 536
    .local v48, "locationPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v48, :cond_2e

    #@6b5
    .line 537
    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@6b8
    move-result v80

    #@6b9
    .line 536
    if-eqz v80, :cond_2e

    #@6bb
    .line 538
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@6bd
    move-object/from16 v0, p0

    #@6bf
    move-object/from16 v1, v48

    #@6c1
    move-object/from16 v2, v80

    #@6c3
    move/from16 v3, p1

    #@6c5
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6c8
    .line 539
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    #@6ca
    move-object/from16 v0, p0

    #@6cc
    move-object/from16 v1, v48

    #@6ce
    move-object/from16 v2, v80

    #@6d0
    move/from16 v3, p1

    #@6d2
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6d5
    .line 540
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@6d7
    move-object/from16 v0, p0

    #@6d9
    move-object/from16 v1, v48

    #@6db
    move-object/from16 v2, v80

    #@6dd
    move/from16 v3, p1

    #@6df
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6e2
    .line 541
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@6e4
    move-object/from16 v0, p0

    #@6e6
    move-object/from16 v1, v48

    #@6e8
    move-object/from16 v2, v80

    #@6ea
    move/from16 v3, p1

    #@6ec
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6ef
    .line 542
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@6f1
    move-object/from16 v0, p0

    #@6f3
    move-object/from16 v1, v48

    #@6f5
    move-object/from16 v2, v80

    #@6f7
    move/from16 v3, p1

    #@6f9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@6fc
    .line 543
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@6fe
    .line 544
    const/16 v81, 0x1

    #@700
    .line 543
    move-object/from16 v0, p0

    #@702
    move-object/from16 v1, v48

    #@704
    move-object/from16 v2, v80

    #@706
    move/from16 v3, v81

    #@708
    move/from16 v4, p1

    #@70a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    #@70d
    .line 545
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    #@70f
    move-object/from16 v0, p0

    #@711
    move-object/from16 v1, v48

    #@713
    move-object/from16 v2, v80

    #@715
    move/from16 v3, p1

    #@717
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@71a
    .line 546
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    #@71c
    move-object/from16 v0, p0

    #@71e
    move-object/from16 v1, v48

    #@720
    move-object/from16 v2, v80

    #@722
    move/from16 v3, p1

    #@724
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@727
    .line 547
    sget-object v80, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@729
    move-object/from16 v0, p0

    #@72b
    move-object/from16 v1, v48

    #@72d
    move-object/from16 v2, v80

    #@72f
    move/from16 v3, p1

    #@731
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@734
    .line 534
    :cond_2e
    add-int/lit8 v77, v77, 0x1

    #@736
    goto/16 :goto_f

    #@738
    .line 553
    .end local v48    # "locationPackage":Landroid/content/pm/PackageParser$Package;
    .end local v56    # "packageName":Ljava/lang/String;
    :cond_2f
    new-instance v54, Landroid/content/Intent;

    #@73a
    const-string/jumbo v77, "android.intent.action.VIEW"

    #@73d
    move-object/from16 v0, v54

    #@73f
    move-object/from16 v1, v77

    #@741
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@744
    .line 554
    .local v54, "musicIntent":Landroid/content/Intent;
    const-string/jumbo v77, "android.intent.category.DEFAULT"

    #@747
    move-object/from16 v0, v54

    #@749
    move-object/from16 v1, v77

    #@74b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@74e
    .line 555
    new-instance v77, Ljava/io/File;

    #@750
    const-string/jumbo v79, "foo.mp3"

    #@753
    move-object/from16 v0, v77

    #@755
    move-object/from16 v1, v79

    #@757
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@75a
    invoke-static/range {v77 .. v77}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@75d
    move-result-object v77

    #@75e
    .line 556
    const-string/jumbo v79, "audio/mpeg"

    #@761
    .line 555
    move-object/from16 v0, v54

    #@763
    move-object/from16 v1, v77

    #@765
    move-object/from16 v2, v79

    #@767
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@76a
    .line 557
    move-object/from16 v0, p0

    #@76c
    move-object/from16 v1, v54

    #@76e
    move/from16 v2, p1

    #@770
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    #@773
    move-result-object v55

    #@774
    .line 559
    .local v55, "musicPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v55, :cond_30

    #@776
    .line 560
    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@779
    move-result v77

    #@77a
    .line 559
    if-eqz v77, :cond_30

    #@77c
    .line 561
    sget-object v77, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    #@77e
    move-object/from16 v0, p0

    #@780
    move-object/from16 v1, v55

    #@782
    move-object/from16 v2, v77

    #@784
    move/from16 v3, p1

    #@786
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@789
    .line 564
    :cond_30
    move-object/from16 v0, p0

    #@78b
    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@78d
    move-object/from16 v77, v0

    #@78f
    move-object/from16 v0, v77

    #@791
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@793
    move-object/from16 v77, v0

    #@795
    move-object/from16 v0, v77

    #@797
    move/from16 v1, p1

    #@799
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@79c
    monitor-exit v78

    #@79d
    .line 195
    return-void

    #@79e
    .line 233
    .end local v7    # "calendarIntent":Landroid/content/Intent;
    .end local v8    # "calendarPackage":Landroid/content/pm/PackageParser$Package;
    .end local v9    # "calendarProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "calendarSyncAdapterCount":I
    .end local v13    # "calendarSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v14    # "cameraIntent":Landroid/content/Intent;
    .end local v15    # "cameraPackage":Landroid/content/pm/PackageParser$Package;
    .end local v16    # "cbrIntent":Landroid/content/Intent;
    .end local v17    # "cbrPackage":Landroid/content/pm/PackageParser$Package;
    .end local v18    # "certInstallerIntent":Landroid/content/Intent;
    .end local v19    # "certInstallerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v20    # "contactsIntent":Landroid/content/Intent;
    .end local v21    # "contactsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v22    # "contactsProviderPackage":Landroid/content/pm/PackageParser$Package;
    .end local v24    # "contactsSyncAdapterCount":I
    .end local v26    # "contactsSyncAdapters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v27    # "defaultBrowserPackage":Ljava/lang/String;
    .end local v28    # "deviceProvisionIntent":Landroid/content/Intent;
    .end local v29    # "deviceProvisionPackage":Landroid/content/pm/PackageParser$Package;
    .end local v35    # "downloadsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v36    # "downloadsUiIntent":Landroid/content/Intent;
    .end local v37    # "downloadsUiPackage":Landroid/content/pm/PackageParser$Package;
    .end local v38    # "emailIntent":Landroid/content/Intent;
    .end local v39    # "emailPackage":Landroid/content/pm/PackageParser$Package;
    .end local v40    # "galleryIntent":Landroid/content/Intent;
    .end local v41    # "galleryPackage":Landroid/content/pm/PackageParser$Package;
    .end local v42    # "i":I
    .end local v47    # "installerPackage":Landroid/content/pm/PackageParser$Package;
    .end local v51    # "mapsIntent":Landroid/content/Intent;
    .end local v52    # "mapsPackage":Landroid/content/pm/PackageParser$Package;
    .end local v53    # "mediaStorePackage":Landroid/content/pm/PackageParser$Package;
    .end local v54    # "musicIntent":Landroid/content/Intent;
    .end local v55    # "musicPackage":Landroid/content/pm/PackageParser$Package;
    .end local v57    # "setupIntent":Landroid/content/Intent;
    .end local v58    # "setupPackage":Landroid/content/pm/PackageParser$Package;
    .end local v68    # "storagePackage":Landroid/content/pm/PackageParser$Package;
    .end local v70    # "verifierPackage":Landroid/content/pm/PackageParser$Package;
    .end local v75    # "voiceRecoIntent":Landroid/content/Intent;
    .end local v76    # "voiceRecoPackage":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v77

    #@79f
    monitor-exit v78

    #@7a0
    throw v77
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 170
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
    .line 172
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@1c
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    #@1e
    monitor-enter v8

    #@1f
    .line 173
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
    .line 174
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_0

    #@3d
    .line 175
    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_0

    #@43
    .line 176
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@48
    move-result v7

    #@49
    .line 174
    if-nez v7, :cond_0

    #@4b
    .line 179
    new-instance v4, Landroid/util/ArraySet;

    #@4d
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    #@50
    .line 180
    .local v4, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@55
    move-result v3

    #@56
    .line 181
    .local v3, "permissionCount":I
    const/4 v1, 0x0

    #@57
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    #@59
    .line 182
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Ljava/lang/String;

    #@61
    .line 183
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
    .line 184
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_1

    #@6f
    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    #@72
    move-result v7

    #@73
    if-eqz v7, :cond_1

    #@75
    .line 185
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@78
    .line 181
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@7a
    goto :goto_1

    #@7b
    .line 188
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "permission":Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    #@7e
    move-result v7

    #@7f
    if-nez v7, :cond_0

    #@81
    .line 189
    const/4 v7, 0x1

    #@82
    invoke-direct {p0, v5, v4, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    goto :goto_0

    #@86
    .line 172
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
    .line 169
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
    .line 753
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@9
    .line 752
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
    .line 758
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
    .line 757
    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "systemFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
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
    .line 763
    .local p2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 764
    return-void

    #@9
    .line 767
    :cond_0
    iget-object v12, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@b
    .line 768
    .local v12, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    #@c
    .line 770
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    .line 771
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@14
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    #@16
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    #@1b
    move-result-object v13

    #@1c
    .line 772
    .local v13, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_2

    #@1e
    .line 773
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@20
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 774
    return-void

    #@29
    .line 776
    :cond_1
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@2b
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@2d
    invoke-interface {v12, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_2

    #@33
    .line 777
    new-instance v10, Landroid/util/ArraySet;

    #@35
    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v10, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    #@38
    .line 778
    .local v10, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@3a
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    #@3c
    .line 783
    .end local v10    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "sysPs":Lcom/android/server/pm/PackageSetting;
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    #@3f
    move-result v9

    #@40
    .line 784
    .local v9, "grantablePermissionCount":I
    const/4 v11, 0x0

    #@41
    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_8

    #@43
    .line 785
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Ljava/lang/String;

    #@49
    .line 789
    .local v2, "permission":Ljava/lang/String;
    if-eqz v10, :cond_3

    #@4b
    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_5

    #@51
    .line 793
    :cond_3
    move-object/from16 v0, p2

    #@53
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_5

    #@59
    .line 794
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@5b
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@5d
    move/from16 v0, p5

    #@5f
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    #@62
    move-result v8

    #@63
    .line 802
    .local v8, "flags":I
    if-eqz v8, :cond_4

    #@65
    if-eqz p4, :cond_5

    #@67
    .line 804
    :cond_4
    const/16 v7, 0x14

    #@69
    .line 806
    .local v7, "fixedFlags":I
    and-int/lit8 v1, v8, 0x14

    #@6b
    if-eqz v1, :cond_6

    #@6d
    .line 784
    .end local v7    # "fixedFlags":I
    .end local v8    # "flags":I
    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 810
    .restart local v7    # "fixedFlags":I
    .restart local v8    # "flags":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@72
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@74
    move/from16 v0, p5

    #@76
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    #@79
    .line 816
    const/16 v4, 0x20

    #@7b
    .line 817
    .local v4, "newFlags":I
    if-eqz p3, :cond_7

    #@7d
    .line 818
    const/16 v4, 0x30

    #@7f
    .line 821
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@81
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@83
    move v5, v4

    #@84
    move/from16 v6, p5

    #@86
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    #@89
    goto :goto_1

    #@8a
    .line 762
    .end local v2    # "permission":Ljava/lang/String;
    .end local v4    # "newFlags":I
    .end local v7    # "fixedFlags":I
    .end local v8    # "flags":I
    :cond_8
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
    .line 829
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
    .line 830
    return v1

    #@f
    .line 832
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    .line 833
    return v2

    #@16
    .line 835
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
    .line 836
    .local v0, "sysPkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    #@22
    .line 837
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    #@24
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@26
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@28
    and-int/lit8 v3, v3, 0x8

    #@2a
    if-nez v3, :cond_3

    #@2c
    .line 838
    return v2

    #@2d
    .line 840
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2f
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@31
    and-int/lit8 v3, v3, 0x8

    #@33
    if-nez v3, :cond_3

    #@35
    .line 841
    return v2

    #@36
    .line 843
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    #@38
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    #@3a
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@3c
    .line 844
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    #@3e
    .line 843
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_4

    #@44
    :goto_0
    return v1

    #@45
    :cond_4
    move v1, v2

    #@46
    goto :goto_0
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    #@3
    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    #@6
    .line 164
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
    .line 653
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
    .line 654
    if-nez p1, :cond_0

    #@1d
    .line 655
    return-void

    #@1e
    .line 657
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@21
    move-result-object v1

    #@22
    .line 658
    .local v1, "browserPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@24
    .line 659
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@27
    move-result v0

    #@28
    .line 658
    if-eqz v0, :cond_1

    #@2a
    .line 660
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
    .line 652
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
    .line 603
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
    .line 604
    if-nez p1, :cond_0

    #@1e
    .line 605
    return-void

    #@1f
    .line 607
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@22
    move-result-object v1

    #@23
    .line 608
    .local v1, "dialerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@25
    .line 609
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@28
    move-result v0

    #@29
    .line 608
    if-eqz v0, :cond_1

    #@2b
    .line 610
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@2d
    move-object v0, p0

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 611
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@34
    move-object v0, p0

    #@35
    move v5, p2

    #@36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@39
    .line 612
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    move-object v0, p0

    #@3c
    move v5, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@40
    .line 613
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    #@42
    move-object v0, p0

    #@43
    move v5, p2

    #@44
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@47
    .line 602
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 627
    if-nez p1, :cond_0

    #@2
    .line 628
    return-void

    #@3
    .line 630
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@6
    move-result-object v0

    #@7
    .line 631
    .local v0, "simCallManagerPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@9
    .line 632
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    #@c
    .line 626
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
    .line 590
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
    .line 591
    if-nez p1, :cond_0

    #@1e
    .line 592
    return-void

    #@1f
    .line 594
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@22
    move-result-object v1

    #@23
    .line 595
    .local v1, "smsPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1

    #@25
    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 596
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@2d
    move-object v0, p0

    #@2e
    move v5, p2

    #@2f
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@32
    .line 597
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    #@34
    move-object v0, p0

    #@35
    move v5, p2

    #@36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@39
    .line 598
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    move-object v0, p0

    #@3c
    move v5, p2

    #@3d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    #@40
    .line 589
    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 637
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
    .line 638
    if-nez p1, :cond_0

    #@1c
    .line 639
    return-void

    #@1d
    .line 641
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
    .line 642
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    #@26
    move-result-object v0

    #@27
    .line 643
    .local v0, "carrierPackage":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    #@29
    .line 644
    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    #@2c
    move-result v4

    #@2d
    .line 643
    if-eqz v4, :cond_1

    #@2f
    .line 645
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    #@31
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@34
    .line 646
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    #@36
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@39
    .line 647
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    #@3b
    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    #@3e
    .line 641
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_0

    #@41
    .line 636
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
    .line 153
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 152
    return-void
.end method

.method public setImePackagesProviderLPr(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 136
    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 140
    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 156
    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 148
    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    #@2
    .line 160
    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0
    .param p1, "provider"    # Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@0
    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    #@2
    .line 144
    return-void
.end method
