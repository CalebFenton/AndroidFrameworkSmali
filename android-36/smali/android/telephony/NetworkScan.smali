.class public Landroid/telephony/NetworkScan;
.super Ljava/lang/Object;
.source "NetworkScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkScan$ScanErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INTERRUPTED:I = 0x2712

.field public static final whitelist ERROR_INVALID_SCAN:I = 0x2

.field public static final whitelist ERROR_INVALID_SCANID:I = 0x2711

.field public static final whitelist ERROR_MODEM_ERROR:I = 0x1

.field public static final whitelist ERROR_MODEM_UNAVAILABLE:I = 0x3

.field public static final whitelist ERROR_RADIO_INTERFACE_ERROR:I = 0x2710

.field public static final whitelist ERROR_UNSUPPORTED:I = 0x4

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkScan"


# instance fields
.field private final greylist-max-o mScanId:I

.field private final greylist-max-o mSubId:I


# direct methods
.method public constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "scanId"    # I
    .param p2, "subId"    # I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Landroid/telephony/NetworkScan;->mScanId:I

    .line 145
    iput p2, p0, Landroid/telephony/NetworkScan;->mSubId:I

    .line 146
    return-void
.end method

.method private greylist-max-o getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 151
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public greylist stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/NetworkScan;->stopScan()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 133
    nop

    .line 134
    return-void

    .line 131
    :catch_5
    move-exception v0

    .line 132
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop the network scan with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist stopScan()V
    .registers 6

    .line 108
    invoke-direct {p0}, Landroid/telephony/NetworkScan;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 109
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const-string v1, "NetworkScan"

    if-nez v0, :cond_d

    .line 110
    const-string v2, "Failed to get the ITelephony instance."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_d
    :try_start_d
    iget v2, p0, Landroid/telephony/NetworkScan;->mSubId:I

    iget v3, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->stopNetworkScan(II)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_3f

    .line 118
    :catch_15
    move-exception v2

    .line 119
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "stopNetworkScan  RuntimeException"

    invoke-static {v1, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 116
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v2

    .line 117
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "stopNetworkScan  RemoteException"

    invoke-static {v1, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_3f

    .line 114
    :catch_25
    move-exception v2

    .line 115
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopNetworkScan - no active scan for ScanID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_3f
    nop

    .line 121
    :goto_40
    return-void
.end method
