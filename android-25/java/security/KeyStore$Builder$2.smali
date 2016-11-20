.class final Ljava/security/KeyStore$Builder$2;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder;->newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$2$1;
    }
.end annotation


# instance fields
.field private final action:Ljava/security/PrivilegedExceptionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedExceptionAction",
            "<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private volatile getCalled:Z

.field private oldException:Ljava/io/IOException;

.field final synthetic val$context:Ljava/security/AccessControlContext;

.field final synthetic val$protection:Ljava/security/KeyStore$ProtectionParameter;

.field final synthetic val$provider:Ljava/security/Provider;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Ljava/security/KeyStore$Builder$2;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Ljava/security/KeyStore$Builder$2;->getCalled:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    #@0
    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    #@2
    return-object p1
.end method

.method constructor <init>(Ljava/security/AccessControlContext;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 4
    .param p1, "val$context"    # Ljava/security/AccessControlContext;
    .param p2, "val$protection"    # Ljava/security/KeyStore$ProtectionParameter;
    .param p3, "val$provider"    # Ljava/security/Provider;
    .param p4, "val$type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1714
    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->val$context:Ljava/security/AccessControlContext;

    #@2
    iput-object p2, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    #@4
    iput-object p3, p0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    #@6
    iput-object p4, p0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    #@b
    .line 1719
    new-instance v0, Ljava/security/KeyStore$Builder$2$1;

    #@d
    iget-object v1, p0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    #@f
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    #@11
    iget-object v3, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    #@13
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/KeyStore$Builder$2$1;-><init>(Ljava/security/KeyStore$Builder$2;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)V

    #@16
    .line 1718
    iput-object v0, p0, Ljava/security/KeyStore$Builder$2;->action:Ljava/security/PrivilegedExceptionAction;

    #@18
    .line 1714
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
    .line 1759
    :try_start_0
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1760
    new-instance v2, Ljava/security/KeyStoreException;

    #@7
    .line 1761
    const-string/jumbo v3, "Previous KeyStore instantiation failed"

    #@a
    .line 1762
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    #@c
    .line 1760
    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 1765
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->action:Ljava/security/PrivilegedExceptionAction;

    #@15
    iget-object v3, p0, Ljava/security/KeyStore$Builder$2;->val$context:Ljava/security/AccessControlContext;

    #@17
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Ljava/security/KeyStore;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    monitor-exit p0

    #@1e
    return-object v2

    #@1f
    .line 1766
    :catch_0
    move-exception v1

    #@20
    .line 1767
    .local v1, "e":Ljava/security/PrivilegedActionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    #@23
    move-result-object v0

    #@24
    .line 1768
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v2, Ljava/security/KeyStoreException;

    #@26
    .line 1769
    const-string/jumbo v3, "KeyStore instantiation failed"

    #@29
    .line 1768
    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1775
    if-nez p1, :cond_0

    #@2
    .line 1776
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1778
    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$2;->getCalled:Z

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1779
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    .line 1780
    const-string/jumbo v1, "getKeyStore() must be called first"

    #@11
    .line 1779
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1782
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    #@17
    return-object v0
.end method
