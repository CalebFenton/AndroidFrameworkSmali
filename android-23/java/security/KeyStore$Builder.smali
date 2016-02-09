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
        Ljava/security/KeyStore$Builder$BuilderImpl;,
        Ljava/security/KeyStore$Builder$TmpLSParameter;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 814
    if-nez p0, :cond_0

    #@3
    .line 815
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "type == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 817
    :cond_0
    if-nez p3, :cond_1

    #@e
    .line 818
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "protectionParameter == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 820
    :cond_1
    if-nez p2, :cond_2

    #@19
    .line 821
    new-instance v0, Ljava/lang/NullPointerException;

    #@1b
    const-string/jumbo v1, "file == null"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 825
    :cond_2
    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    #@24
    if-nez v0, :cond_3

    #@26
    .line 826
    instance-of v0, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 831
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_5

    #@30
    .line 832
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "File does not exist: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 827
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@50
    const-string/jumbo v1, "protectionParameter is neither PasswordProtection nor CallbackHandlerProtection instance"

    #@53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    .line 834
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    #@5a
    move-result v0

    #@5b
    if-nez v0, :cond_6

    #@5d
    .line 835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "Not a regular file: "

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v0

    #@7b
    .line 838
    :cond_6
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    #@7d
    move-object v2, p3

    #@7e
    move-object v3, p2

    #@7f
    move-object v4, p0

    #@80
    move-object v5, p1

    #@81
    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V

    #@84
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 870
    if-nez p0, :cond_0

    #@3
    .line 871
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "type == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 873
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 874
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "protectionParameter == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 876
    :cond_1
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    #@19
    move-object v2, p2

    #@1a
    move-object v3, v1

    #@1b
    move-object v4, p0

    #@1c
    move-object v5, p1

    #@1d
    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V

    #@20
    return-object v0
.end method

.method public static newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 769
    if-nez p0, :cond_0

    #@3
    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "keyStore == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 772
    :cond_0
    if-nez p1, :cond_1

    #@e
    .line 773
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "protectionParameter == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 775
    :cond_1
    invoke-static {p0}, Ljava/security/KeyStore;->-get0(Ljava/security/KeyStore;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "KeyStore was not initialized"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 778
    :cond_2
    new-instance v0, Ljava/security/KeyStore$Builder$BuilderImpl;

    #@28
    move-object v1, p0

    #@29
    move-object v2, p1

    #@2a
    move-object v4, v3

    #@2b
    move-object v5, v3

    #@2c
    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$BuilderImpl;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;)V

    #@2f
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
