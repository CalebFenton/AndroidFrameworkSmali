.class public Ljava/security/cert/CertPathValidatorException;
.super Ljava/security/GeneralSecurityException;
.source "CertPathValidatorException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/CertPathValidatorException$BasicReason;,
        Ljava/security/cert/CertPathValidatorException$Reason;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2ac9a7e362fbb593L


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I

.field private reason:Ljava/security/cert/CertPathValidatorException$Reason;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    invoke-direct {p0, v0, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    #@5
    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    #@0
    .prologue
    .line 151
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    #@a
    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I
    .param p5, "reason"    # Ljava/security/cert/CertPathValidatorException$Reason;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 70
    iput v1, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@6
    .line 81
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@8
    iput-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    #@a
    .line 178
    if-nez p3, :cond_0

    #@c
    if-eq p4, v1, :cond_0

    #@e
    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v0

    #@14
    .line 181
    :cond_0
    if-lt p4, v1, :cond_1

    #@16
    .line 182
    if-eqz p3, :cond_2

    #@18
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@1b
    move-result-object v0

    #@1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1f
    move-result v0

    #@20
    if-lt p4, v0, :cond_2

    #@22
    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@24
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@27
    throw v0

    #@28
    .line 185
    :cond_2
    if-nez p5, :cond_3

    #@2a
    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    #@2c
    const-string/jumbo v1, "reason can\'t be null"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 188
    :cond_3
    iput-object p3, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@35
    .line 189
    iput p4, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@37
    .line 190
    iput-object p5, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    #@39
    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 116
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 115
    return-void

    #@7
    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 234
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 235
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    #@a
    iput-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    #@c
    .line 237
    :cond_0
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@e
    if-nez v0, :cond_1

    #@10
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@12
    if-eq v0, v1, :cond_1

    #@14
    .line 238
    new-instance v0, Ljava/io/InvalidObjectException;

    #@16
    const-string/jumbo v1, "certpath is null and index != -1"

    #@19
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 240
    :cond_1
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@1f
    if-lt v0, v1, :cond_2

    #@21
    .line 241
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@23
    if-eqz v0, :cond_3

    #@25
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@27
    iget-object v1, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@29
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    #@2c
    move-result-object v1

    #@2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@30
    move-result v1

    #@31
    if-lt v0, v1, :cond_3

    #@33
    .line 242
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    #@35
    const-string/jumbo v1, "index out of range"

    #@38
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 232
    :cond_3
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    #@2
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 213
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    #@2
    return v0
.end method

.method public getReason()Ljava/security/cert/CertPathValidatorException$Reason;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    #@2
    return-object v0
.end method
