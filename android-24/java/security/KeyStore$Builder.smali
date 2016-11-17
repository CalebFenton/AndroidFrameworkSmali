.class public abstract Ljava/security/KeyStore$Builder;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$FileBuilder;
    }
.end annotation


# static fields
.field static final MAX_CALLBACK_TRIES:I = 0x3


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 1545
    if-eqz p0, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1546
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1545
    :cond_1
    if-eqz p3, :cond_0

    #@c
    .line 1548
    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    #@e
    if-nez v0, :cond_2

    #@10
    .line 1549
    instance-of v0, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@12
    if-nez v0, :cond_2

    #@14
    .line 1550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    .line 1551
    const-string/jumbo v1, "Protection must be PasswordProtection or CallbackHandlerProtection"

    #@19
    .line 1550
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 1554
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_3

    #@23
    .line 1555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@25
    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "File does not exist or it does not refer to a normal file: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 1555
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 1559
    :cond_3
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder;

    #@3f
    .line 1560
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@42
    move-result-object v5

    #@43
    move-object v1, p0

    #@44
    move-object v2, p1

    #@45
    move-object v3, p2

    #@46
    move-object v4, p3

    #@47
    .line 1559
    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$FileBuilder;-><init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V

    #@4a
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 1710
    if-eqz p0, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 1711
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v1

    #@a
    .line 1713
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    #@d
    move-result-object v0

    #@e
    .line 1714
    .local v0, "context":Ljava/security/AccessControlContext;
    new-instance v1, Ljava/security/KeyStore$Builder$2;

    #@10
    invoke-direct {v1, v0, p2, p1, p0}, Ljava/security/KeyStore$Builder$2;-><init>(Ljava/security/AccessControlContext;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/Provider;Ljava/lang/String;)V

    #@13
    return-object v1
.end method

.method public static newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 2
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 1472
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_1

    #@4
    .line 1473
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1475
    :cond_1
    invoke-static {p0}, Ljava/security/KeyStore;->-get0(Ljava/security/KeyStore;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_2

    #@10
    .line 1476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "KeyStore not initialized"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 1478
    :cond_2
    new-instance v0, Ljava/security/KeyStore$Builder$1;

    #@1b
    invoke-direct {v0, p0, p1}, Ljava/security/KeyStore$Builder$1;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)V

    #@1e
    return-object v0
.end method


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method
