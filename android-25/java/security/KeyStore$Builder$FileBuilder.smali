.class final Ljava/security/KeyStore$Builder$FileBuilder;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileBuilder"
.end annotation


# instance fields
.field private final context:Ljava/security/AccessControlContext;

.field private final file:Ljava/io/File;

.field private keyProtection:Ljava/security/KeyStore$ProtectionParameter;

.field private keyStore:Ljava/security/KeyStore;

.field private oldException:Ljava/lang/Throwable;

.field private protection:Ljava/security/KeyStore$ProtectionParameter;

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;

    #@2
    return-object p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "protection"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p5, "context"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 1576
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    #@3
    .line 1579
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    #@5
    .line 1580
    iput-object p2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    #@7
    .line 1581
    iput-object p3, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    #@9
    .line 1582
    iput-object p4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    #@b
    .line 1583
    iput-object p5, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    #@d
    .line 1578
    return-void
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1588
    :try_start_0
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1589
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    return-object v2

    #@9
    .line 1591
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 1592
    new-instance v2, Ljava/security/KeyStoreException;

    #@f
    .line 1593
    const-string/jumbo v3, "Previous KeyStore instantiation failed"

    #@12
    .line 1594
    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    #@14
    .line 1592
    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :catchall_0
    move-exception v2

    #@19
    monitor-exit p0

    #@1a
    throw v2

    #@1b
    .line 1597
    :cond_1
    :try_start_2
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder$1;

    #@1d
    invoke-direct {v0, p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;-><init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    .line 1659
    .local v0, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<Ljava/security/KeyStore;>;"
    :try_start_3
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    #@22
    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Ljava/security/KeyStore;

    #@28
    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    #@2a
    .line 1660
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_3
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    monitor-exit p0

    #@2d
    return-object v2

    #@2e
    .line 1661
    :catch_0
    move-exception v1

    #@2f
    .line 1662
    .local v1, "e":Ljava/security/PrivilegedActionException;
    :try_start_4
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    #@35
    .line 1663
    new-instance v2, Ljava/security/KeyStoreException;

    #@37
    .line 1664
    const-string/jumbo v3, "KeyStore instantiation failed"

    #@3a
    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    #@3c
    .line 1663
    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1670
    if-nez p1, :cond_0

    #@3
    .line 1671
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0

    #@c
    .line 1673
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1674
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    .line 1675
    const-string/jumbo v1, "getKeyStore() must be called first"

    #@15
    .line 1674
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 1677
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    return-object v0
.end method
