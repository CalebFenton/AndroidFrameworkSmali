.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/system/etc/security/otacerts.zip"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 67
    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    #@a
    .line 74
    new-instance v0, Ljava/io/File;

    #@c
    const-string/jumbo v1, "/cache/recovery"

    #@f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@14
    .line 75
    new-instance v0, Ljava/io/File;

    #@16
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@18
    const-string/jumbo v2, "log"

    #@1b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@20
    .line 76
    new-instance v0, Ljava/io/File;

    #@22
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@24
    const-string/jumbo v2, "last_install"

    #@27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    sput-object v0, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    #@2c
    .line 86
    new-instance v0, Ljava/io/File;

    #@2e
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@30
    const-string/jumbo v2, "block.map"

    #@33
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@36
    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    #@38
    .line 94
    new-instance v0, Ljava/io/File;

    #@3a
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@3c
    const-string/jumbo v2, "uncrypt_file"

    #@3f
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@42
    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@44
    .line 102
    new-instance v0, Ljava/io/File;

    #@46
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@48
    const-string/jumbo v2, "uncrypt_status"

    #@4b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@4e
    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    #@50
    .line 108
    new-instance v0, Ljava/lang/Object;

    #@52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@55
    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    #@57
    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 938
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    #@6
    .line 937
    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    #@0
    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 945
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    #@5
    .line 944
    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 703
    sget-object v3, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@5
    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 706
    .local v1, "command":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@b
    array-length v4, p1

    #@c
    :goto_0
    if-ge v3, v4, :cond_1

    #@e
    aget-object v0, p1, v3

    #@10
    .line 707
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_0

    #@16
    .line 708
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 709
    const-string/jumbo v5, "\n"

    #@1c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 706
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 715
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "recovery"

    #@25
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/os/RecoverySystem;

    #@2b
    .line 716
    .local v2, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v2, v3}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    #@32
    .line 718
    new-instance v3, Ljava/io/IOException;

    #@34
    const-string/jumbo v4, "Reboot failed (no permissions?)"

    #@37
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v3
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 561
    const-string/jumbo v1, "recovery"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/os/RecoverySystem;

    #@9
    .line 562
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    .line 563
    new-instance v1, Ljava/io/IOException;

    #@11
    const-string/jumbo v2, "cancel scheduled update failed"

    #@14
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 560
    :cond_0
    return-void
.end method

