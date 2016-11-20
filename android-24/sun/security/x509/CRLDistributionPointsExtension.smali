.class public Lsun/security/x509/CRLDistributionPointsExtension;
.super Lsun/security/x509/Extension;
.source "CRLDistributionPointsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.CRLDistributionPoints"

.field public static final NAME:Ljava/lang/String; = "CRLDistributionPoints"

.field public static final POINTS:Ljava/lang/String; = "points"


# instance fields
.field private distributionPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private extensionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    const-string/jumbo v1, "CRLDistributionPoints"

    #@5
    invoke-direct {p0, v0, p1, p2, v1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    .local p1, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(ZLjava/util/List;)V

    #@4
    .line 113
    return-void
.end method

.method protected constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "critical"    # Ljava/lang/Boolean;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 166
    iput-object p1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@5
    .line 167
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@8
    move-result v3

    #@9
    iput-boolean v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->critical:Z

    #@b
    .line 169
    instance-of v3, p3, [B

    #@d
    if-nez v3, :cond_0

    #@f
    .line 170
    new-instance v3, Ljava/io/IOException;

    #@11
    const-string/jumbo v4, "Illegal argument type"

    #@14
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v3

    #@18
    .line 173
    :cond_0
    check-cast p3, [B

    #@1a
    .end local p3    # "value":Ljava/lang/Object;
    iput-object p3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    #@1c
    .line 174
    new-instance v2, Lsun/security/util/DerValue;

    #@1e
    iget-object v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    #@20
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@23
    .line 175
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@25
    const/16 v4, 0x30

    #@27
    if-eq v3, v4, :cond_1

    #@29
    .line 176
    new-instance v3, Ljava/io/IOException;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Invalid encoding for "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 177
    const-string/jumbo v5, " extension."

    #@3e
    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    throw v3

    #@4a
    .line 179
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@4c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@4f
    iput-object v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@51
    .line 180
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@53
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_2

    #@59
    .line 181
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@5b
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@5e
    move-result-object v1

    #@5f
    .line 182
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/DistributionPoint;

    #@61
    invoke-direct {v0, v1}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/util/DerValue;)V

    #@64
    .line 183
    .local v0, "point":Lsun/security/x509/DistributionPoint;
    iget-object v3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@66
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@69
    goto :goto_0

    #@6a
    .line 185
    .end local v0    # "point":Lsun/security/x509/DistributionPoint;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_2
    iput-object p4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@6c
    .line 164
    return-void
.end method

.method protected constructor <init>(Lsun/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "isCritical"    # Z
    .param p4, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p3, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 140
    iput-object p1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@5
    .line 141
    iput-boolean p2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->critical:Z

    #@7
    .line 142
    iput-object p3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@9
    .line 143
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    #@c
    .line 144
    iput-object p4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@e
    .line 138
    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 2
    .param p1, "isCritical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p2, "distributionPoints":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    .line 130
    const-string/jumbo v1, "CRLDistributionPoints"

    #@5
    .line 129
    invoke-direct {p0, v0, p1, p2, v1}, Lsun/security/x509/CRLDistributionPointsExtension;-><init>(Lsun/security/util/ObjectIdentifier;ZLjava/util/List;Ljava/lang/String;)V

    #@8
    .line 127
    return-void
.end method

.method private encodeThis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 279
    iget-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 280
    const/4 v4, 0x0

    #@9
    iput-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    #@b
    .line 278
    :goto_0
    return-void

    #@c
    .line 282
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@e
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@11
    .line 283
    .local v0, "pnts":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "point$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lsun/security/x509/DistributionPoint;

    #@23
    .line 284
    .local v1, "point":Lsun/security/x509/DistributionPoint;
    invoke-virtual {v1, v0}, Lsun/security/x509/DistributionPoint;->encode(Lsun/security/util/DerOutputStream;)V

    #@26
    goto :goto_1

    #@27
    .line 286
    .end local v1    # "point":Lsun/security/x509/DistributionPoint;
    :cond_1
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@29
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@2c
    .line 287
    .local v3, "seq":Lsun/security/util/DerOutputStream;
    const/16 v4, 0x30

    #@2e
    invoke-virtual {v3, v4, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@31
    .line 288
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@34
    move-result-object v4

    #@35
    iput-object v4, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    #@37
    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 257
    const-string/jumbo v0, "points"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 258
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@10
    .line 264
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    #@13
    .line 256
    return-void

    #@14
    .line 260
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@16
    new-instance v1, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v2, "Attribute name ["

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 261
    const-string/jumbo v2, "] not recognized by "

    #@29
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 262
    const-string/jumbo v2, "CertAttrSet:"

    #@30
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 262
    iget-object v2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@36
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 262
    const-string/jumbo v2, "."

    #@3d
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, p1, v0, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V

    #@6
    .line 201
    return-void
.end method

.method protected encode(Ljava/io/OutputStream;Lsun/security/util/ObjectIdentifier;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "extensionId"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "isCritical"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 213
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 214
    iput-object p2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@b
    .line 215
    iput-boolean p3, p0, Lsun/security/x509/CRLDistributionPointsExtension;->critical:Z

    #@d
    .line 216
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    #@10
    .line 218
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@13
    .line 219
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1a
    .line 210
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/DistributionPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    const-string/jumbo v0, "points"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 245
    iget-object v0, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@b
    return-object v0

    #@c
    .line 247
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Attribute name ["

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 248
    const-string/jumbo v2, "] not recognized by "

    #@21
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 249
    const-string/jumbo v2, "CertAttrSet:"

    #@28
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 249
    iget-object v2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@2e
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 249
    const-string/jumbo v2, "."

    #@35
    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 273
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "points"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 274
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 227
    const-string/jumbo v0, "points"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 228
    instance-of v0, p2, Ljava/util/List;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 229
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type List."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 231
    :cond_0
    check-cast p2, Ljava/util/List;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@1a
    .line 237
    invoke-direct {p0}, Lsun/security/x509/CRLDistributionPointsExtension;->encodeThis()V

    #@1d
    .line 226
    return-void

    #@1e
    .line 233
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Attribute name ["

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 234
    const-string/jumbo v2, "] not recognized by "

    #@33
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 235
    const-string/jumbo v2, "CertAttrSet:"

    #@3a
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 235
    iget-object v2, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@40
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 235
    const-string/jumbo v2, "."

    #@47
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@52
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->extensionName:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, " [\n  "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 297
    iget-object v1, p0, Lsun/security/x509/CRLDistributionPointsExtension;->distributionPoints:Ljava/util/List;

    #@1c
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 297
    const-string/jumbo v1, "]\n"

    #@23
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method
