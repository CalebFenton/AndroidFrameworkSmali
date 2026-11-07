.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;,
        Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field private static final blacklist ACTION_EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS:Ljava/lang/String; = "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

.field public static final greylist-max-o BLOCK_MAP_FILE:Ljava/io/File;

.field private static final greylist-max-o DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final blacklist DEFAULT_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0xafc8L

.field private static final greylist-max-o DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final blacklist LAST_INSTALL_PATH:Ljava/lang/String; = "last_install"

.field private static final greylist-max-o LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final greylist-max-o LOG_FILE:Ljava/io/File;

.field private static final greylist-max-o LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final greylist-max-o MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final blacklist MAX_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x15f90L

.field private static final greylist-max-o MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final blacklist MIN_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final blacklist PACKAGE_NAME_EUICC_DATA_MANAGEMENT_CALLBACK:Ljava/lang/String; = "android"

.field private static final greylist-max-o PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final greylist-max-o RECOVERY_DIR:Ljava/io/File;

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_INVALID_PACKAGE_NAME:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_LSKF_NOT_CAPTURED:I = 0xbb8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESUME_ON_REBOOT_REBOOT_ERROR_NONE:I = 0x0

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_PROVIDER_PREPARATION_FAILURE:I = 0x1388
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_SLOT_MISMATCH:I = 0xfa0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_UNSPECIFIED:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final greylist-max-o UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final greylist-max-o UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final greylist-max-o sRequestLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 107
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 108
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 137
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 145
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 1536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1538
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IRecoverySystem;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1545
    return-void
.end method

