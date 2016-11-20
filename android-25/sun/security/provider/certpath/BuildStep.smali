.class public Lsun/security/provider/certpath/BuildStep;
.super Ljava/lang/Object;
.source "BuildStep.java"


# static fields
.field public static final BACK:I = 0x2

.field public static final FAIL:I = 0x4

.field public static final FOLLOW:I = 0x3

.field public static final POSSIBLE:I = 0x1

.field public static final SUCCEED:I = 0x5


# instance fields
.field private cert:Ljava/security/cert/X509Certificate;

.field private result:I

.field private throwable:Ljava/lang/Throwable;

.field private vertex:Lsun/security/provider/certpath/Vertex;


# direct methods
.method public constructor <init>(Lsun/security/provider/certpath/Vertex;I)V
    .locals 1
    .param p1, "vtx"    # Lsun/security/provider/certpath/Vertex;
    .param p2, "res"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput-object p1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@5
    .line 86
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@b
    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    #@11
    .line 88
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@13
    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    #@19
    .line 90
    :cond_0
    iput p2, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    #@1b
    .line 84
    return-void
.end method


# virtual methods
.method public fullToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@13
    invoke-virtual {v1}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    #@2
    return-object v0
.end method

.method public getIssuerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getIssuerName(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getIssuerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    #@5
    .line 133
    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    #@7
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    goto :goto_0
.end method

.method public getResult()I
    .locals 1

    #@0
    .prologue
    .line 179
    iget v0, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    #@2
    return v0
.end method

.method public getSubjectName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getSubjectName(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getSubjectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    #@5
    .line 160
    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    #@7
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    #@e
    move-result-object p1

    #@f
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getVertex()Lsun/security/provider/certpath/Vertex;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@2
    return-object v0
.end method

.method public resultToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # I

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, ""

    #@3
    .line 191
    .local v0, "resultString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@6
    .line 210
    const-string/jumbo v0, "Internal error: Invalid step result value.\n"

    #@9
    .line 212
    :goto_0
    return-object v0

    #@a
    .line 193
    :pswitch_0
    const-string/jumbo v0, "Certificate to be tried.\n"

    #@d
    goto :goto_0

    #@e
    .line 196
    :pswitch_1
    const-string/jumbo v0, "Certificate backed out since path does not satisfy build requirements.\n"

    #@11
    goto :goto_0

    #@12
    .line 200
    :pswitch_2
    const-string/jumbo v0, "Certificate satisfies conditions.\n"

    #@15
    goto :goto_0

    #@16
    .line 203
    :pswitch_3
    const-string/jumbo v0, "Certificate backed out since path does not satisfy conditions.\n"

    #@19
    goto :goto_0

    #@1a
    .line 207
    :pswitch_4
    const-string/jumbo v0, "Certificate satisfies conditions.\n"

    #@1d
    goto :goto_0

    #@1e
    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 223
    const-string/jumbo v0, "Internal Error\n"

    #@3
    .line 224
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    #@5
    packed-switch v1, :pswitch_data_0

    #@8
    .line 236
    const-string/jumbo v0, "Internal Error: Invalid step result\n"

    #@b
    .line 238
    :goto_0
    return-object v0

    #@c
    .line 227
    :pswitch_0
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    #@e
    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@1d
    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    goto :goto_0

    #@2a
    .line 233
    :pswitch_1
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    #@2c
    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    goto :goto_0

    #@31
    .line 224
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public verboseToString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 250
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    #@a
    packed-switch v1, :pswitch_data_0

    #@d
    .line 264
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "Certificate contains:\n"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@1f
    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 265
    return-object v0

    #@2c
    .line 253
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@37
    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    goto :goto_0

    #@44
    .line 257
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    #@4f
    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->moreToString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    goto :goto_0

    #@5c
    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
