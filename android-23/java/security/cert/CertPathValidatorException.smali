.class public Ljava/security/cert/CertPathValidatorException;
.super Ljava/security/GeneralSecurityException;
.source "CertPathValidatorException.java"


# static fields
.field private static final serialVersionUID:J = -0x2ac9a7e362fbb593L


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@6
    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@6
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@6
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 42
    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@6
    .line 68
    if-nez p3, :cond_0

    #@8
    if-eq p4, v0, :cond_0

    #@a
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Index should be -1 when CertPath is null"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 71
    :cond_0
    if-eqz p3, :cond_2

    #@15
    if-lt p4, v0, :cond_1

    #@17
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1e
    move-result v0

    #@1f
    if-lt p4, v0, :cond_2

    #@21
    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@23
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@26
    throw v0

    #@27
    .line 74
    :cond_2
    iput-object p3, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@29
    .line 75
    iput p4, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@2b
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@6
    .line 98
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@2
    return v0
.end method