.method private clearBcb()Z
    .locals 2

    #@0
    .prologue
    .line 906
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    #@2
    invoke-interface {v1}, Landroid/os/IRecoverySystem;->clearBcb()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 907
    :catch_0
    move-exception v0

    #@8
    .line 909
    .local v0, "unused":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
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

    #@0
    .prologue
    .line 130
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 131
    .local v4, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    #@7
    .line 132
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    #@9
    .line 134
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    #@b
    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@e
    .line 136
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string/jumbo v6, "X.509"

    #@11
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@14
    move-result-object v0

    #@15
    .line 137
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@18
    move-result-object v1

    #@19
    .line 138
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 139
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@25
    .line 140
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v3

    #@29
    .line 142
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@2c
    move-result-object v6

    #@2d
    check-cast v6, Ljava/security/cert/X509Certificate;

    #@2f
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@32
    .line 144
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 147
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    #@37
    .line 148
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    #@3a
    .line 147
    throw v6

    #@3b
    .line 143
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    #@3c
    .line 144
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@3f
    .line 143
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    .line 148
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    #@43
    .line 150
    return-object v4
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 808
    const/4 v4, 0x0

    #@1
    .line 810
    .local v4, "log":Ljava/lang/String;
    :try_start_0
    sget-object v7, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@3
    const-string/jumbo v8, "...\n"

    #@6
    const/high16 v9, -0x10000

    #@8
    invoke-static {v7, v9, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v4

    #@c
    .line 817
    .end local v4    # "log":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    #@e
    .line 818
    invoke-static {p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    #@11
    .line 822
    :cond_0
    sget-object v7, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    #@13
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    #@16
    move-result v6

    #@17
    .line 823
    .local v6, "reservePackage":Z
    if-nez v6, :cond_1

    #@19
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@1b
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_1

    #@21
    .line 824
    const/4 v2, 0x0

    #@22
    .line 826
    .local v2, "filename":Ljava/lang/String;
    :try_start_1
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@24
    const/4 v8, 0x0

    #@25
    const/4 v9, 0x0

    #@26
    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    #@29
    move-result-object v2

    #@2a
    .line 833
    .end local v2    # "filename":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_1

    #@2c
    const-string/jumbo v7, "/data"

    #@2f
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v7

    #@33
    if-eqz v7, :cond_1

    #@35
    .line 834
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@37
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_3

    #@3d
    .line 835
    const-string/jumbo v7, "RecoverySystem"

    #@40
    new-instance v8, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v9, "Deleted: "

    #@48
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 848
    :cond_1
    :goto_2
    sget-object v7, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@59
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 849
    .local v5, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    #@5e
    .local v3, "i":I
    :goto_3
    if-eqz v5, :cond_7

    #@60
    array-length v7, v5

    #@61
    if-ge v3, v7, :cond_7

    #@63
    .line 850
    aget-object v7, v5, v3

    #@65
    const-string/jumbo v8, "last_"

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6b
    move-result v7

    #@6c
    if-eqz v7, :cond_4

    #@6e
    .line 849
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@70
    goto :goto_3

    #@71
    .line 813
    .end local v3    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    .end local v6    # "reservePackage":Z
    .restart local v4    # "log":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@72
    .line 814
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "RecoverySystem"

    #@75
    const-string/jumbo v8, "Error reading recovery log"

    #@78
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7b
    goto :goto_0

    #@7c
    .line 811
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@7d
    .line 812
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "RecoverySystem"

    #@80
    const-string/jumbo v8, "No recovery log file"

    #@83
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_0

    #@87
    .line 827
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "log":Ljava/lang/String;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v6    # "reservePackage":Z
    :catch_2
    move-exception v1

    #@88
    .line 828
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "RecoverySystem"

    #@8b
    const-string/jumbo v8, "Error reading uncrypt file"

    #@8e
    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    goto :goto_1

    #@92
    .line 837
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "filename":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "RecoverySystem"

    #@95
    new-instance v8, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v9, "Can\'t delete: "

    #@9d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v8

    #@a1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@ac
    goto :goto_2

    #@ad
    .line 851
    .restart local v3    # "i":I
    .restart local v5    # "names":[Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    #@af
    aget-object v7, v5, v3

    #@b1
    sget-object v8, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    #@b3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    #@b6
    move-result-object v8

    #@b7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ba
    move-result v7

    #@bb
    if-nez v7, :cond_2

    #@bd
    .line 852
    :cond_5
    if-eqz v6, :cond_6

    #@bf
    aget-object v7, v5, v3

    #@c1
    sget-object v8, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@c3
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    #@c6
    move-result-object v8

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result v7

    #@cb
    if-nez v7, :cond_2

    #@cd
    .line 854
    :cond_6
    new-instance v7, Ljava/io/File;

    #@cf
    sget-object v8, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@d1
    aget-object v9, v5, v3

    #@d3
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@d6
    invoke-static {v7}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    #@d9
    goto :goto_4

    #@da
    .line 857
    :cond_7
    return-object v4
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 421
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    #@4
    .line 420
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 442
    sget-object v10, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 443
    :try_start_0
    sget-object v9, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@5
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    #@8
    .line 445
    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@a
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    #@d
    .line 447
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    .line 448
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v9, "RecoverySystem"

    #@14
    new-instance v11, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v12, "!!! REBOOTING TO INSTALL "

    #@1c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v11

    #@20
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v11

    #@24
    const-string/jumbo v12, " !!!"

    #@27
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v11

    #@2b
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v11

    #@2f
    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    .line 451
    const-string/jumbo v9, "_s.zip"

    #@35
    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@38
    move-result v7

    #@39
    .line 456
    .local v7, "securityUpdate":Z
    const-string/jumbo v9, "/data/"

    #@3c
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3f
    move-result v9

    #@40
    if-eqz v9, :cond_2

    #@42
    .line 457
    if-eqz p2, :cond_0

    #@44
    .line 458
    sget-object v9, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    #@46
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    #@49
    move-result v9

    #@4a
    if-nez v9, :cond_1

    #@4c
    .line 459
    const-string/jumbo v9, "RecoverySystem"

    #@4f
    const-string/jumbo v11, "Package claimed to have been processed but failed to find the block map file."

    #@52
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 461
    new-instance v9, Ljava/io/IOException;

    #@57
    const-string/jumbo v11, "Failed to find block map file"

    #@5a
    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    .line 442
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "securityUpdate":Z
    :catchall_0
    move-exception v9

    #@5f
    monitor-exit v10

    #@60
    throw v9

    #@61
    .line 464
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v7    # "securityUpdate":Z
    :cond_0
    :try_start_1
    new-instance v8, Ljava/io/FileWriter;

    #@63
    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@65
    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 466
    .local v8, "uncryptFile":Ljava/io/FileWriter;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v9

    #@71
    const-string/jumbo v11, "\n"

    #@74
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v9

    #@78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v9

    #@7c
    invoke-virtual {v8, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7f
    .line 468
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    #@82
    .line 472
    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@84
    const/4 v11, 0x1

    #@85
    const/4 v12, 0x0

    #@86
    invoke-virtual {v9, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    #@89
    move-result v9

    #@8a
    if-eqz v9, :cond_4

    #@8c
    .line 473
    sget-object v9, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@8e
    const/4 v11, 0x1

    #@8f
    const/4 v12, 0x0

    #@90
    invoke-virtual {v9, v11, v12}, Ljava/io/File;->setWritable(ZZ)Z

    #@93
    move-result v9

    #@94
    if-eqz v9, :cond_4

    #@96
    .line 477
    :goto_0
    sget-object v9, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    #@98
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    #@9b
    .line 482
    .end local v8    # "uncryptFile":Ljava/io/FileWriter;
    :cond_1
    const-string/jumbo v1, "@/cache/recovery/block.map"

    #@9e
    .line 485
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v11, "--update_package="

    #@a6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    const-string/jumbo v11, "\n"

    #@b1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    .line 486
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v11, "--locale="

    #@c1
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v9

    #@c5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c8
    move-result-object v11

    #@c9
    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@cc
    move-result-object v11

    #@cd
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v9

    #@d1
    const-string/jumbo v11, "\n"

    #@d4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v9

    #@d8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v3

    #@dc
    .line 487
    .local v3, "localeArg":Ljava/lang/String;
    const-string/jumbo v6, "--security\n"

    #@df
    .line 489
    .local v6, "securityArg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v9

    #@ec
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ef
    move-result-object v0

    #@f0
    .line 490
    .local v0, "command":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@f2
    .line 491
    new-instance v9, Ljava/lang/StringBuilder;

    #@f4
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f7
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v9

    #@fb
    const-string/jumbo v11, "--security\n"

    #@fe
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v9

    #@102
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v0

    #@106
    .line 495
    :cond_3
    const-string/jumbo v9, "recovery"

    #@109
    .line 494
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10c
    move-result-object v5

    #@10d
    check-cast v5, Landroid/os/RecoverySystem;

    #@10f
    .line 496
    .local v5, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v5, v0}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    #@112
    move-result v9

    #@113
    if-nez v9, :cond_5

    #@115
    .line 497
    new-instance v9, Ljava/io/IOException;

    #@117
    const-string/jumbo v11, "Setup BCB failed"

    #@11a
    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11d
    throw v9

    #@11e
    .line 467
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "filenameArg":Ljava/lang/String;
    .end local v3    # "localeArg":Ljava/lang/String;
    .end local v5    # "rs":Landroid/os/RecoverySystem;
    .end local v6    # "securityArg":Ljava/lang/String;
    .restart local v8    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_1
    move-exception v9

    #@11f
    .line 468
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    #@122
    .line 467
    throw v9

    #@123
    .line 474
    :cond_4
    const-string/jumbo v9, "RecoverySystem"

    #@126
    new-instance v11, Ljava/lang/StringBuilder;

    #@128
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@12b
    const-string/jumbo v12, "Error setting permission for "

    #@12e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v11

    #@132
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    #@134
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v11

    #@138
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v11

    #@13c
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    goto/16 :goto_0

    #@141
    .line 501
    .end local v8    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v2    # "filenameArg":Ljava/lang/String;
    .restart local v3    # "localeArg":Ljava/lang/String;
    .restart local v5    # "rs":Landroid/os/RecoverySystem;
    .restart local v6    # "securityArg":Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "power"

    #@144
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@147
    move-result-object v4

    #@148
    check-cast v4, Landroid/os/PowerManager;

    #@14a
    .line 502
    .local v4, "pm":Landroid/os/PowerManager;
    const-string/jumbo v9, "recovery-update"

    #@14d
    invoke-virtual {v4, v9}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    #@150
    .line 504
    new-instance v9, Ljava/io/IOException;

    #@152
    const-string/jumbo v11, "Reboot failed (no permissions?)"

    #@155
    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@158
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 725
    const/16 v22, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    #@5
    new-instance v21, Ljava/io/FileReader;

    #@7
    sget-object v23, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    #@9
    move-object/from16 v0, v21

    #@b
    move-object/from16 v1, v23

    #@d
    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    #@10
    move-object/from16 v0, v21

    #@12
    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@15
    .line 726
    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v11, "in":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    #@16
    .line 727
    .local v12, "line":Ljava/lang/String;
    const/4 v6, -0x1

    #@17
    .local v6, "bytesWrittenInMiB":I
    const/4 v5, -0x1

    #@18
    .line 728
    .local v5, "bytesStashedInMiB":I
    const/16 v19, -0x1

    #@1a
    .line 729
    .local v19, "timeTotal":I
    const/16 v20, -0x1

    #@1c
    .line 730
    .local v20, "uncryptTime":I
    const/16 v18, -0x1

    #@1e
    .line 731
    .end local v12    # "line":Ljava/lang/String;
    .local v18, "sourceVersion":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@21
    move-result-object v12

    #@22
    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_9

    #@24
    .line 737
    const/16 v21, 0x3a

    #@26
    move/from16 v0, v21

    #@28
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    #@2b
    move-result v13

    #@2c
    .line 738
    .local v13, "numIndex":I
    const/16 v21, -0x1

    #@2e
    move/from16 v0, v21

    #@30
    if-eq v13, v0, :cond_0

    #@32
    add-int/lit8 v21, v13, 0x1

    #@34
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@37
    move-result v23

    #@38
    move/from16 v0, v21

    #@3a
    move/from16 v1, v23

    #@3c
    if-ge v0, v1, :cond_0

    #@3e
    .line 741
    add-int/lit8 v21, v13, 0x1

    #@40
    move/from16 v0, v21

    #@42
    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@45
    move-result-object v21

    #@46
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@49
    move-result-object v14

    #@4a
    .line 744
    .local v14, "numString":Ljava/lang/String;
    :try_start_2
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@4d
    move-result-wide v16

    #@4e
    .line 750
    .local v16, "parsedNum":J
    const/high16 v4, 0x100000

    #@50
    .line 753
    .local v4, "MiB":I
    :try_start_3
    const-string/jumbo v21, "bytes"

    #@53
    move-object/from16 v0, v21

    #@55
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@58
    move-result v21

    #@59
    if-eqz v21, :cond_2

    #@5b
    .line 754
    const-wide/32 v24, 0x100000

    #@5e
    div-long v24, v16, v24

    #@60
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@63
    move-result v15

    #@64
    .line 763
    .local v15, "scaled":I
    :goto_1
    :try_start_4
    const-string/jumbo v21, "time"

    #@67
    move-object/from16 v0, v21

    #@69
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6c
    move-result v21

    #@6d
    if-eqz v21, :cond_3

    #@6f
    .line 764
    move/from16 v19, v15

    #@71
    goto :goto_0

    #@72
    .line 745
    .end local v4    # "MiB":I
    .end local v15    # "scaled":I
    .end local v16    # "parsedNum":J
    :catch_0
    move-exception v9

    #@73
    .line 746
    .local v9, "ignored":Ljava/lang/NumberFormatException;
    const-string/jumbo v21, "RecoverySystem"

    #@76
    new-instance v23, Ljava/lang/StringBuilder;

    #@78
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string/jumbo v24, "Failed to parse numbers in "

    #@7e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v23

    #@82
    move-object/from16 v0, v23

    #@84
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v23

    #@88
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v23

    #@8c
    move-object/from16 v0, v21

    #@8e
    move-object/from16 v1, v23

    #@90
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@93
    goto :goto_0

    #@94
    .line 797
    .end local v9    # "ignored":Ljava/lang/NumberFormatException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "numIndex":I
    .end local v14    # "numString":Ljava/lang/String;
    :catch_1
    move-exception v21

    #@95
    move-object v10, v11

    #@96
    .end local v5    # "bytesStashedInMiB":I
    .end local v6    # "bytesWrittenInMiB":I
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v18    # "sourceVersion":I
    .end local v19    # "timeTotal":I
    .end local v20    # "uncryptTime":I
    :goto_2
    :try_start_5
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@97
    :catchall_0
    move-exception v22

    #@98
    move-object/from16 v26, v22

    #@9a
    move-object/from16 v22, v21

    #@9c
    move-object/from16 v21, v26

    #@9e
    :goto_3
    if-eqz v10, :cond_1

    #@a0
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    #@a3
    :cond_1
    :goto_4
    if-eqz v22, :cond_12

    #@a5
    :try_start_7
    throw v22
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    #@a6
    .line 795
    :catch_2
    move-exception v7

    #@a7
    .line 796
    .local v7, "e":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v21, "RecoverySystem"

    #@aa
    const-string/jumbo v22, "Failed to read lines in last_install"

    #@ad
    move-object/from16 v0, v21

    #@af
    move-object/from16 v1, v22

    #@b1
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b4
    .line 724
    .end local v7    # "e":Ljava/io/IOException;
    :goto_6
    return-void

    #@b5
    .line 756
    .restart local v4    # "MiB":I
    .restart local v5    # "bytesStashedInMiB":I
    .restart local v6    # "bytesWrittenInMiB":I
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "numIndex":I
    .restart local v14    # "numString":Ljava/lang/String;
    .restart local v16    # "parsedNum":J
    .restart local v18    # "sourceVersion":I
    .restart local v19    # "timeTotal":I
    .restart local v20    # "uncryptTime":I
    :cond_2
    :try_start_8
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_8
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@b8
    move-result v15

    #@b9
    .restart local v15    # "scaled":I
    goto :goto_1

    #@ba
    .line 758
    .end local v15    # "scaled":I
    :catch_3
    move-exception v8

    #@bb
    .line 759
    .local v8, "ignored":Ljava/lang/ArithmeticException;
    :try_start_9
    const-string/jumbo v21, "RecoverySystem"

    #@be
    new-instance v23, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v24, "Number overflows in "

    #@c6
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v23

    #@ca
    move-object/from16 v0, v23

    #@cc
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v23

    #@d0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v23

    #@d4
    move-object/from16 v0, v21

    #@d6
    move-object/from16 v1, v23

    #@d8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@db
    goto/16 :goto_0

    #@dd
    .line 797
    .end local v4    # "MiB":I
    .end local v8    # "ignored":Ljava/lang/ArithmeticException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "numIndex":I
    .end local v14    # "numString":Ljava/lang/String;
    .end local v16    # "parsedNum":J
    :catchall_1
    move-exception v21

    #@de
    move-object v10, v11

    #@df
    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    goto :goto_3

    #@e0
    .line 765
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "MiB":I
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "numIndex":I
    .restart local v14    # "numString":Ljava/lang/String;
    .restart local v15    # "scaled":I
    .restart local v16    # "parsedNum":J
    :cond_3
    const-string/jumbo v21, "uncrypt_time"

    #@e3
    move-object/from16 v0, v21

    #@e5
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@e8
    move-result v21

    #@e9
    if-eqz v21, :cond_4

    #@eb
    .line 766
    move/from16 v20, v15

    #@ed
    goto/16 :goto_0

    #@ef
    .line 767
    :cond_4
    const-string/jumbo v21, "source_build"

    #@f2
    move-object/from16 v0, v21

    #@f4
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f7
    move-result v21

    #@f8
    if-eqz v21, :cond_5

    #@fa
    .line 768
    move/from16 v18, v15

    #@fc
    goto/16 :goto_0

    #@fe
    .line 769
    :cond_5
    const-string/jumbo v21, "bytes_written"

    #@101
    move-object/from16 v0, v21

    #@103
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@106
    move-result v21

    #@107
    if-eqz v21, :cond_7

    #@109
    .line 770
    const/16 v21, -0x1

    #@10b
    move/from16 v0, v21

    #@10d
    if-ne v6, v0, :cond_6

    #@10f
    move v6, v15

    #@110
    goto/16 :goto_0

    #@112
    .line 771
    :cond_6
    add-int/2addr v6, v15

    #@113
    goto/16 :goto_0

    #@115
    .line 772
    :cond_7
    const-string/jumbo v21, "bytes_stashed"

    #@118
    move-object/from16 v0, v21

    #@11a
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11d
    move-result v21

    #@11e
    if-eqz v21, :cond_0

    #@120
    .line 773
    const/16 v21, -0x1

    #@122
    move/from16 v0, v21

    #@124
    if-ne v5, v0, :cond_8

    #@126
    move v5, v15

    #@127
    goto/16 :goto_0

    #@129
    .line 774
    :cond_8
    add-int/2addr v5, v15

    #@12a
    goto/16 :goto_0

    #@12c
    .line 779
    .end local v4    # "MiB":I
    .end local v13    # "numIndex":I
    .end local v14    # "numString":Ljava/lang/String;
    .end local v15    # "scaled":I
    .end local v16    # "parsedNum":J
    :cond_9
    const/16 v21, -0x1

    #@12e
    move/from16 v0, v19

    #@130
    move/from16 v1, v21

    #@132
    if-eq v0, v1, :cond_a

    #@134
    .line 780
    const-string/jumbo v21, "ota_time_total"

    #@137
    move-object/from16 v0, p0

    #@139
    move-object/from16 v1, v21

    #@13b
    move/from16 v2, v19

    #@13d
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@140
    .line 782
    :cond_a
    const/16 v21, -0x1

    #@142
    move/from16 v0, v20

    #@144
    move/from16 v1, v21

    #@146
    if-eq v0, v1, :cond_b

    #@148
    .line 783
    const-string/jumbo v21, "ota_uncrypt_time"

    #@14b
    move-object/from16 v0, p0

    #@14d
    move-object/from16 v1, v21

    #@14f
    move/from16 v2, v20

    #@151
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@154
    .line 785
    :cond_b
    const/16 v21, -0x1

    #@156
    move/from16 v0, v18

    #@158
    move/from16 v1, v21

    #@15a
    if-eq v0, v1, :cond_c

    #@15c
    .line 786
    const-string/jumbo v21, "ota_source_version"

    #@15f
    move-object/from16 v0, p0

    #@161
    move-object/from16 v1, v21

    #@163
    move/from16 v2, v18

    #@165
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@168
    .line 788
    :cond_c
    const/16 v21, -0x1

    #@16a
    move/from16 v0, v21

    #@16c
    if-eq v6, v0, :cond_d

    #@16e
    .line 789
    const-string/jumbo v21, "ota_written_in_MiBs"

    #@171
    move-object/from16 v0, p0

    #@173
    move-object/from16 v1, v21

    #@175
    invoke-static {v0, v1, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@178
    .line 791
    :cond_d
    const/16 v21, -0x1

    #@17a
    move/from16 v0, v21

    #@17c
    if-eq v5, v0, :cond_e

    #@17e
    .line 792
    const-string/jumbo v21, "ota_stashed_in_MiBs"

    #@181
    move-object/from16 v0, p0

    #@183
    move-object/from16 v1, v21

    #@185
    invoke-static {v0, v1, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    #@188
    .line 797
    :cond_e
    if-eqz v11, :cond_f

    #@18a
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    #@18d
    :cond_f
    :goto_7
    if-eqz v22, :cond_10

    #@18f
    :try_start_b
    throw v22
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    #@190
    .line 795
    :catch_4
    move-exception v7

    #@191
    .restart local v7    # "e":Ljava/io/IOException;
    move-object v10, v11

    #@192
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    #@194
    .line 797
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v22

    #@195
    goto :goto_7

    #@196
    :cond_10
    move-object v10, v11

    #@197
    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6

    #@199
    .end local v5    # "bytesStashedInMiB":I
    .end local v6    # "bytesWrittenInMiB":I
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .end local v18    # "sourceVersion":I
    .end local v19    # "timeTotal":I
    .end local v20    # "uncryptTime":I
    :catch_6
    move-exception v23

    #@19a
    if-nez v22, :cond_11

    #@19c
    move-object/from16 v22, v23

    #@19e
    goto/16 :goto_4

    #@1a0
    :cond_11
    move-object/from16 v0, v22

    #@1a2
    move-object/from16 v1, v23

    #@1a4
    if-eq v0, v1, :cond_1

    #@1a6
    :try_start_c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    #@1a9
    goto/16 :goto_4

    #@1ab
    :cond_12
    throw v21
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    #@1ac
    .local v10, "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v21

    #@1ad
    goto/16 :goto_3

    #@1af
    :catch_7
    move-exception v21

    #@1b0
    goto/16 :goto_2
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 402
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    #@4
    .line 401
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 344
    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v4, "/data/"

    #@7
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 345
    return-void

    #@e
    .line 348
    :cond_0
    const-string/jumbo v4, "recovery"

    #@11
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/os/RecoverySystem;

    #@17
    .line 349
    .local v3, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    #@18
    .line 350
    .local v2, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_1

    #@1a
    .line 352
    if-eqz p3, :cond_2

    #@1c
    .line 353
    move-object v1, p3

    #@1d
    .line 357
    .local v1, "progressHandler":Landroid/os/Handler;
    :goto_0
    new-instance v2, Landroid/os/RecoverySystem$2;

    #@1f
    .end local v2    # "progressListener":Landroid/os/IRecoverySystemProgressListener;
    invoke-direct {v2, v1, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    #@22
    .line 379
    .end local v1    # "progressHandler":Landroid/os/Handler;
    :cond_1
    invoke-direct {v3, v0, v2}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    #@25
    move-result v4

    #@26
    if-nez v4, :cond_3

    #@28
    .line 380
    new-instance v4, Ljava/io/IOException;

    #@2a
    const-string/jumbo v5, "process package failed"

    #@2d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@30
    throw v4

    #@31
    .line 355
    .restart local v2    # "progressListener":Landroid/os/IRecoverySystemProgressListener;
    :cond_2
    new-instance v1, Landroid/os/Handler;

    #@33
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@36
    move-result-object v4

    #@37
    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3a
    .restart local v1    # "progressHandler":Landroid/os/Handler;
    goto :goto_0

    #@3b
    .line 342
    .end local v1    # "progressHandler":Landroid/os/Handler;
    .end local v2    # "progressListener":Landroid/os/IRecoverySystemProgressListener;
    :cond_3
    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 918
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 916
    :goto_0
    return-void

    #@6
    .line 919
    :catch_0
    move-exception v0

    #@7
    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 686
    const/4 v3, 0x0

    #@1
    .line 687
    .local v3, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "--reason="

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 691
    .end local v3    # "reasonArg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 692
    .local v0, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "--wipe_package="

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 693
    .local v1, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "--locale="

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 694
    .local v2, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    #@54
    new-array v4, v4, [Ljava/lang/String;

    #@56
    const-string/jumbo v5, "--wipe_ab"

    #@59
    const/4 v6, 0x0

    #@5a
    aput-object v5, v4, v6

    #@5c
    const/4 v5, 0x1

    #@5d
    aput-object v1, v4, v5

    #@5f
    const/4 v5, 0x2

    #@60
    aput-object v3, v4, v5

    #@62
    const/4 v5, 0x3

    #@63
    aput-object v2, v4, v5

    #@65
    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    #@68
    .line 685
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    .line 657
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 663
    const/4 v1, 0x0

    #@1
    .line 664
    .local v1, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "--reason="

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 668
    .end local v1    # "reasonArg":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v3, "--locale="

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    .line 669
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    #@3c
    new-array v2, v2, [Ljava/lang/String;

    #@3e
    const-string/jumbo v3, "--wipe_cache"

    #@41
    const/4 v4, 0x0

    #@42
    aput-object v3, v2, v4

    #@44
    const/4 v3, 0x1

    #@45
    aput-object v1, v2, v3

    #@47
    const/4 v3, 0x2

    #@48
    aput-object v0, v2, v3

    #@4a
    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    #@4d
    .line 662
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    invoke-static {p0, v1, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V

    #@8
    .line 580
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 587
    invoke-static {p0, v0, p1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V

    #@4
    .line 586
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 593
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, p1, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V

    #@8
    .line 592
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 619
    const-string/jumbo v0, "user"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v13

    #@7
    check-cast v13, Landroid/os/UserManager;

    #@9
    .line 620
    .local v13, "um":Landroid/os/UserManager;
    if-nez p3, :cond_0

    #@b
    const-string/jumbo v0, "no_factory_reset"

    #@e
    invoke-virtual {v13, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 621
    new-instance v0, Ljava/lang/SecurityException;

    #@16
    const-string/jumbo v2, "Wiping data is not allowed for this user."

    #@19
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 623
    :cond_0
    new-instance v9, Landroid/os/ConditionVariable;

    #@1f
    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    #@22
    .line 625
    .local v9, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    #@24
    const-string/jumbo v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    #@27
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2a
    .line 626
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    #@2c
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2f
    .line 627
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@31
    .line 628
    const-string/jumbo v3, "android.permission.MASTER_CLEAR"

    #@34
    .line 629
    new-instance v4, Landroid/os/RecoverySystem$3;

    #@36
    invoke-direct {v4, v9}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    #@39
    .line 634
    const/4 v5, 0x0

    #@3a
    const/4 v6, 0x0

    #@3b
    const/4 v7, 0x0

    #@3c
    const/4 v8, 0x0

    #@3d
    move-object v0, p0

    #@3e
    .line 627
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@41
    .line 637
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    #@44
    .line 639
    const/4 v12, 0x0

    #@45
    .line 640
    .local v12, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@47
    .line 641
    const-string/jumbo v12, "--shutdown_after"

    #@4a
    .line 644
    .end local v12    # "shutdownArg":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@4b
    .line 645
    .local v11, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_2

    #@51
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "--reason="

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v11

    #@69
    .line 649
    .end local v11    # "reasonArg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "--locale="

    #@71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@78
    move-result-object v2

    #@79
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v10

    #@85
    .line 650
    .local v10, "localeArg":Ljava/lang/String;
    const/4 v0, 0x4

    #@86
    new-array v0, v0, [Ljava/lang/String;

    #@88
    const/4 v2, 0x0

    #@89
    aput-object v12, v0, v2

    #@8b
    const-string/jumbo v2, "--wipe_data"

    #@8e
    const/4 v3, 0x1

    #@8f
    aput-object v2, v0, v3

    #@91
    const/4 v2, 0x2

    #@92
    aput-object v11, v0, v2

    #@94
    const/4 v2, 0x3

    #@95
    aput-object v10, v0, v2

    #@97
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    #@9a
    .line 618
    return-void
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 6
    .param p0, "name"    # Ljava/io/File;

    #@0
    .prologue
    .line 864
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 865
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 866
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    #@d
    array-length v3, v1

    #@e
    if-ge v2, v3, :cond_0

    #@10
    .line 867
    new-instance v0, Ljava/io/File;

    #@12
    aget-object v3, v1, v2

    #@14
    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@17
    .line 868
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    #@1a
    .line 866
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 872
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 873
    const-string/jumbo v3, "RecoverySystem"

    #@26
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "Can\'t delete: "

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 863
    :goto_1
    return-void

    #@3e
    .line 875
    :cond_1
    const-string/jumbo v3, "RecoverySystem"

    #@41
    new-instance v4, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v5, "Deleted: "

    #@49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_1
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x3f

    #@2
    .line 928
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 929
    const/16 v0, 0xa

    #@9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    .line 930
    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 524
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 525
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v7, "_s.zip"

    #@7
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@a
    move-result v6

    #@b
    .line 529
    .local v6, "securityUpdate":Z
    const-string/jumbo v7, "/data/"

    #@e
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_0

    #@14
    .line 530
    const-string/jumbo v1, "@/cache/recovery/block.map"

    #@17
    .line 533
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v8, "--update_package="

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v7

    #@27
    const-string/jumbo v8, "\n"

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v7

    #@2e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 534
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v8, "--locale="

    #@3a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    const-string/jumbo v8, "\n"

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    .line 535
    .local v3, "localeArg":Ljava/lang/String;
    const-string/jumbo v5, "--security\n"

    #@58
    .line 537
    .local v5, "securityArg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    .line 538
    .local v0, "command":Ljava/lang/String;
    if-eqz v6, :cond_1

    #@6b
    .line 539
    new-instance v7, Ljava/lang/StringBuilder;

    #@6d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    const-string/jumbo v8, "--security\n"

    #@77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v7

    #@7b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    .line 542
    :cond_1
    const-string/jumbo v7, "recovery"

    #@82
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@85
    move-result-object v4

    #@86
    check-cast v4, Landroid/os/RecoverySystem;

    #@88
    .line 543
    .local v4, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v4, v0}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    #@8b
    move-result v7

    #@8c
    if-nez v7, :cond_2

    #@8e
    .line 544
    new-instance v7, Ljava/io/IOException;

    #@90
    const-string/jumbo v8, "schedule update on boot failed"

    #@93
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@96
    throw v7

    #@97
    .line 523
    :cond_2
    return-void
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    #@0
    .prologue
    .line 895
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    #@2
    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 896
    :catch_0
    move-exception v0

    #@8
    .line 898
    .local v0, "unused":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 2
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    #@0
    .prologue
    .line 884
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 885
    :catch_0
    move-exception v0

    #@8
    .line 887
    .local v0, "unused":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 30
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    #@3
    move-result-wide v3

    #@4
    .line 186
    .local v3, "fileLen":J
    new-instance v8, Ljava/io/RandomAccessFile;

    #@6
    const-string/jumbo v2, "r"

    #@9
    move-object/from16 v0, p0

    #@b
    invoke-direct {v8, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@e
    .line 188
    .local v8, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v6

    #@12
    .line 189
    .local v6, "startTimeMillis":J
    if-eqz p1, :cond_0

    #@14
    .line 190
    const/4 v2, 0x0

    #@15
    move-object/from16 v0, p1

    #@17
    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@1a
    .line 193
    :cond_0
    const-wide/16 v28, 0x6

    #@1c
    sub-long v28, v3, v28

    #@1e
    move-wide/from16 v0, v28

    #@20
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    #@23
    .line 194
    const/4 v2, 0x6

    #@24
    new-array v0, v2, [B

    #@26
    move-object/from16 v16, v0

    #@28
    .line 195
    .local v16, "footer":[B
    move-object/from16 v0, v16

    #@2a
    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@2d
    .line 197
    const/4 v2, 0x2

    #@2e
    aget-byte v2, v16, v2

    #@30
    const/4 v9, -0x1

    #@31
    if-ne v2, v9, :cond_1

    #@33
    const/4 v2, 0x3

    #@34
    aget-byte v2, v16, v2

    #@36
    const/4 v9, -0x1

    #@37
    if-eq v2, v9, :cond_2

    #@39
    .line 198
    :cond_1
    new-instance v2, Ljava/security/SignatureException;

    #@3b
    const-string/jumbo v9, "no signature in file (no footer)"

    #@3e
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    .line 317
    .end local v6    # "startTimeMillis":J
    .end local v16    # "footer":[B
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    #@43
    .line 318
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    #@46
    .line 317
    throw v2

    #@47
    .line 201
    .restart local v6    # "startTimeMillis":J
    .restart local v16    # "footer":[B
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/4 v2, 0x4

    #@48
    :try_start_1
    aget-byte v2, v16, v2

    #@4a
    and-int/lit16 v2, v2, 0xff

    #@4c
    const/4 v9, 0x5

    #@4d
    aget-byte v9, v16, v9

    #@4f
    and-int/lit16 v9, v9, 0xff

    #@51
    shl-int/lit8 v9, v9, 0x8

    #@53
    or-int v5, v2, v9

    #@55
    .line 202
    .local v5, "commentSize":I
    const/4 v2, 0x0

    #@56
    aget-byte v2, v16, v2

    #@58
    and-int/lit16 v2, v2, 0xff

    #@5a
    const/4 v9, 0x1

    #@5b
    aget-byte v9, v16, v9

    #@5d
    and-int/lit16 v9, v9, 0xff

    #@5f
    shl-int/lit8 v9, v9, 0x8

    #@61
    or-int v21, v2, v9

    #@63
    .line 204
    .local v21, "signatureStart":I
    add-int/lit8 v2, v5, 0x16

    #@65
    new-array v15, v2, [B

    #@67
    .line 205
    .local v15, "eocd":[B
    add-int/lit8 v2, v5, 0x16

    #@69
    int-to-long v0, v2

    #@6a
    move-wide/from16 v28, v0

    #@6c
    sub-long v28, v3, v28

    #@6e
    move-wide/from16 v0, v28

    #@70
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    #@73
    .line 206
    invoke-virtual {v8, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@76
    .line 210
    const/4 v2, 0x0

    #@77
    aget-byte v2, v15, v2

    #@79
    const/16 v9, 0x50

    #@7b
    if-ne v2, v9, :cond_3

    #@7d
    const/4 v2, 0x1

    #@7e
    aget-byte v2, v15, v2

    #@80
    const/16 v9, 0x4b

    #@82
    if-eq v2, v9, :cond_4

    #@84
    .line 212
    :cond_3
    new-instance v2, Ljava/security/SignatureException;

    #@86
    const-string/jumbo v9, "no signature in file (bad footer)"

    #@89
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v2

    #@8d
    .line 211
    :cond_4
    const/4 v2, 0x2

    #@8e
    aget-byte v2, v15, v2

    #@90
    const/4 v9, 0x5

    #@91
    if-ne v2, v9, :cond_3

    #@93
    const/4 v2, 0x3

    #@94
    aget-byte v2, v15, v2

    #@96
    const/4 v9, 0x6

    #@97
    if-ne v2, v9, :cond_3

    #@99
    .line 215
    const/16 v17, 0x4

    #@9b
    .local v17, "i":I
    :goto_0
    array-length v2, v15

    #@9c
    add-int/lit8 v2, v2, -0x3

    #@9e
    move/from16 v0, v17

    #@a0
    if-ge v0, v2, :cond_6

    #@a2
    .line 216
    aget-byte v2, v15, v17

    #@a4
    const/16 v9, 0x50

    #@a6
    if-ne v2, v9, :cond_5

    #@a8
    add-int/lit8 v2, v17, 0x1

    #@aa
    aget-byte v2, v15, v2

    #@ac
    const/16 v9, 0x4b

    #@ae
    if-ne v2, v9, :cond_5

    #@b0
    .line 217
    add-int/lit8 v2, v17, 0x2

    #@b2
    aget-byte v2, v15, v2

    #@b4
    const/4 v9, 0x5

    #@b5
    if-ne v2, v9, :cond_5

    #@b7
    add-int/lit8 v2, v17, 0x3

    #@b9
    aget-byte v2, v15, v2

    #@bb
    const/4 v9, 0x6

    #@bc
    if-ne v2, v9, :cond_5

    #@be
    .line 218
    new-instance v2, Ljava/security/SignatureException;

    #@c0
    const-string/jumbo v9, "EOCD marker found after start of EOCD"

    #@c3
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v2

    #@c7
    .line 215
    :cond_5
    add-int/lit8 v17, v17, 0x1

    #@c9
    goto :goto_0

    #@ca
    .line 224
    :cond_6
    new-instance v10, Lsun/security/pkcs/PKCS7;

    #@cc
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@ce
    add-int/lit8 v9, v5, 0x16

    #@d0
    sub-int v9, v9, v21

    #@d2
    move/from16 v0, v21

    #@d4
    invoke-direct {v2, v15, v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@d7
    invoke-direct {v10, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    #@da
    .line 228
    .local v10, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    #@dd
    move-result-object v14

    #@de
    .line 229
    .local v14, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v14, :cond_7

    #@e0
    array-length v2, v14

    #@e1
    if-nez v2, :cond_8

    #@e3
    .line 230
    :cond_7
    new-instance v2, Ljava/security/SignatureException;

    #@e5
    const-string/jumbo v9, "signature contains no certificates"

    #@e8
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v2

    #@ec
    .line 232
    :cond_8
    const/4 v2, 0x0

    #@ed
    aget-object v13, v14, v2

    #@ef
    .line 233
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@f2
    move-result-object v20

    #@f3
    .line 235
    .local v20, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    #@f6
    move-result-object v23

    #@f7
    .line 236
    .local v23, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v23, :cond_9

    #@f9
    move-object/from16 v0, v23

    #@fb
    array-length v2, v0

    #@fc
    if-nez v2, :cond_a

    #@fe
    .line 237
    :cond_9
    new-instance v2, Ljava/security/SignatureException;

    #@100
    const-string/jumbo v9, "signature contains no signedData"

    #@103
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@106
    throw v2

    #@107
    .line 239
    :cond_a
    const/4 v2, 0x0

    #@108
    aget-object v22, v23, v2

    #@10a
    .line 243
    .local v22, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v25, 0x0

    #@10c
    .line 245
    .local v25, "verified":Z
    if-nez p2, :cond_b

    #@10e
    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    #@110
    .line 244
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    #@113
    move-result-object v24

    #@114
    .line 246
    .local v24, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@117
    move-result-object v12

    #@118
    .local v12, "c$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@11b
    move-result v2

    #@11c
    if-eqz v2, :cond_d

    #@11e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@121
    move-result-object v11

    #@122
    check-cast v11, Ljava/security/cert/X509Certificate;

    #@124
    .line 247
    .local v11, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@127
    move-result-object v2

    #@128
    move-object/from16 v0, v20

    #@12a
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@12d
    move-result v2

    #@12e
    if-eqz v2, :cond_c

    #@130
    .line 248
    const/16 v25, 0x1

    #@132
    .line 252
    .end local v11    # "c":Ljava/security/cert/X509Certificate;
    :cond_d
    if-nez v25, :cond_e

    #@134
    .line 253
    new-instance v2, Ljava/security/SignatureException;

    #@136
    const-string/jumbo v9, "signature doesn\'t match any trusted key"

    #@139
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@13c
    throw v2

    #@13d
    .line 258
    :cond_e
    const-wide/16 v28, 0x0

    #@13f
    move-wide/from16 v0, v28

    #@141
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    #@144
    .line 259
    move-object/from16 v19, p1

    #@146
    .line 260
    .local v19, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    new-instance v2, Landroid/os/RecoverySystem$1;

    #@148
    move-object/from16 v9, p1

    #@14a
    invoke-direct/range {v2 .. v9}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    #@14d
    move-object/from16 v0, v22

    #@14f
    invoke-virtual {v10, v0, v2}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    #@152
    move-result-object v26

    #@153
    .line 305
    .local v26, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@156
    move-result v18

    #@157
    .line 306
    .local v18, "interrupted":Z
    if-eqz p1, :cond_f

    #@159
    .line 307
    const/16 v2, 0x64

    #@15b
    move-object/from16 v0, p1

    #@15d
    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@160
    .line 310
    :cond_f
    if-eqz v18, :cond_10

    #@162
    .line 311
    new-instance v2, Ljava/security/SignatureException;

    #@164
    const-string/jumbo v9, "verification was interrupted"

    #@167
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@16a
    throw v2

    #@16b
    .line 314
    :cond_10
    if-nez v26, :cond_11

    #@16d
    .line 315
    new-instance v2, Ljava/security/SignatureException;

    #@16f
    const-string/jumbo v9, "signature digest verification failed"

    #@172
    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@175
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@176
    .line 318
    :cond_11
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    #@179
    .line 183
    return-void
.end method
