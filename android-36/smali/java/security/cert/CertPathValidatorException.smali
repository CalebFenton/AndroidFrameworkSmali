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
.field private static final whitelist serialVersionUID:J = -0x2ac9a7e362fbb593L


# instance fields
.field private greylist-max-o certPath:Ljava/security/cert/CertPath;

.field private greylist-max-o index:I

.field private greylist-max-o reason:Ljava/security/cert/CertPathValidatorException$Reason;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 129
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .registers 11
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    .line 151
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .end local p1    # "msg":Ljava/lang/String;
    .end local p2    # "cause":Ljava/lang/Throwable;
    .end local p3    # "certPath":Ljava/security/cert/CertPath;
    .end local p4    # "index":I
    .local v1, "msg":Ljava/lang/String;
    .local v2, "cause":Ljava/lang/Throwable;
    .local v3, "certPath":Ljava/security/cert/CertPath;
    .local v4, "index":I
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .line 152
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I
    .param p5, "reason"    # Ljava/security/cert/CertPathValidatorException$Reason;

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 81
    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    iput-object v1, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    .line 178
    if-nez p3, :cond_15

    if-ne p4, v0, :cond_f

    goto :goto_15

    .line 179
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_15
    :goto_15
    if-lt p4, v0, :cond_34

    if-eqz p3, :cond_23

    .line 182
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_34

    .line 185
    :cond_23
    if-eqz p5, :cond_2c

    .line 188
    iput-object p3, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    .line 189
    iput p4, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 190
    iput-object p5, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    .line 191
    return-void

    .line 186
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reason can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 116
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 234
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    if-nez v0, :cond_b

    .line 235
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    iput-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    .line 237
    :cond_b
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    const/4 v1, -0x1

    if-nez v0, :cond_1d

    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    if-ne v0, v1, :cond_15

    goto :goto_1d

    .line 238
    :cond_15
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "certpath is null and index != -1"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1d
    :goto_1d
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    if-lt v0, v1, :cond_34

    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    if-eqz v0, :cond_33

    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    iget-object v1, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    .line 241
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 244
    :cond_33
    return-void

    .line 242
    :cond_34
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .line 201
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 213
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return v0
.end method

.method public whitelist test-api getReason()Ljava/security/cert/CertPathValidatorException$Reason;
    .registers 2

    .line 228
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    return-object v0
.end method
