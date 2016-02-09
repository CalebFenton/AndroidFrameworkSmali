.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "errMsg"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/fingerprint/IFingerprintService;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 171
    new-instance v0, Landroid/os/Binder;

    #@6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@9
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@b
    .line 862
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$1;

    #@d
    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    #@10
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@12
    .line 767
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@14
    .line 768
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@16
    .line 769
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 770
    const-string/jumbo v0, "FingerprintManager"

    #@1d
    const-string/jumbo v1, "FingerprintManagerService was null"

    #@20
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 772
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    #@25
    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    #@28
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    #@2a
    .line 766
    return-void
.end method

.method private cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@0
    .prologue
    .line 793
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 794
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@6
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@8
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 792
    :cond_0
    :goto_0
    return-void

    #@12
    .line 795
    :catch_0
    move-exception v0

    #@13
    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@16
    const-string/jumbo v2, "Remote exception while canceling enrollment"

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    #@0
    .prologue
    .line 785
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 786
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@6
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@8
    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 784
    :cond_0
    :goto_0
    return-void

    #@c
    .line 787
    :catch_0
    move-exception v0

    #@d
    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@10
    const-string/jumbo v2, "Remote exception while canceling enrollment"

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 5
    .param p1, "acquireInfo"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 831
    packed-switch p1, :pswitch_data_0

    #@4
    .line 850
    const/16 v2, 0x3e8

    #@6
    if-lt p1, v2, :cond_0

    #@8
    .line 851
    add-int/lit16 v1, p1, -0x3e8

    #@a
    .line 852
    .local v1, "msgNumber":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v2

    #@10
    .line 853
    const v3, 0x107004b

    #@13
    .line 852
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    .line 854
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v2, v0

    #@18
    if-ge v1, v2, :cond_0

    #@1a
    .line 855
    aget-object v2, v0, v1

    #@1c
    return-object v2

    #@1d
    .line 833
    .end local v0    # "msgArray":[Ljava/lang/String;
    .end local v1    # "msgNumber":I
    :pswitch_0
    return-object v4

    #@1e
    .line 835
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@20
    .line 836
    const v3, 0x10401b6

    #@23
    .line 835
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    return-object v2

    #@28
    .line 838
    :pswitch_2
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@2a
    .line 839
    const v3, 0x10401b7

    #@2d
    .line 838
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    return-object v2

    #@32
    .line 841
    :pswitch_3
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@34
    .line 842
    const v3, 0x10401b8

    #@37
    .line 841
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    return-object v2

    #@3c
    .line 844
    :pswitch_4
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@3e
    .line 845
    const v3, 0x10401ba

    #@41
    .line 844
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    return-object v2

    #@46
    .line 847
    :pswitch_5
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@48
    .line 848
    const v3, 0x10401b9

    #@4b
    .line 847
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    return-object v2

    #@50
    .line 858
    :cond_0
    return-object v4

    #@51
    .line 831
    nop

    #@52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    #@0
    .prologue
    .line 777
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    #@7
    move-result-object v1

    #@8
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return v1

    #@b
    .line 778
    :catch_0
    move-exception v0

    #@c
    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@f
    const-string/jumbo v2, "Failed to get current user id\n"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 780
    const/16 v1, -0x2710

    #@17
    return v1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 4
    .param p1, "errMsg"    # I

    #@0
    .prologue
    .line 801
    packed-switch p1, :pswitch_data_0

    #@3
    .line 818
    :pswitch_0
    const/16 v2, 0x3e8

    #@5
    if-lt p1, v2, :cond_0

    #@7
    .line 819
    add-int/lit16 v1, p1, -0x3e8

    #@9
    .line 820
    .local v1, "msgNumber":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v2

    #@f
    .line 821
    const v3, 0x107004c

    #@12
    .line 820
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 822
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v2, v0

    #@17
    if-ge v1, v2, :cond_0

    #@19
    .line 823
    aget-object v2, v0, v1

    #@1b
    return-object v2

    #@1c
    .line 803
    .end local v0    # "msgArray":[Ljava/lang/String;
    .end local v1    # "msgNumber":I
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@1e
    .line 804
    const v3, 0x10401c0

    #@21
    .line 803
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 806
    :pswitch_2
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@28
    .line 807
    const v3, 0x10401bb

    #@2b
    .line 806
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 809
    :pswitch_3
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@32
    .line 810
    const v3, 0x10401bc

    #@35
    .line 809
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 812
    :pswitch_4
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@3c
    const v3, 0x10401bd

    #@3f
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    return-object v2

    #@44
    .line 814
    :pswitch_5
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@46
    const v3, 0x10401be

    #@49
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    return-object v2

    #@4e
    .line 816
    :pswitch_6
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@50
    const v3, 0x10401bf

    #@53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 826
    :cond_0
    const/4 v2, 0x0

    #@59
    return-object v2

    #@5a
    .line 801
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 424
    if-eqz p1, :cond_1

    #@3
    .line 425
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    #@5
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    #@c
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    #@e
    .line 423
    :cond_0
    :goto_0
    return-void

    #@f
    .line 426
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@17
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1a
    move-result-object v1

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    .line 427
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    #@1f
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    #@28
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    #@2a
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 416
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v6

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    #@d
    .line 415
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 9
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 438
    if-nez p4, :cond_0

    #@2
    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Must supply an authentication callback"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 442
    :cond_0
    if-eqz p2, :cond_2

    #@d
    .line 443
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 444
    const-string/jumbo v0, "FingerprintManager"

    #@16
    const-string/jumbo v1, "authentication already canceled"

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 445
    return-void

    #@1d
    .line 447
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    #@1f
    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    #@22
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@25
    .line 451
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 452
    :try_start_0
    invoke-direct {p0, p5}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    #@2c
    .line 453
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    #@2e
    .line 454
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    #@30
    .line 455
    if-eqz p1, :cond_4

    #@32
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    #@35
    move-result-wide v2

    #@36
    .line 456
    .local v2, "sessionId":J
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@38
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@3a
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@3c
    .line 457
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@3e
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    move v4, p6

    #@43
    move v6, p3

    #@44
    .line 456
    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 437
    .end local v2    # "sessionId":J
    :cond_3
    :goto_1
    return-void

    #@48
    .line 455
    :cond_4
    const-wide/16 v2, 0x0

    #@4a
    .restart local v2    # "sessionId":J
    goto :goto_0

    #@4b
    .line 458
    .end local v2    # "sessionId":J
    :catch_0
    move-exception v8

    #@4c
    .line 459
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    #@4f
    const-string/jumbo v1, "Remote exception while authenticating: "

    #@52
    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    .line 460
    if-eqz p4, :cond_3

    #@57
    .line 464
    const/4 v0, 0x1

    #@58
    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 463
    const/4 v1, 0x1

    #@5d
    invoke-virtual {p4, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    #@60
    goto :goto_1
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 8
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 487
    if-nez p4, :cond_0

    #@4
    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Must supply an enrollment callback"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 491
    :cond_0
    if-eqz p2, :cond_2

    #@f
    .line 492
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 493
    const-string/jumbo v0, "FingerprintManager"

    #@18
    const-string/jumbo v1, "enrollment already canceled"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 494
    return-void

    #@1f
    .line 496
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    #@21
    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;)V

    #@24
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    #@27
    .line 500
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 501
    :try_start_0
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    #@2d
    .line 502
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2f
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@31
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    #@34
    move-result v3

    #@35
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@37
    move-object v2, p1

    #@38
    move v5, p3

    #@39
    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 486
    :cond_3
    :goto_0
    return-void

    #@3d
    .line 503
    :catch_0
    move-exception v6

    #@3e
    .line 504
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    #@41
    const-string/jumbo v1, "Remote exception in enroll: "

    #@44
    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    .line 505
    if-eqz p4, :cond_3

    #@49
    .line 509
    invoke-direct {p0, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    .line 508
    invoke-virtual {p4, v7, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    #@50
    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 4

    #@0
    .prologue
    .line 659
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 661
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@6
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-wide v2

    #@10
    return-wide v2

    #@11
    .line 662
    :catch_0
    move-exception v0

    #@12
    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@15
    const-string/jumbo v2, "Remote exception in getAuthenticatorId(): "

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 668
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-wide/16 v2, 0x0

    #@1d
    return-wide v2

    #@1e
    .line 666
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    #@21
    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    goto :goto_0
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 613
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 597
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 598
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@7
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 599
    :catch_0
    move-exception v0

    #@13
    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@16
    const-string/jumbo v2, "Remote exception in getEnrolledFingerprints: "

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4

    #@0
    .prologue
    .line 623
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 624
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@9
    move-result v2

    #@a
    .line 625
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 624
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 626
    :catch_0
    move-exception v0

    #@16
    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@19
    const-string/jumbo v2, "Remote exception in getEnrolledFingerprints: "

    #@1c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f
    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@20
    return v1
.end method

.method public isHardwareDetected()Z
    .locals 5

    #@0
    .prologue
    .line 639
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 641
    const-wide/16 v0, 0x0

    #@6
    .line 642
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@8
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-interface {v3, v0, v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v3

    #@12
    return v3

    #@13
    .line 643
    :catch_0
    move-exception v2

    #@14
    .line 644
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintManager"

    #@17
    const-string/jumbo v4, "Remote exception in isFingerprintHardwareDetected(): "

    #@1a
    invoke-static {v3, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 649
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, 0x0

    #@1e
    return v3

    #@1f
    .line 647
    :cond_0
    const-string/jumbo v3, "FingerprintManager"

    #@22
    const-string/jumbo v4, "isFingerprintHardwareDetected(): Service not connected!"

    #@25
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    goto :goto_0
.end method

.method public postEnroll()I
    .locals 4

    #@0
    .prologue
    .line 536
    const/4 v1, 0x0

    #@1
    .line 537
    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 538
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@7
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@9
    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result v1

    #@d
    .line 542
    :cond_0
    :goto_0
    return v1

    #@e
    .line 539
    :catch_0
    move-exception v0

    #@f
    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintManager"

    #@12
    const-string/jumbo v3, "Remote exception in post enroll: "

    #@15
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method

.method public preEnroll()J
    .locals 5

    #@0
    .prologue
    .line 521
    const-wide/16 v2, 0x0

    #@2
    .line 522
    .local v2, "result":J
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@8
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@a
    invoke-interface {v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-wide v2

    #@e
    .line 527
    :cond_0
    :goto_0
    return-wide v2

    #@f
    .line 524
    :catch_0
    move-exception v0

    #@10
    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@13
    const-string/jumbo v4, "Remote exception in enroll: "

    #@16
    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_0
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 7
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 555
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 556
    :try_start_0
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    #@7
    .line 557
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    #@9
    .line 558
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@b
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    #@d
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    #@10
    move-result v3

    #@11
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    #@14
    move-result v4

    #@15
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    #@17
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 554
    :cond_0
    :goto_0
    return-void

    #@1b
    .line 559
    :catch_0
    move-exception v0

    #@1c
    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@1f
    const-string/jumbo v2, "Remote exception in remove: "

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    .line 561
    if-eqz p2, :cond_0

    #@27
    .line 563
    invoke-direct {p0, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 562
    invoke-virtual {p2, p1, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    #@2e
    goto :goto_0
.end method

.method public rename(ILjava/lang/String;)V
    .locals 3
    .param p1, "fpId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 578
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 580
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    #@6
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    #@9
    move-result v2

    #@a
    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 576
    :goto_0
    return-void

    #@e
    .line 581
    :catch_0
    move-exception v0

    #@f
    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintManager"

    #@12
    const-string/jumbo v2, "Remote exception in rename(): "

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0

    #@19
    .line 585
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    #@1c
    const-string/jumbo v2, "rename(): Service not connected!"

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_0
.end method
