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
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static LAST_PREFIX:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field private static UNCRYPT_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/system/etc/security/otacerts.zip"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 65
    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    #@a
    .line 72
    new-instance v0, Ljava/io/File;

    #@c
    const-string/jumbo v1, "/cache/recovery"

    #@f
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@14
    .line 73
    new-instance v0, Ljava/io/File;

    #@16
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@18
    const-string/jumbo v2, "command"

    #@1b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    #@20
    .line 74
    new-instance v0, Ljava/io/File;

    #@22
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@24
    const-string/jumbo v2, "uncrypt_file"

    #@27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2a
    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    #@2c
    .line 75
    new-instance v0, Ljava/io/File;

    #@2e
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@30
    const-string/jumbo v2, "log"

    #@33
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@36
    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@38
    .line 76
    const-string/jumbo v0, "last_"

    #@3b
    sput-object v0, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    #@3d
    .line 79
    const/high16 v0, 0x10000

    #@3f
    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    #@41
    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
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
    .line 464
    sget-object v3, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@2
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@5
    .line 465
    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    #@7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@a
    .line 466
    sget-object v3, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@f
    .line 468
    new-instance v1, Ljava/io/FileWriter;

    #@11
    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    #@13
    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #@16
    .line 470
    .local v1, "command":Ljava/io/FileWriter;
    const/4 v3, 0x0

    #@17
    :try_start_0
    array-length v4, p1

    #@18
    :goto_0
    if-ge v3, v4, :cond_1

    #@1a
    aget-object v0, p1, v3

    #@1c
    .line 471
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v5

    #@20
    if-nez v5, :cond_0

    #@22
    .line 472
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    #@25
    .line 473
    const-string/jumbo v5, "\n"

    #@28
    invoke-virtual {v1, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 470
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 477
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    #@31
    .line 481
    const-string/jumbo v3, "power"

    #@34
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@37
    move-result-object v2

    #@38
    check-cast v2, Landroid/os/PowerManager;

    #@3a
    .line 482
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "recovery"

    #@3d
    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    #@40
    .line 484
    new-instance v3, Ljava/io/IOException;

    #@42
    const-string/jumbo v4, "Reboot failed (no permissions?)"

    #@45
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3

    #@49
    .line 476
    .end local v2    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v3

    #@4a
    .line 477
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    #@4d
    .line 476
    throw v3
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
    .line 99
    new-instance v4, Ljava/util/HashSet;

    #@2
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 100
    .local v4, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    #@7
    .line 101
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    #@9
    .line 103
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    #@b
    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    #@e
    .line 105
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string/jumbo v6, "X.509"

    #@11
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@14
    move-result-object v0

    #@15
    .line 106
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    #@18
    move-result-object v1

    #@19
    .line 107
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 108
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/util/zip/ZipEntry;

    #@25
    .line 109
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result-object v3

    #@29
    .line 111
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
    .line 113
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 116
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    #@37
    .line 117
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    #@3a
    .line 116
    throw v6

    #@3b
    .line 112
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    #@3c
    .line 113
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    #@3f
    .line 112
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    .line 117
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    #@43
    .line 119
    return-object v4
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    .line 495
    const/4 v4, 0x0

    #@1
    .line 497
    .local v4, "log":Ljava/lang/String;
    :try_start_0
    sget-object v6, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    #@3
    sget v7, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    #@5
    neg-int v7, v7

    #@6
    const-string/jumbo v8, "...\n"

    #@9
    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v4

    #@d
    .line 506
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@f
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "log":Ljava/lang/String;
    .local v5, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    #@14
    .local v3, "i":I
    :goto_1
    if-eqz v5, :cond_2

    #@16
    array-length v6, v5

    #@17
    if-ge v3, v6, :cond_2

    #@19
    .line 508
    aget-object v6, v5, v3

    #@1b
    sget-object v7, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    #@1d
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v6

    #@21
    if-eqz v6, :cond_0

    #@23
    .line 507
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@25
    goto :goto_1

    #@26
    .line 500
    .end local v3    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    .restart local v4    # "log":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@27
    .line 501
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "RecoverySystem"

    #@2a
    const-string/jumbo v7, "Error reading recovery log"

    #@2d
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    goto :goto_0

    #@31
    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@32
    .line 499
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "RecoverySystem"

    #@35
    const-string/jumbo v7, "No recovery log file"

    #@38
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 509
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "log":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "names":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    #@3e
    sget-object v6, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    #@40
    aget-object v7, v5, v3

    #@42
    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@45
    .line 510
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@48
    move-result v6

    #@49
    if-nez v6, :cond_1

    #@4b
    .line 511
    const-string/jumbo v6, "RecoverySystem"

    #@4e
    new-instance v7, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v8, "Can\'t delete: "

    #@56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v7

    #@5e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v7

    #@62
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_2

    #@66
    .line 513
    :cond_1
    const-string/jumbo v6, "RecoverySystem"

    #@69
    new-instance v7, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v8, "Deleted: "

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v7

    #@75
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v7

    #@7d
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    goto :goto_2

    #@81
    .line 517
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    return-object v4
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 338
    .local v0, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/FileWriter;

    #@6
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_FILE:Ljava/io/File;

    #@8
    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    #@b
    .line 340
    .local v3, "uncryptFile":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const-string/jumbo v5, "\n"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 342
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    #@25
    .line 344
    const-string/jumbo v4, "RecoverySystem"

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "!!! REBOOTING TO INSTALL "

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    const-string/jumbo v6, " !!!"

    #@3b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 348
    const-string/jumbo v4, "/data/"

    #@49
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_0

    #@4f
    .line 349
    const-string/jumbo v0, "@/cache/recovery/block.map"

    #@52
    .line 352
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v5, "--update_package="

    #@5a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    .line 353
    .local v1, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v5, "--locale="

    #@6e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    .line 354
    .local v2, "localeArg":Ljava/lang/String;
    const/4 v4, 0x2

    #@83
    new-array v4, v4, [Ljava/lang/String;

    #@85
    const/4 v5, 0x0

    #@86
    aput-object v1, v4, v5

    #@88
    const/4 v5, 0x1

    #@89
    aput-object v2, v4, v5

    #@8b
    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    #@8e
    .line 335
    return-void

    #@8f
    .line 341
    .end local v1    # "filenameArg":Ljava/lang/String;
    .end local v2    # "localeArg":Ljava/lang/String;
    :catchall_0
    move-exception v4

    #@90
    .line 342
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    #@93
    .line 341
    throw v4
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
    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    .line 443
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
    .line 449
    const/4 v1, 0x0

    #@1
    .line 450
    .local v1, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 451
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
    .line 454
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
    .line 455
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
    .line 448
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
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    #@8
    .line 370
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
    .line 376
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    #@4
    .line 375
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    #@7
    .line 381
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    const-string/jumbo v0, "user"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v13

    #@7
    check-cast v13, Landroid/os/UserManager;

    #@9
    .line 406
    .local v13, "um":Landroid/os/UserManager;
    const-string/jumbo v0, "no_factory_reset"

    #@c
    invoke-virtual {v13, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 407
    new-instance v0, Ljava/lang/SecurityException;

    #@14
    const-string/jumbo v2, "Wiping data is not allowed for this user."

    #@17
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 409
    :cond_0
    new-instance v9, Landroid/os/ConditionVariable;

    #@1d
    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    #@20
    .line 411
    .local v9, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    #@22
    const-string/jumbo v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    #@25
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@28
    .line 412
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    #@2a
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@2d
    .line 413
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@2f
    .line 414
    const-string/jumbo v3, "android.permission.MASTER_CLEAR"

    #@32
    .line 415
    new-instance v4, Landroid/os/RecoverySystem$1;

    #@34
    invoke-direct {v4, v9}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    #@37
    .line 420
    const/4 v5, 0x0

    #@38
    const/4 v6, 0x0

    #@39
    const/4 v7, 0x0

    #@3a
    const/4 v8, 0x0

    #@3b
    move-object v0, p0

    #@3c
    .line 413
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@3f
    .line 423
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    #@42
    .line 425
    const/4 v12, 0x0

    #@43
    .line 426
    .local v12, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    #@45
    .line 427
    const-string/jumbo v12, "--shutdown_after"

    #@48
    .line 430
    .end local v12    # "shutdownArg":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    #@49
    .line 431
    .local v11, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_2

    #@4f
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "--reason="

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v11

    #@67
    .line 435
    .end local v11    # "reasonArg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v2, "--locale="

    #@6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v10

    #@83
    .line 436
    .local v10, "localeArg":Ljava/lang/String;
    const/4 v0, 0x4

    #@84
    new-array v0, v0, [Ljava/lang/String;

    #@86
    const/4 v2, 0x0

    #@87
    aput-object v12, v0, v2

    #@89
    const-string/jumbo v2, "--wipe_data"

    #@8c
    const/4 v3, 0x1

    #@8d
    aput-object v2, v0, v3

    #@8f
    const/4 v2, 0x2

    #@90
    aput-object v11, v0, v2

    #@92
    const/4 v2, 0x3

    #@93
    aput-object v10, v0, v2

    #@95
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    #@98
    .line 404
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0x3f

    #@2
    .line 525
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@6
    move-result-object p0

    #@7
    .line 526
    const/16 v0, 0xa

    #@9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@c
    move-result-object p0

    #@d
    .line 527
    return-object p0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 50
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
    .line 153
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    #@3
    move-result-wide v16

    #@4
    .line 155
    .local v16, "fileLen":J
    new-instance v30, Ljava/io/RandomAccessFile;

    #@6
    const-string/jumbo v45, "r"

    #@9
    move-object/from16 v0, v30

    #@b
    move-object/from16 v1, p0

    #@d
    move-object/from16 v2, v45

    #@f
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@12
    .line 157
    .local v30, "raf":Ljava/io/RandomAccessFile;
    const/16 v24, 0x0

    #@14
    .line 158
    .local v24, "lastPercent":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@17
    move-result-wide v26

    #@18
    .line 159
    .local v26, "lastPublishTime":J
    if-eqz p1, :cond_0

    #@1a
    .line 160
    move-object/from16 v0, p1

    #@1c
    move/from16 v1, v24

    #@1e
    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@21
    .line 163
    :cond_0
    const-wide/16 v46, 0x6

    #@23
    sub-long v46, v16, v46

    #@25
    move-object/from16 v0, v30

    #@27
    move-wide/from16 v1, v46

    #@29
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@2c
    .line 164
    const/16 v45, 0x6

    #@2e
    move/from16 v0, v45

    #@30
    new-array v0, v0, [B

    #@32
    move-object/from16 v18, v0

    #@34
    .line 165
    .local v18, "footer":[B
    move-object/from16 v0, v30

    #@36
    move-object/from16 v1, v18

    #@38
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@3b
    .line 167
    const/16 v45, 0x2

    #@3d
    aget-byte v45, v18, v45

    #@3f
    const/16 v46, -0x1

    #@41
    move/from16 v0, v45

    #@43
    move/from16 v1, v46

    #@45
    if-ne v0, v1, :cond_1

    #@47
    const/16 v45, 0x3

    #@49
    aget-byte v45, v18, v45

    #@4b
    const/16 v46, -0x1

    #@4d
    move/from16 v0, v45

    #@4f
    move/from16 v1, v46

    #@51
    if-eq v0, v1, :cond_2

    #@53
    .line 168
    :cond_1
    new-instance v45, Ljava/security/SignatureException;

    #@55
    const-string/jumbo v46, "no signature in file (no footer)"

    #@58
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v45
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5c
    .line 315
    .end local v18    # "footer":[B
    .end local v26    # "lastPublishTime":J
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v45

    #@5d
    .line 316
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    #@60
    .line 315
    throw v45

    #@61
    .line 171
    .restart local v18    # "footer":[B
    .restart local v26    # "lastPublishTime":J
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/16 v45, 0x4

    #@63
    :try_start_1
    aget-byte v45, v18, v45

    #@65
    move/from16 v0, v45

    #@67
    and-int/lit16 v0, v0, 0xff

    #@69
    move/from16 v45, v0

    #@6b
    const/16 v46, 0x5

    #@6d
    aget-byte v46, v18, v46

    #@6f
    move/from16 v0, v46

    #@71
    and-int/lit16 v0, v0, 0xff

    #@73
    move/from16 v46, v0

    #@75
    shl-int/lit8 v46, v46, 0x8

    #@77
    or-int v11, v45, v46

    #@79
    .line 172
    .local v11, "commentSize":I
    const/16 v45, 0x0

    #@7b
    aget-byte v45, v18, v45

    #@7d
    move/from16 v0, v45

    #@7f
    and-int/lit16 v0, v0, 0xff

    #@81
    move/from16 v45, v0

    #@83
    const/16 v46, 0x1

    #@85
    aget-byte v46, v18, v46

    #@87
    move/from16 v0, v46

    #@89
    and-int/lit16 v0, v0, 0xff

    #@8b
    move/from16 v46, v0

    #@8d
    shl-int/lit8 v46, v46, 0x8

    #@8f
    or-int v36, v45, v46

    #@91
    .line 174
    .local v36, "signatureStart":I
    add-int/lit8 v45, v11, 0x16

    #@93
    move/from16 v0, v45

    #@95
    new-array v15, v0, [B

    #@97
    .line 175
    .local v15, "eocd":[B
    add-int/lit8 v45, v11, 0x16

    #@99
    move/from16 v0, v45

    #@9b
    int-to-long v0, v0

    #@9c
    move-wide/from16 v46, v0

    #@9e
    sub-long v46, v16, v46

    #@a0
    move-object/from16 v0, v30

    #@a2
    move-wide/from16 v1, v46

    #@a4
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@a7
    .line 176
    move-object/from16 v0, v30

    #@a9
    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@ac
    .line 180
    const/16 v45, 0x0

    #@ae
    aget-byte v45, v15, v45

    #@b0
    const/16 v46, 0x50

    #@b2
    move/from16 v0, v45

    #@b4
    move/from16 v1, v46

    #@b6
    if-ne v0, v1, :cond_3

    #@b8
    const/16 v45, 0x1

    #@ba
    aget-byte v45, v15, v45

    #@bc
    const/16 v46, 0x4b

    #@be
    move/from16 v0, v45

    #@c0
    move/from16 v1, v46

    #@c2
    if-eq v0, v1, :cond_4

    #@c4
    .line 182
    :cond_3
    new-instance v45, Ljava/security/SignatureException;

    #@c6
    const-string/jumbo v46, "no signature in file (bad footer)"

    #@c9
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v45

    #@cd
    .line 181
    :cond_4
    const/16 v45, 0x2

    #@cf
    aget-byte v45, v15, v45

    #@d1
    const/16 v46, 0x5

    #@d3
    move/from16 v0, v45

    #@d5
    move/from16 v1, v46

    #@d7
    if-ne v0, v1, :cond_3

    #@d9
    const/16 v45, 0x3

    #@db
    aget-byte v45, v15, v45

    #@dd
    const/16 v46, 0x6

    #@df
    move/from16 v0, v45

    #@e1
    move/from16 v1, v46

    #@e3
    if-ne v0, v1, :cond_3

    #@e5
    .line 185
    const/16 v19, 0x4

    #@e7
    .local v19, "i":I
    :goto_0
    array-length v0, v15

    #@e8
    move/from16 v45, v0

    #@ea
    add-int/lit8 v45, v45, -0x3

    #@ec
    move/from16 v0, v19

    #@ee
    move/from16 v1, v45

    #@f0
    if-ge v0, v1, :cond_6

    #@f2
    .line 186
    aget-byte v45, v15, v19

    #@f4
    const/16 v46, 0x50

    #@f6
    move/from16 v0, v45

    #@f8
    move/from16 v1, v46

    #@fa
    if-ne v0, v1, :cond_5

    #@fc
    add-int/lit8 v45, v19, 0x1

    #@fe
    aget-byte v45, v15, v45

    #@100
    const/16 v46, 0x4b

    #@102
    move/from16 v0, v45

    #@104
    move/from16 v1, v46

    #@106
    if-ne v0, v1, :cond_5

    #@108
    .line 187
    add-int/lit8 v45, v19, 0x2

    #@10a
    aget-byte v45, v15, v45

    #@10c
    const/16 v46, 0x5

    #@10e
    move/from16 v0, v45

    #@110
    move/from16 v1, v46

    #@112
    if-ne v0, v1, :cond_5

    #@114
    add-int/lit8 v45, v19, 0x3

    #@116
    aget-byte v45, v15, v45

    #@118
    const/16 v46, 0x6

    #@11a
    move/from16 v0, v45

    #@11c
    move/from16 v1, v46

    #@11e
    if-ne v0, v1, :cond_5

    #@120
    .line 188
    new-instance v45, Ljava/security/SignatureException;

    #@122
    const-string/jumbo v46, "EOCD marker found after start of EOCD"

    #@125
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@128
    throw v45

    #@129
    .line 185
    :cond_5
    add-int/lit8 v19, v19, 0x1

    #@12b
    goto :goto_0

    #@12c
    .line 198
    :cond_6
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    #@12e
    .line 199
    new-instance v45, Ljava/io/ByteArrayInputStream;

    #@130
    add-int/lit8 v46, v11, 0x16

    #@132
    sub-int v46, v46, v36

    #@134
    move-object/from16 v0, v45

    #@136
    move/from16 v1, v46

    #@138
    move/from16 v2, v36

    #@13a
    invoke-direct {v0, v15, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@13d
    .line 198
    move-object/from16 v0, v45

    #@13f
    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    #@142
    .line 200
    .local v5, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v45, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@144
    move-object/from16 v0, v45

    #@146
    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    #@149
    move-result-object v20

    #@14a
    check-cast v20, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    #@14c
    .line 201
    .local v20, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    #@14f
    move-result-object v37

    #@150
    .line 202
    .local v37, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v37, :cond_7

    #@152
    .line 203
    new-instance v45, Ljava/io/IOException;

    #@154
    const-string/jumbo v46, "signedData is null"

    #@157
    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15a
    throw v45

    #@15b
    .line 205
    :cond_7
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    #@15e
    move-result-object v14

    #@15f
    .line 206
    .local v14, "encCerts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    #@162
    move-result v45

    #@163
    if-eqz v45, :cond_8

    #@165
    .line 207
    new-instance v45, Ljava/io/IOException;

    #@167
    const-string/jumbo v46, "encCerts is empty"

    #@16a
    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16d
    throw v45

    #@16e
    .line 211
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@171
    move-result-object v23

    #@172
    .line 212
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Certificate;>;"
    const/4 v9, 0x0

    #@173
    .line 213
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@176
    move-result v45

    #@177
    if-eqz v45, :cond_c

    #@179
    .line 214
    const-string/jumbo v45, "X.509"

    #@17c
    invoke-static/range {v45 .. v45}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@17f
    move-result-object v10

    #@180
    .line 215
    .local v10, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v22, Ljava/io/ByteArrayInputStream;

    #@182
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@185
    move-result-object v45

    #@186
    check-cast v45, Lorg/apache/harmony/security/x509/Certificate;

    #@188
    invoke-virtual/range {v45 .. v45}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    #@18b
    move-result-object v45

    #@18c
    move-object/from16 v0, v22

    #@18e
    move-object/from16 v1, v45

    #@190
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@193
    .line 216
    .local v22, "is":Ljava/io/InputStream;
    move-object/from16 v0, v22

    #@195
    invoke-virtual {v10, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@198
    move-result-object v9

    #@199
    .end local v9    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v9, Ljava/security/cert/X509Certificate;

    #@19b
    .line 221
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    #@19e
    move-result-object v34

    #@19f
    .line 223
    .local v34, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    #@1a2
    move-result v45

    #@1a3
    if-nez v45, :cond_d

    #@1a5
    .line 224
    const/16 v45, 0x0

    #@1a7
    move-object/from16 v0, v34

    #@1a9
    move/from16 v1, v45

    #@1ab
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1ae
    move-result-object v33

    #@1af
    check-cast v33, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    #@1b1
    .line 233
    .local v33, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_9

    #@1b3
    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    #@1b5
    .line 232
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    #@1b8
    move-result-object v39

    #@1b9
    .line 235
    .local v39, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1bc
    move-result-object v35

    #@1bd
    .line 236
    .local v35, "signatureKey":Ljava/security/PublicKey;
    const/16 v44, 0x0

    #@1bf
    .line 237
    .local v44, "verified":Z
    invoke-interface/range {v39 .. v39}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c2
    move-result-object v8

    #@1c3
    .local v8, "c$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1c6
    move-result v45

    #@1c7
    if-eqz v45, :cond_b

    #@1c9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1cc
    move-result-object v7

    #@1cd
    check-cast v7, Ljava/security/cert/X509Certificate;

    #@1cf
    .line 238
    .local v7, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@1d2
    move-result-object v45

    #@1d3
    move-object/from16 v0, v45

    #@1d5
    move-object/from16 v1, v35

    #@1d7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1da
    move-result v45

    #@1db
    if-eqz v45, :cond_a

    #@1dd
    .line 239
    const/16 v44, 0x1

    #@1df
    .line 243
    .end local v7    # "c":Ljava/security/cert/X509Certificate;
    :cond_b
    if-nez v44, :cond_e

    #@1e1
    .line 244
    new-instance v45, Ljava/security/SignatureException;

    #@1e3
    const-string/jumbo v46, "signature doesn\'t match any trusted key"

    #@1e6
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1e9
    throw v45

    #@1ea
    .line 218
    .end local v8    # "c$iterator":Ljava/util/Iterator;
    .end local v10    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    .end local v35    # "signatureKey":Ljava/security/PublicKey;
    .end local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v44    # "verified":Z
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_c
    new-instance v45, Ljava/security/SignatureException;

    #@1ec
    const-string/jumbo v46, "signature contains no certificates"

    #@1ef
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@1f2
    throw v45

    #@1f3
    .line 226
    .local v9, "cert":Ljava/security/cert/X509Certificate;
    .restart local v10    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    :cond_d
    new-instance v45, Ljava/io/IOException;

    #@1f5
    const-string/jumbo v46, "no signer infos!"

    #@1f8
    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1fb
    throw v45

    #@1fc
    .line 262
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    .restart local v8    # "c$iterator":Ljava/util/Iterator;
    .restart local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v35    # "signatureKey":Ljava/security/PublicKey;
    .restart local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v44    # "verified":Z
    :cond_e
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    #@1ff
    move-result-object v12

    #@200
    .line 263
    .local v12, "da":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    #@203
    move-result-object v13

    #@204
    .line 264
    .local v13, "dea":Ljava/lang/String;
    const/4 v4, 0x0

    #@205
    .line 265
    .local v4, "alg":Ljava/lang/String;
    if-eqz v12, :cond_f

    #@207
    if-nez v13, :cond_13

    #@209
    .line 268
    :cond_f
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    #@20c
    move-result-object v4

    #@20d
    .line 272
    .local v4, "alg":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@210
    move-result-object v32

    #@211
    .line 273
    .local v32, "sig":Ljava/security/Signature;
    move-object/from16 v0, v32

    #@213
    invoke-virtual {v0, v9}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    #@216
    .line 277
    int-to-long v0, v11

    #@217
    move-wide/from16 v46, v0

    #@219
    sub-long v46, v16, v46

    #@21b
    const-wide/16 v48, 0x2

    #@21d
    sub-long v42, v46, v48

    #@21f
    .line 278
    .local v42, "toRead":J
    const-wide/16 v40, 0x0

    #@221
    .line 279
    .local v40, "soFar":J
    const-wide/16 v46, 0x0

    #@223
    move-object/from16 v0, v30

    #@225
    move-wide/from16 v1, v46

    #@227
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@22a
    .line 280
    const/16 v45, 0x1000

    #@22c
    move/from16 v0, v45

    #@22e
    new-array v6, v0, [B

    #@230
    .line 281
    .local v6, "buffer":[B
    const/16 v21, 0x0

    #@232
    .line 282
    :cond_10
    :goto_2
    cmp-long v45, v40, v42

    #@234
    if-gez v45, :cond_11

    #@236
    .line 283
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    #@239
    move-result v21

    #@23a
    .line 284
    .local v21, "interrupted":Z
    if-eqz v21, :cond_14

    #@23c
    .line 304
    .end local v21    # "interrupted":Z
    :cond_11
    if-eqz p1, :cond_12

    #@23e
    .line 305
    const/16 v45, 0x64

    #@240
    move-object/from16 v0, p1

    #@242
    move/from16 v1, v45

    #@244
    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@247
    .line 308
    :cond_12
    if-eqz v21, :cond_16

    #@249
    .line 309
    new-instance v45, Ljava/security/SignatureException;

    #@24b
    const-string/jumbo v46, "verification was interrupted"

    #@24e
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@251
    throw v45

    #@252
    .line 270
    .end local v6    # "buffer":[B
    .end local v32    # "sig":Ljava/security/Signature;
    .end local v40    # "soFar":J
    .end local v42    # "toRead":J
    .local v4, "alg":Ljava/lang/String;
    :cond_13
    new-instance v45, Ljava/lang/StringBuilder;

    #@254
    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    #@257
    move-object/from16 v0, v45

    #@259
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25c
    move-result-object v45

    #@25d
    const-string/jumbo v46, "with"

    #@260
    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@263
    move-result-object v45

    #@264
    move-object/from16 v0, v45

    #@266
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@269
    move-result-object v45

    #@26a
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26d
    move-result-object v4

    #@26e
    .local v4, "alg":Ljava/lang/String;
    goto :goto_1

    #@26f
    .line 285
    .restart local v6    # "buffer":[B
    .restart local v21    # "interrupted":Z
    .restart local v32    # "sig":Ljava/security/Signature;
    .restart local v40    # "soFar":J
    .restart local v42    # "toRead":J
    :cond_14
    array-length v0, v6

    #@270
    move/from16 v38, v0

    #@272
    .line 286
    .local v38, "size":I
    move/from16 v0, v38

    #@274
    int-to-long v0, v0

    #@275
    move-wide/from16 v46, v0

    #@277
    add-long v46, v46, v40

    #@279
    cmp-long v45, v46, v42

    #@27b
    if-lez v45, :cond_15

    #@27d
    .line 287
    sub-long v46, v42, v40

    #@27f
    move-wide/from16 v0, v46

    #@281
    long-to-int v0, v0

    #@282
    move/from16 v38, v0

    #@284
    .line 289
    :cond_15
    const/16 v45, 0x0

    #@286
    move-object/from16 v0, v30

    #@288
    move/from16 v1, v45

    #@28a
    move/from16 v2, v38

    #@28c
    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    #@28f
    move-result v31

    #@290
    .line 290
    .local v31, "read":I
    const/16 v45, 0x0

    #@292
    move-object/from16 v0, v32

    #@294
    move/from16 v1, v45

    #@296
    move/from16 v2, v31

    #@298
    invoke-virtual {v0, v6, v1, v2}, Ljava/security/Signature;->update([BII)V

    #@29b
    .line 291
    move/from16 v0, v31

    #@29d
    int-to-long v0, v0

    #@29e
    move-wide/from16 v46, v0

    #@2a0
    add-long v40, v40, v46

    #@2a2
    .line 293
    if-eqz p1, :cond_10

    #@2a4
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2a7
    move-result-wide v28

    #@2a8
    .line 295
    .local v28, "now":J
    const-wide/16 v46, 0x64

    #@2aa
    mul-long v46, v46, v40

    #@2ac
    div-long v46, v46, v42

    #@2ae
    move-wide/from16 v0, v46

    #@2b0
    long-to-int v0, v0

    #@2b1
    move/from16 v25, v0

    #@2b3
    .line 296
    .local v25, "p":I
    move/from16 v0, v25

    #@2b5
    move/from16 v1, v24

    #@2b7
    if-le v0, v1, :cond_10

    #@2b9
    .line 297
    sub-long v46, v28, v26

    #@2bb
    const-wide/16 v48, 0x1f4

    #@2bd
    cmp-long v45, v46, v48

    #@2bf
    if-lez v45, :cond_10

    #@2c1
    .line 298
    move/from16 v24, v25

    #@2c3
    .line 299
    move-wide/from16 v26, v28

    #@2c5
    .line 300
    move-object/from16 v0, p1

    #@2c7
    move/from16 v1, v24

    #@2c9
    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    #@2cc
    goto/16 :goto_2

    #@2ce
    .line 312
    .end local v21    # "interrupted":Z
    .end local v25    # "p":I
    .end local v28    # "now":J
    .end local v31    # "read":I
    .end local v38    # "size":I
    :cond_16
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    #@2d1
    move-result-object v45

    #@2d2
    move-object/from16 v0, v32

    #@2d4
    move-object/from16 v1, v45

    #@2d6
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@2d9
    move-result v45

    #@2da
    if-nez v45, :cond_17

    #@2dc
    .line 313
    new-instance v45, Ljava/security/SignatureException;

    #@2de
    const-string/jumbo v46, "signature digest verification failed"

    #@2e1
    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2e4
    throw v45
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e5
    .line 316
    :cond_17
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    #@2e8
    .line 152
    return-void
.end method
