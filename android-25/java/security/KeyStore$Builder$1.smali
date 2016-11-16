.class final Ljava/security/KeyStore$Builder$1;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder;->newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private volatile getCalled:Z

.field final synthetic val$keyStore:Ljava/security/KeyStore;

.field final synthetic val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0
    .param p1, "val$keyStore"    # Ljava/security/KeyStore;
    .param p2, "val$protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    #@0
    .prologue
    .line 1478
    iput-object p1, p0, Ljava/security/KeyStore$Builder$1;->val$keyStore:Ljava/security/KeyStore;

    #@2
    iput-object p2, p0, Ljava/security/KeyStore$Builder$1;->val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@4
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    #@0
    .prologue
    .line 1482
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$1;->getCalled:Z

    #@3
    .line 1483
    iget-object v0, p0, Ljava/security/KeyStore$Builder$1;->val$keyStore:Ljava/security/KeyStore;

    #@5
    return-object v0
.end method

.method public getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1488
    if-nez p1, :cond_0

    #@2
    .line 1489
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1491
    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$1;->getCalled:Z

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1492
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    .line 1493
    const-string/jumbo v1, "getKeyStore() must be called first"

    #@11
    .line 1492
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1495
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$1;->val$protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    #@17
    return-object v0
.end method
