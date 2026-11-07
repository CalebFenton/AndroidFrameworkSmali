.class public Lsun/security/provider/certpath/BuildStep;
.super Ljava/lang/Object;
.source "BuildStep.java"


# static fields
.field public static final blacklist BACK:I = 0x2

.field public static final blacklist FAIL:I = 0x4

.field public static final blacklist FOLLOW:I = 0x3

.field public static final blacklist POSSIBLE:I = 0x1

.field public static final blacklist SUCCEED:I = 0x5


# instance fields
.field private blacklist cert:Ljava/security/cert/X509Certificate;

.field private blacklist result:I

.field private blacklist throwable:Ljava/lang/Throwable;

.field private blacklist vertex:Lsun/security/provider/certpath/Vertex;


# direct methods
.method public constructor blacklist <init>(Lsun/security/provider/certpath/Vertex;I)V
    .registers 4
    .param p1, "vtx"    # Lsun/security/provider/certpath/Vertex;
    .param p2, "res"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    .line 86
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    if-eqz v0, :cond_19

    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    .line 88
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    .line 90
    :cond_19
    iput p2, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    .line 91
    return-void
.end method


# virtual methods
.method public blacklist fullToString()Ljava/lang/String;
    .registers 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    move-result v1

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v1}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 108
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public blacklist getIssuerName()Ljava/lang/String;
    .registers 2

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getIssuerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_10

    .line 133
    :cond_6
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_10
    return-object v0
.end method

.method public blacklist getResult()I
    .registers 2

    .line 179
    iget v0, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    return v0
.end method

.method public blacklist getSubjectName()Ljava/lang/String;
    .registers 2

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getSubjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    move-object v0, p1

    goto :goto_10

    .line 160
    :cond_6
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_10
    return-object v0
.end method

.method public blacklist getThrowable()Ljava/lang/Throwable;
    .registers 2

    .line 169
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public blacklist getVertex()Lsun/security/provider/certpath/Vertex;
    .registers 2

    .line 99
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    return-object v0
.end method

.method public blacklist resultToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "res"    # I

    .line 190
    const-string v0, ""

    .line 191
    .local v0, "resultString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_18

    .line 210
    const-string v0, "Internal error: Invalid step result value.\n"

    goto :goto_17

    .line 207
    :pswitch_8
    const-string v0, "Certificate satisfies conditions.\n"

    .line 208
    goto :goto_17

    .line 203
    :pswitch_b
    const-string v0, "Certificate backed out since path does not satisfy conditions.\n"

    .line 205
    goto :goto_17

    .line 200
    :pswitch_e
    const-string v0, "Certificate satisfies conditions.\n"

    .line 201
    goto :goto_17

    .line 196
    :pswitch_11
    const-string v0, "Certificate backed out since path does not satisfy build requirements.\n"

    .line 198
    goto :goto_17

    .line 193
    :pswitch_14
    const-string v0, "Certificate to be tried.\n"

    .line 194
    nop

    .line 212
    :goto_17
    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 223
    const-string v0, "Internal Error\n"

    .line 224
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    packed-switch v1, :pswitch_data_30

    .line 236
    const-string v0, "Internal Error: Invalid step result\n"

    goto :goto_2f

    .line 227
    :pswitch_a
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    goto :goto_2f

    .line 233
    :pswitch_28
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    nop

    .line 238
    :goto_2f
    return-object v0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_28
        :pswitch_a
        :pswitch_28
        :pswitch_a
        :pswitch_28
    .end packed-switch
.end method

.method public blacklist verboseToString()Ljava/lang/String;
    .registers 4

    .line 249
    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    packed-switch v1, :pswitch_data_5e

    goto :goto_3f

    .line 257
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->moreToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_3f

    .line 253
    :pswitch_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    goto :goto_3f

    .line 260
    :pswitch_3e
    nop

    .line 264
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Certificate contains:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    return-object v0

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_26
        :pswitch_e
        :pswitch_26
        :pswitch_e
    .end packed-switch
.end method