.method private blacklist allocateSpaceForUpdate(Ljava/io/File;)Z
    .registers 4
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1423
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IRecoverySystem;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static varargs blacklist bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1302
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    .local v0, "command":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    .line 1306
    .local v3, "arg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1314
    :cond_21
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 1315
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 1317
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist cancelScheduledUpdate(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 863
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 866
    return-void

    .line 864
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o clearBcb()Z
    .registers 2

    .line 1431
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1432
    :catch_7
    move-exception v0

    .line 1434
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist clearLskf(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1474
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1475
    :catch_7
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not clear LSKF"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist clearPrepareForUnattendedUpdate(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 737
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 740
    return-void

    .line 738
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reset unattended update state"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .registers 8
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 235
    .local v0, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_9

    .line 236
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 238
    :cond_9
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 240
    .local v1, "zip":Ljava/util/zip/ZipFile;
    :try_start_e
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 241
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 242
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_18
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 243
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 244
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_41

    .line 246
    .local v5, "is":Ljava/io/InputStream;
    :try_start_28
    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_36

    .line 248
    :try_start_31
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 249
    nop

    .line 250
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_18

    .line 248
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_36
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 249
    nop

    .end local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "zip":Ljava/util/zip/ZipFile;
    .end local p0    # "keystore":Ljava/io/File;
    throw v6
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_41

    .line 252
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v1    # "zip":Ljava/util/zip/ZipFile;
    .restart local p0    # "keystore":Ljava/io/File;
    :cond_3c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 253
    nop

    .line 254
    return-object v0

    .line 252
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 253
    throw v2
.end method

.method public static greylist-max-o handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 1328
    const-string v0, "RecoverySystem"

    const/4 v1, 0x0

    .line 1330
    .local v1, "log":Ljava/lang/String;
    :try_start_3
    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string v3, "...\n"

    const/high16 v4, -0x10000

    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_f

    move-object v1, v2

    .line 1335
    :goto_e
    goto :goto_1d

    .line 1333
    :catch_f
    move-exception v2

    .line 1334
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error reading recovery log"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 1331
    .end local v2    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v2

    .line 1332
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "No recovery log file"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_e

    .line 1339
    :goto_1d
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1340
    .local v2, "reservePackage":Z
    if-nez v2, :cond_7d

    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1341
    const/4 v3, 0x0

    .line 1343
    .local v3, "filename":Ljava/lang/String;
    :try_start_2e
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_38

    move-object v3, v4

    .line 1346
    goto :goto_3e

    .line 1344
    :catch_38
    move-exception v4

    .line 1345
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "Error reading uncrypt file"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1350
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3e
    if-eqz v3, :cond_7d

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1351
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 1354
    :cond_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    .end local v3    # "filename":Ljava/lang/String;
    :cond_7d
    :goto_7d
    sget-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_84
    if-eqz v0, :cond_d1

    array-length v4, v0

    if-ge v3, v4, :cond_d1

    .line 1368
    aget-object v4, v0, v3

    const-string/jumbo v5, "last_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ce

    aget-object v4, v0, v3

    const-string/jumbo v5, "last_install"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    goto :goto_ce

    .line 1369
    :cond_a0
    if-eqz v2, :cond_b1

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    goto :goto_ce

    .line 1370
    :cond_b1
    if-eqz v2, :cond_c2

    aget-object v4, v0, v3

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    goto :goto_ce

    .line 1372
    :cond_c2
    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v0, v3

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1366
    :cond_ce
    :goto_ce
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 1375
    .end local v3    # "i":I
    :cond_d1
    return-object v1
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 566
    return-void
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    sget-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_3
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 590
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 592
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "filename":Ljava/lang/String;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v2, "_s.zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 601
    .local v2, "securityUpdate":Z
    const-string v3, "/data/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b3

    .line 602
    if-eqz p2, :cond_58

    .line 603
    sget-object v3, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_a9

    .line 604
    :cond_49
    const-string v3, "RecoverySystem"

    const-string v4, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to find block map file"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v3

    .line 609
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_58
    new-instance v3, Ljava/io/FileWriter;

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_1a5

    .line 611
    .local v3, "uncryptFile":Ljava/io/FileWriter;
    :try_start_5f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_ad

    .line 613
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 614
    nop

    .line 617
    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v5

    if-eqz v5, :cond_8a

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 618
    invoke-virtual {v5, v6, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    if-nez v5, :cond_a4

    .line 619
    :cond_8a
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting permission for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_a4
    sget-object v5, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 627
    .end local v3    # "uncryptFile":Ljava/io/FileWriter;
    :goto_a9
    const-string v3, "@/cache/recovery/block.map"

    move-object v1, v3

    goto :goto_b3

    .line 613
    .restart local v3    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_ad
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 614
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v4

    .line 630
    .end local v3    # "uncryptFile":Ljava/io/FileWriter;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_b3
    :goto_b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--update_package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    .local v3, "filenameArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "localeArg":Ljava/lang/String;
    const-string v6, "--security\n"

    .line 634
    .local v6, "securityArg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 635
    .local v7, "command":Ljava/lang/String;
    if-eqz v2, :cond_116

    .line 636
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "--security\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 639
    :cond_116
    const-string/jumbo v8, "recovery"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RecoverySystem;

    .line 641
    .local v8, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v8, v7}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v9
    :try_end_123
    .catchall {:try_start_75 .. :try_end_123} :catchall_1a5

    if-eqz v9, :cond_19d

    .line 645
    :try_start_125
    invoke-direct {v8, p1}, Landroid/os/RecoverySystem;->allocateSpaceForUpdate(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_12c

    .line 653
    goto :goto_153

    .line 646
    :cond_12c
    invoke-direct {v8}, Landroid/os/RecoverySystem;->clearBcb()Z

    .line 647
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to allocate space for update "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 648
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "securityUpdate":Z
    .end local v3    # "filenameArg":Ljava/lang/String;
    .end local v5    # "localeArg":Ljava/lang/String;
    .end local v6    # "securityArg":Ljava/lang/String;
    .end local v7    # "command":Ljava/lang/String;
    .end local v8    # "rs":Landroid/os/RecoverySystem;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v9
    :try_end_14c
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_14c} :catch_14c
    .catchall {:try_start_125 .. :try_end_14c} :catchall_1a5

    .line 650
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "securityUpdate":Z
    .restart local v3    # "filenameArg":Ljava/lang/String;
    .restart local v5    # "localeArg":Ljava/lang/String;
    .restart local v6    # "securityArg":Ljava/lang/String;
    .restart local v7    # "command":Ljava/lang/String;
    .restart local v8    # "rs":Landroid/os/RecoverySystem;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catch_14c
    move-exception v9

    .line 651
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_14d
    invoke-direct {v8}, Landroid/os/RecoverySystem;->clearBcb()Z

    .line 652
    invoke-virtual {v9}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 656
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_153
    const-string/jumbo v9, "power"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 657
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v10, "recovery-update"

    .line 660
    .local v10, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.software.leanback"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_192

    .line 661
    const-class v11, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    .line 662
    .local v11, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v11, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v12, 0x2

    if-eq v4, v12, :cond_192

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ",quiescent"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 666
    .end local v11    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_192
    invoke-virtual {v9, v10}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 668
    new-instance v4, Ljava/io/IOException;

    const-string v11, "Reboot failed (no permissions?)"

    invoke-direct {v4, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v4

    .line 642
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v10    # "reason":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :cond_19d
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Setup BCB failed"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageFile":Ljava/io/File;
    .end local p2    # "processed":Z
    throw v4

    .line 669
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "securityUpdate":Z
    .end local v3    # "filenameArg":Ljava/lang/String;
    .end local v5    # "localeArg":Ljava/lang/String;
    .end local v6    # "securityArg":Ljava/lang/String;
    .end local v7    # "command":Ljava/lang/String;
    .end local v8    # "rs":Landroid/os/RecoverySystem;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageFile":Ljava/io/File;
    .restart local p2    # "processed":Z
    :catchall_1a5
    move-exception v1

    monitor-exit v0
    :try_end_1a7
    .catchall {:try_start_14d .. :try_end_1a7} :catchall_1a5

    throw v1
.end method

.method private blacklist isLskfCaptured(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1490
    :catch_7
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not get LSKF capture state"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static whitelist isPreparedForUnattendedUpdate(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 785
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static whitelist prepareForUnattendedUpdate(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    if-eqz p1, :cond_37

    .line 708
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 709
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 714
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 715
    .local v1, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/os/RecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 718
    return-void

    .line 716
    :cond_26
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "preparation for update failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    .end local v1    # "rs":Landroid/os/RecoverySystem;
    :cond_2f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to request LSKF because the device doesn\'t have a lock screen. "

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    .end local v0    # "keyguardManager":Landroid/app/KeyguardManager;
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 546
    return-void
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 487
    return-void

    .line 490
    :cond_d
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 491
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 492
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_2c

    .line 494
    if-eqz p3, :cond_1d

    .line 495
    move-object v3, p3

    .local v3, "progressHandler":Landroid/os/Handler;
    goto :goto_26

    .line 497
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_1d
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 499
    .restart local v3    # "progressHandler":Landroid/os/Handler;
    :goto_26
    new-instance v4, Landroid/os/RecoverySystem$2;

    invoke-direct {v4, v3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object v2, v4

    .line 521
    .end local v3    # "progressHandler":Landroid/os/Handler;
    :cond_2c
    invoke-direct {v1, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 524
    return-void

    .line 522
    :cond_33
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "process package failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "slotSwitch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 808
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/os/RecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateToken"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    if-eqz p1, :cond_1f

    .line 764
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 766
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/RecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    .line 770
    return-void

    .line 768
    :cond_16
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "system not prepared to apply update"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    .end local v0    # "rs":Landroid/os/RecoverySystem;
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "updateToken == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1194
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    const/4 v2, 0x0

    .line 1195
    .local v2, "checkpointing":Z
    const/4 v3, 0x0

    .line 1197
    .local v3, "vold":Landroid/os/IVold;
    :try_start_7
    const-string/jumbo v4, "vold"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v4

    move-object v3, v4

    .line 1198
    if-eqz v3, :cond_1b

    .line 1199
    invoke-interface {v3}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v4

    move v2, v4

    .end local v2    # "checkpointing":Z
    .local v4, "checkpointing":Z
    goto :goto_20

    .line 1201
    .end local v4    # "checkpointing":Z
    .restart local v2    # "checkpointing":Z
    :cond_1b
    const-string v4, "Failed to get vold"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_21

    .line 1205
    :goto_20
    goto :goto_27

    .line 1203
    :catch_21
    move-exception v4

    .line 1204
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Failed to check for checkpointing"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_27
    if-eqz v2, :cond_46

    .line 1211
    const/4 v4, 0x0

    :try_start_2a
    invoke-interface {v3, v0, v4}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1212
    const-string v4, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_33

    .line 1217
    goto :goto_45

    .line 1213
    :catch_33
    move-exception v4

    .line 1214
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v5, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1216
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1218
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_45
    return-void

    .line 1221
    :cond_46
    const/4 v0, 0x0

    .line 1222
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--reason="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1227
    .local v1, "localeArg":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "--prompt_and_wipe_data"

    filled-new-array {v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method private greylist-max-o rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1443
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1445
    goto :goto_7

    .line 1444
    :catch_6
    move-exception v0

    .line 1446
    :goto_7
    return-void
.end method

.method public static whitelist rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :cond_1e
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--wipe_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1274
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--wipe_ab"

    filled-new-array {v4, v2, v0, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1276
    return-void
.end method

.method public static whitelist rebootWipeCache(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1236
    return-void
.end method

.method public static greylist-max-o rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1240
    const/4 v0, 0x0

    .line 1241
    .local v0, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, "localeArg":Ljava/lang/String;
    const-string v2, "--wipe_cache"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1247
    return-void
.end method

.method public static whitelist rebootWipeUserData(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 884
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 890
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 897
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 903
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "shutdown":Z
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "force":Z
    .end local p4    # "wipeEuicc":Z
    .local v0, "context":Landroid/content/Context;
    .local v1, "shutdown":Z
    .local v2, "reason":Ljava/lang/String;
    .local v3, "force":Z
    .local v4, "wipeEuicc":Z
    invoke-static/range {v0 .. v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZZ)V

    .line 909
    return-void
.end method

.method public static blacklist rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZZ)V
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "wipeEuicc"    # Z
    .param p5, "keepMemtagMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/UserManager;

    .line 937
    .local v9, "um":Landroid/os/UserManager;
    if-nez p3, :cond_1e

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v9, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1e

    .line 938
    :cond_16
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Wiping data is not allowed for this user."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 940
    :cond_1e
    :goto_1e
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    move-object v10, v1

    .line 942
    .local v10, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x11000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 945
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, v10}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "android.permission.MASTER_CLEAR"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 955
    invoke-virtual {v10}, Landroid/os/ConditionVariable;->block()V

    .line 957
    const-class v2, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/euicc/EuiccManager;

    .line 958
    .local v2, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz p4, :cond_54

    .line 959
    const-string v3, "android"

    invoke-static {p0, v3}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_57

    .line 961
    :cond_54
    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V

    .line 964
    :goto_57
    const/4 v3, 0x0

    .line 965
    .local v3, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_5c

    .line 966
    const-string v3, "--shutdown_after"

    .line 969
    :cond_5c
    const/4 v4, 0x0

    .line 970
    .local v4, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 971
    const-string/jumbo v5, "yyyy-MM-ddTHH:mm:ssZ"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 972
    .local v5, "timeStamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 975
    .end local v5    # "timeStamp":Ljava/lang/String;
    :cond_a0
    const/4 v5, 0x0

    .line 976
    .local v5, "memtagArg":Ljava/lang/String;
    if-eqz p5, :cond_a5

    .line 977
    const-string v5, "--keep_memtag_mode"

    .line 980
    :cond_a5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--locale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 981
    .local v6, "localeArg":Ljava/lang/String;
    const-string v7, "--wipe_data"

    filled-new-array {v3, v7, v4, v6, v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method private blacklist rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "slotSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1502
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1503
    :catch_7
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1516
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1517
    :catch_7
    move-exception v0

    .line 1518
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not reboot for update"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o recursiveDelete(Ljava/io/File;)V
    .registers 5
    .param p0, "name"    # Ljava/io/File;

    .line 1382
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1383
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-eqz v0, :cond_1d

    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 1385
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1386
    .local v2, "f":Ljava/io/File;
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1384
    .end local v2    # "f":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1390
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "RecoverySystem"

    if-nez v0, :cond_3c

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 1393
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_52
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;

    .line 1068
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1069
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "euicc_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RecoverySystem"

    if-nez v1, :cond_15

    .line 1072
    const-string v1, "Skip removing eUICC invisible profiles as it is not provisioned."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    return-void

    .line 1074
    :cond_15
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_69

    .line 1078
    :cond_1e
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 1079
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 1080
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    nop

    .line 1081
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 1082
    .local v3, "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_63

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_63

    .line 1086
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v2, "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 1088
    .local v5, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    if-eqz v6, :cond_5e

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1089
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v5    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_5e
    goto :goto_3d

    .line 1092
    :cond_5f
    invoke-static {p0, v2, p1}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z

    .line 1093
    return-void

    .line 1083
    .end local v2    # "invisibleSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_63
    :goto_63
    const-string v4, "Skip removing eUICC invisible profiles as no available profiles found."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void

    .line 1075
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "availableSubs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_69
    :goto_69
    const-string v1, "Skip removing eUICC invisible profiles as eUICC manager is not available."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "euiccManager"    # Landroid/telephony/euicc/EuiccManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/euicc/EuiccManager;",
            ")Z"
        }
    .end annotation

    .line 1097
    .local p1, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v1, "RecoverySystem"

    if-eqz p1, :cond_12b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v10, p0

    move-object/from16 v15, p2

    const/16 v16, 0x1

    goto/16 :goto_131

    .line 1101
    :cond_12
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1102
    .local v2, "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1104
    .local v3, "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v5, Landroid/os/RecoverySystem$5;

    invoke-direct {v5, v3, v2}, Landroid/os/RecoverySystem$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 1122
    .local v5, "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "android"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    const/high16 v8, 0xc000000

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v10, p0

    invoke-static {v10, v4, v6, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1130
    .local v8, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1131
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v9, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1132
    new-instance v7, Landroid/os/HandlerThread;

    const-string v11, "euiccRemovingSubsReceiverThread"

    invoke-direct {v7, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v7, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1135
    new-instance v11, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1136
    .local v11, "euiccHandler":Landroid/os/Handler;
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 1137
    const/4 v13, 0x0

    invoke-virtual {v12, v5, v9, v13, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1139
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_63
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ab

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 1140
    .local v13, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remove invisible subscription "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1142
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from card "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1143
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1140
    invoke-static {v1, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v14

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object v14

    .line 1145
    const/16 v16, 0x1

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v14, v0, v8}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    .line 1146
    .end local v13    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_63

    .line 1148
    :cond_ab
    move-object/from16 v15, p2

    const/16 v16, 0x1

    .line 1149
    :try_start_af
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "euicc_removing_invisible_profiles_timeout_millis"

    .line 1148
    const-wide/32 v13, 0xafc8

    invoke-static {v0, v12, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1152
    .local v12, "waitingTimeMillis":J
    const-wide/16 v17, 0x3a98

    cmp-long v0, v12, v17

    if-gez v0, :cond_c5

    .line 1153
    const-wide/16 v12, 0x3a98

    goto :goto_cf

    .line 1154
    :cond_c5
    const-wide/32 v17, 0x15f90

    cmp-long v0, v12, v17

    if-lez v0, :cond_cf

    .line 1155
    const-wide/32 v12, 0x15f90

    .line 1157
    :cond_cf
    :goto_cf
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v12, v13, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 1158
    const-string v0, "Timeout removing invisible euicc profiles."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/InterruptedException; {:try_start_af .. :try_end_dc} :catch_105
    .catchall {:try_start_af .. :try_end_dc} :catchall_103

    .line 1159
    nop

    .line 1166
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1167
    nop

    .line 1168
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1159
    return v4

    .line 1166
    .end local v12    # "waitingTimeMillis":J
    :cond_e9
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1167
    nop

    .line 1168
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1171
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_101

    move/from16 v0, v16

    goto :goto_102

    :cond_101
    move v0, v4

    :goto_102
    return v0

    .line 1166
    :catchall_103
    move-exception v0

    goto :goto_11f

    .line 1161
    :catch_105
    move-exception v0

    .line 1162
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->interrupt()V

    .line 1163
    const-string v12, "Removing invisible euicc profiles interrupted"

    invoke-static {v1, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_106 .. :try_end_112} :catchall_103

    .line 1164
    nop

    .line 1166
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1167
    nop

    .line 1168
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1164
    return v4

    .line 1166
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_11f
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1167
    nop

    .line 1168
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1170
    throw v0

    .line 1097
    .end local v2    # "removeSubsLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "removedSubsCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v5    # "removeEuiccSubsReceiver":Landroid/content/BroadcastReceiver;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v8    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v9    # "intentFilter":Landroid/content/IntentFilter;
    .end local v11    # "euiccHandler":Landroid/os/Handler;
    :cond_12b
    move-object/from16 v10, p0

    move-object/from16 v15, p2

    const/16 v16, 0x1

    .line 1098
    :goto_131
    const-string v0, "There are no eUICC invisible profiles needed to be removed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return v16
.end method

.method private blacklist requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sender"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1456
    const-string v0, "Package<%s> requesting LSKF"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverySystem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :try_start_f
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v0

    .line 1459
    .local v0, "validRequest":Z
    const-string v2, "LSKF Request isValid = %b"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_26} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_26} :catch_27

    .line 1460
    return v0

    .line 1461
    .end local v0    # "validRequest":Z
    :catch_27
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "could not request LSKF capture"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static greylist-max-o sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "arg"    # Ljava/lang/String;

    .line 1527
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1528
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1529
    return-object p0
.end method

.method public static whitelist scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "_s.zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 829
    .local v1, "securityUpdate":Z
    const-string v2, "/data/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 830
    const-string v0, "@/cache/recovery/block.map"

    .line 833
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 835
    .local v3, "localeArg":Ljava/lang/String;
    const-string v4, "--security\n"

    .line 837
    .local v4, "securityArg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "command":Ljava/lang/String;
    if-eqz v1, :cond_74

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--security\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 842
    :cond_74
    const-string/jumbo v6, "recovery"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/RecoverySystem;

    .line 843
    .local v6, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v6, v5}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 846
    return-void

    .line 844
    :cond_84
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private greylist-max-o setupBcb(Ljava/lang/String;)Z
    .registers 3
    .param p1, "command"    # Ljava/lang/String;

    .line 1413
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1414
    :catch_7
    move-exception v0

    .line 1416
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 4
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 1402
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1403
    :catch_7
    move-exception v0

    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .registers 27
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 288
    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 290
    .local v3, "fileLen":J
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    move-object/from16 v10, p0

    invoke-direct {v8, v10, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    .local v8, "raf":Ljava/io/RandomAccessFile;
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 293
    .local v6, "startTimeMillis":J
    const/4 v0, 0x0

    if-eqz v1, :cond_1a

    .line 294
    invoke-interface {v1, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 297
    :cond_1a
    const-wide/16 v11, 0x6

    sub-long v11, v3, v11

    invoke-virtual {v8, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 298
    const/4 v2, 0x6

    new-array v5, v2, [B

    move-object v11, v5

    .line 299
    .local v11, "footer":[B
    invoke-virtual {v8, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 301
    const/4 v5, 0x2

    aget-byte v9, v11, v5

    const/4 v12, -0x1

    if-ne v9, v12, :cond_186

    const/4 v9, 0x3

    aget-byte v13, v11, v9

    if-ne v13, v12, :cond_186

    .line 305
    const/4 v12, 0x4

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x5

    aget-byte v14, v11, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v12, v14

    .line 306
    .local v12, "commentSize":I
    aget-byte v14, v11, v0

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x1

    move/from16 v16, v0

    aget-byte v0, v11, v15

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v14

    .line 308
    .local v0, "signatureStart":I
    add-int/lit8 v14, v12, 0x16

    new-array v14, v14, [B

    .line 309
    .local v14, "eocd":[B
    move/from16 v17, v5

    add-int/lit8 v5, v12, 0x16

    move/from16 v18, v9

    int-to-long v9, v5

    sub-long v9, v3, v9

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 310
    invoke-virtual {v8, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 314
    aget-byte v5, v14, v16

    const/16 v9, 0x50

    if-ne v5, v9, :cond_17a

    aget-byte v5, v14, v15

    const/16 v10, 0x4b

    if-ne v5, v10, :cond_17a

    aget-byte v5, v14, v17

    if-ne v5, v13, :cond_17a

    aget-byte v5, v14, v18

    if-ne v5, v2, :cond_17a

    .line 319
    const/4 v5, 0x4

    .local v5, "i":I
    :goto_76
    array-length v15, v14

    add-int/lit8 v15, v15, -0x3

    if-ge v5, v15, :cond_9d

    .line 320
    aget-byte v15, v14, v5

    if-ne v15, v9, :cond_9a

    add-int/lit8 v15, v5, 0x1

    aget-byte v15, v14, v15

    if-ne v15, v10, :cond_9a

    add-int/lit8 v15, v5, 0x2

    aget-byte v15, v14, v15

    if-ne v15, v13, :cond_9a

    add-int/lit8 v15, v5, 0x3

    aget-byte v15, v14, v15

    if-eq v15, v2, :cond_92

    goto :goto_9a

    .line 322
    :cond_92
    new-instance v2, Ljava/security/SignatureException;

    const-string v9, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v2

    .line 319
    .restart local v3    # "fileLen":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_9a
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 327
    .end local v5    # "i":I
    :cond_9d
    new-instance v2, Lsun/security/pkcs/PKCS7;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v9, v12, 0x16

    sub-int/2addr v9, v0

    invoke-direct {v5, v14, v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v5}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    move-object v10, v2

    .line 332
    .local v10, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    move-object v13, v2

    .line 333
    .local v13, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v13, :cond_16e

    array-length v2, v13

    if-eqz v2, :cond_16e

    .line 336
    aget-object v2, v13, v16

    move-object v15, v2

    .line 337
    .local v15, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 339
    .local v2, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v5

    .line 340
    .local v5, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v5, :cond_15c

    array-length v9, v5

    if-eqz v9, :cond_15c

    .line 343
    aget-object v9, v5, v16

    .line 347
    .local v9, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v16, 0x0

    .line 349
    .local v16, "verified":Z
    if-nez p2, :cond_ce

    sget-object v17, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    goto :goto_d0

    :cond_ce
    move-object/from16 v17, p2

    .line 348
    :goto_d0
    invoke-static/range {v17 .. v17}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v17

    .line 350
    .local v17, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_d8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    .line 351
    .local v19, "c":Ljava/security/cert/X509Certificate;
    move/from16 v20, v0

    .end local v0    # "signatureStart":I
    .local v20, "signatureStart":I
    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_ee
    .catchall {:try_start_10 .. :try_end_ee} :catchall_18f

    if-eqz v0, :cond_f3

    .line 352
    const/16 v16, 0x1

    .line 353
    goto :goto_f8

    .line 355
    .end local v19    # "c":Ljava/security/cert/X509Certificate;
    :cond_f3
    move/from16 v0, v20

    goto :goto_d8

    .line 350
    .end local v20    # "signatureStart":I
    .restart local v0    # "signatureStart":I
    :cond_f6
    move/from16 v20, v0

    .line 356
    .end local v0    # "signatureStart":I
    .restart local v20    # "signatureStart":I
    :goto_f8
    if-eqz v16, :cond_14a

    .line 362
    move-object v0, v2

    move-wide/from16 v18, v3

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v3    # "fileLen":J
    .local v0, "signatureKey":Ljava/security/PublicKey;
    .local v18, "fileLen":J
    const-wide/16 v2, 0x0

    :try_start_ff
    invoke-virtual {v8, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 363
    move-object v2, v9

    .end local v9    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v2, "signerInfo":Lsun/security/pkcs/SignerInfo;
    move-object/from16 v9, p1

    .line 364
    .local v9, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    move-object v3, v2

    .end local v2    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v3, "signerInfo":Lsun/security/pkcs/SignerInfo;
    new-instance v2, Landroid/os/RecoverySystem$1;
    :try_end_108
    .catchall {:try_start_ff .. :try_end_108} :catchall_146

    move-wide/from16 v22, v18

    move-object/from16 v18, v0

    move-object v0, v3

    move-wide/from16 v3, v22

    move/from16 v22, v12

    move-object v12, v5

    move/from16 v5, v22

    .local v0, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v3, "fileLen":J
    .local v5, "commentSize":I
    .local v12, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .local v18, "signatureKey":Ljava/security/PublicKey;
    :try_start_114
    invoke-direct/range {v2 .. v9}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    invoke-virtual {v10, v0, v2}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    .line 409
    .local v2, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v19

    .line 410
    .local v19, "interrupted":Z
    if-eqz v1, :cond_129

    .line 411
    move-object/from16 v21, v0

    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v21, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v0, 0x64

    invoke-interface {v1, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_128
    .catchall {:try_start_114 .. :try_end_128} :catchall_18f

    goto :goto_12b

    .line 410
    .end local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_129
    move-object/from16 v21, v0

    .line 414
    .end local v0    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :goto_12b
    if-nez v19, :cond_13d

    .line 418
    if-eqz v2, :cond_134

    .line 422
    .end local v2    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v5    # "commentSize":I
    .end local v6    # "startTimeMillis":J
    .end local v9    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v10    # "block":Lsun/security/pkcs/PKCS7;
    .end local v11    # "footer":[B
    .end local v12    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v13    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v14    # "eocd":[B
    .end local v15    # "cert":Ljava/security/cert/X509Certificate;
    .end local v16    # "verified":Z
    .end local v17    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v18    # "signatureKey":Ljava/security/PublicKey;
    .end local v19    # "interrupted":Z
    .end local v20    # "signatureStart":I
    .end local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 423
    nop

    .line 424
    return-void

    .line 419
    .restart local v2    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .restart local v5    # "commentSize":I
    .restart local v6    # "startTimeMillis":J
    .restart local v9    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .restart local v10    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v11    # "footer":[B
    .restart local v12    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v13    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v14    # "eocd":[B
    .restart local v15    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "verified":Z
    .restart local v17    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v18    # "signatureKey":Ljava/security/PublicKey;
    .restart local v19    # "interrupted":Z
    .restart local v20    # "signatureStart":I
    .restart local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_134
    :try_start_134
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature digest verification failed"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 415
    .restart local v3    # "fileLen":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_13d
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "verification was interrupted"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 422
    .end local v2    # "verifyResult":Lsun/security/pkcs/SignerInfo;
    .end local v5    # "commentSize":I
    .end local v6    # "startTimeMillis":J
    .end local v9    # "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    .end local v10    # "block":Lsun/security/pkcs/PKCS7;
    .end local v11    # "footer":[B
    .end local v12    # "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .end local v13    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v14    # "eocd":[B
    .end local v15    # "cert":Ljava/security/cert/X509Certificate;
    .end local v16    # "verified":Z
    .end local v17    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v19    # "interrupted":Z
    .end local v20    # "signatureStart":I
    .end local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .local v18, "fileLen":J
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_146
    move-exception v0

    move-wide/from16 v3, v18

    .end local v18    # "fileLen":J
    .restart local v3    # "fileLen":J
    goto :goto_190

    .line 357
    .local v2, "signatureKey":Ljava/security/PublicKey;
    .local v5, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v6    # "startTimeMillis":J
    .local v9, "signerInfo":Lsun/security/pkcs/SignerInfo;
    .restart local v10    # "block":Lsun/security/pkcs/PKCS7;
    .restart local v11    # "footer":[B
    .local v12, "commentSize":I
    .restart local v13    # "certificates":[Ljava/security/cert/X509Certificate;
    .restart local v14    # "eocd":[B
    .restart local v15    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "verified":Z
    .restart local v17    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v20    # "signatureStart":I
    :cond_14a
    move/from16 v18, v12

    move-object v12, v5

    move/from16 v5, v18

    move-object/from16 v18, v2

    move-object/from16 v21, v9

    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .end local v9    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v5, "commentSize":I
    .local v12, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .local v18, "signatureKey":Ljava/security/PublicKey;
    .restart local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature doesn\'t match any trusted key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 340
    .end local v16    # "verified":Z
    .end local v17    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v18    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "signatureStart":I
    .end local v21    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    .local v0, "signatureStart":I
    .restart local v2    # "signatureKey":Ljava/security/PublicKey;
    .restart local v3    # "fileLen":J
    .local v5, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .local v12, "commentSize":I
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_15c
    move/from16 v18, v12

    move-object v12, v5

    move/from16 v5, v18

    move/from16 v20, v0

    move-object/from16 v18, v2

    .line 341
    .end local v0    # "signatureStart":I
    .end local v2    # "signatureKey":Ljava/security/PublicKey;
    .local v5, "commentSize":I
    .local v12, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    .restart local v18    # "signatureKey":Ljava/security/PublicKey;
    .restart local v20    # "signatureStart":I
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no signedData"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 333
    .end local v5    # "commentSize":I
    .end local v15    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "signatureKey":Ljava/security/PublicKey;
    .end local v20    # "signatureStart":I
    .restart local v0    # "signatureStart":I
    .restart local v3    # "fileLen":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .local v12, "commentSize":I
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_16e
    move/from16 v20, v0

    move v5, v12

    .line 334
    .end local v0    # "signatureStart":I
    .end local v12    # "commentSize":I
    .restart local v5    # "commentSize":I
    .restart local v20    # "signatureStart":I
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no certificates"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 314
    .end local v5    # "commentSize":I
    .end local v10    # "block":Lsun/security/pkcs/PKCS7;
    .end local v13    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v20    # "signatureStart":I
    .restart local v0    # "signatureStart":I
    .restart local v3    # "fileLen":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "commentSize":I
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_17a
    move/from16 v20, v0

    move v5, v12

    .line 316
    .end local v0    # "signatureStart":I
    .end local v12    # "commentSize":I
    .restart local v5    # "commentSize":I
    .restart local v20    # "signatureStart":I
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0

    .line 302
    .end local v5    # "commentSize":I
    .end local v14    # "eocd":[B
    .end local v20    # "signatureStart":I
    .restart local v3    # "fileLen":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_186
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileLen":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local p0    # "packageFile":Ljava/io/File;
    .end local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    throw v0
    :try_end_18f
    .catchall {:try_start_134 .. :try_end_18f} :catchall_18f

    .line 422
    .end local v6    # "startTimeMillis":J
    .end local v11    # "footer":[B
    .restart local v3    # "fileLen":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local p0    # "packageFile":Ljava/io/File;
    .restart local p1    # "listener":Landroid/os/RecoverySystem$ProgressListener;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_18f
    move-exception v0

    :goto_190
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 423
    throw v0
.end method

.method public static whitelist verifyPackageCompatibility(Ljava/io/File;)Z
    .registers 2
    .param p0, "compatibilityFile"    # Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .registers 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-o wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 992
    move-object/from16 v1, p0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 993
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v0, "euicc_provisioned"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    const-string v5, "RecoverySystem"

    if-nez v0, :cond_18

    .line 996
    const-string v0, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v4

    .line 1000
    :cond_18
    const-string v0, "euicc"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/telephony/euicc/EuiccManager;

    .line 1002
    .local v6, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    if-eqz v6, :cond_f1

    invoke-virtual {v6}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1003
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 1004
    .local v4, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v7, v0

    .line 1006
    .local v7, "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Landroid/os/RecoverySystem$4;

    invoke-direct {v0, v7, v4}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    move-object v8, v0

    .line 1024
    .local v8, "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1025
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v11, p1

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    const/high16 v0, 0xc000000

    sget-object v12, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v3, v10, v0, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1032
    .local v12, "callbackIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v0

    .line 1033
    .local v13, "filterConsent":Landroid/content/IntentFilter;
    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    new-instance v0, Landroid/os/HandlerThread;

    const-string v9, "euiccWipeFinishReceiverThread"

    invoke-direct {v0, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 1035
    .local v9, "euiccHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 1036
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v0, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v14, v0

    .line 1037
    .local v14, "euiccHandler":Landroid/os/Handler;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1038
    const/4 v15, 0x0

    invoke-virtual {v0, v8, v13, v15, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1039
    invoke-virtual {v6, v12}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 1041
    nop

    .line 1042
    :try_start_7a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v15, "euicc_factory_reset_timeout_millis"
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_7a .. :try_end_80} :catch_cf
    .catchall {:try_start_7a .. :try_end_80} :catchall_cc

    .line 1041
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v17, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    const-wide/16 v3, 0x7530

    :try_start_86
    invoke-static {v0, v15, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1045
    .local v3, "waitingTimeMillis":J
    const-wide/16 v18, 0x1388

    cmp-long v0, v3, v18

    if-gez v0, :cond_93

    .line 1046
    const-wide/16 v3, 0x1388

    goto :goto_9d

    .line 1047
    :cond_93
    const-wide/32 v18, 0xea60

    cmp-long v0, v3, v18

    if-lez v0, :cond_9d

    .line 1048
    const-wide/32 v3, 0xea60

    .line 1050
    :cond_9d
    :goto_9d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_9f
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_9f} :catch_c8
    .catchall {:try_start_86 .. :try_end_9f} :catchall_c4

    move-object/from16 v15, v17

    .end local v17    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v15, "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :try_start_a1
    invoke-virtual {v15, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1051
    const-string v0, "Timeout wiping eUICC data."

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_ac} :catch_c2
    .catchall {:try_start_a1 .. :try_end_ac} :catchall_e8

    .line 1052
    nop

    .line 1059
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1052
    return v16

    .line 1059
    .end local v3    # "waitingTimeMillis":J
    :cond_b5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1060
    nop

    .line 1061
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 1054
    :catch_c2
    move-exception v0

    goto :goto_d3

    .line 1059
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v17    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_c4
    move-exception v0

    move-object/from16 v15, v17

    .end local v17    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_e9

    .line 1054
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v17    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_c8
    move-exception v0

    move-object/from16 v15, v17

    .end local v17    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_d3

    .line 1059
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catchall_cc
    move-exception v0

    move-object v15, v4

    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_e9

    .line 1054
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :catch_cf
    move-exception v0

    move/from16 v16, v3

    move-object v15, v4

    .line 1055
    .end local v4    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :goto_d3
    :try_start_d3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1056
    const-string v3, "Wiping eUICC data interrupted"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_df
    .catchall {:try_start_d3 .. :try_end_df} :catchall_e8

    .line 1057
    nop

    .line 1059
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1057
    return v16

    .line 1059
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_e8
    move-exception v0

    :goto_e9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1060
    throw v0

    .line 1002
    .end local v7    # "wipingSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v8    # "euiccWipeFinishReceiver":Landroid/content/BroadcastReceiver;
    .end local v9    # "euiccHandlerThread":Landroid/os/HandlerThread;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "callbackIntent":Landroid/app/PendingIntent;
    .end local v13    # "filterConsent":Landroid/content/IntentFilter;
    .end local v14    # "euiccHandler":Landroid/os/Handler;
    .end local v15    # "euiccFactoryResetLatch":Ljava/util/concurrent/CountDownLatch;
    :cond_f1
    move-object/from16 v11, p1

    move/from16 v16, v3

    .line 1063
    return v16
.end method


# virtual methods
.method public blacklist wipePartitionToExt4()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1292
    const-string v0, "--wipe_data\n--reformat_data=ext4"

    .line 1293
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 1294
    return-void
.end method
