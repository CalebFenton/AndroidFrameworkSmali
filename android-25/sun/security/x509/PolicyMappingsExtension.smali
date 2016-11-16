.class public Lsun/security/x509/PolicyMappingsExtension;
.super Lsun/security/x509/Extension;
.source "PolicyMappingsExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.PolicyMappings"

.field public static final MAP:Ljava/lang/String; = "map"

.field public static final NAME:Ljava/lang/String; = "PolicyMappings"


# instance fields
.field private maps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 103
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 104
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    #@a
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@11
    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 118
    sget-object v3, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 119
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v3

    #@b
    iput-boolean v3, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    #@d
    .line 121
    check-cast p2, [B

    #@f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    #@11
    .line 122
    new-instance v2, Lsun/security/util/DerValue;

    #@13
    iget-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    #@15
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@18
    .line 123
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@1a
    const/16 v4, 0x30

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 124
    new-instance v3, Ljava/io/IOException;

    #@20
    const-string/jumbo v4, "Invalid encoding for PolicyMappingsExtension."

    #@23
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 127
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@2e
    .line 128
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@30
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 129
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@38
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3b
    move-result-object v1

    #@3c
    .line 130
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/CertificatePolicyMap;

    #@3e
    invoke-direct {v0, v1}, Lsun/security/x509/CertificatePolicyMap;-><init>(Lsun/security/util/DerValue;)V

    #@41
    .line 131
    .local v0, "map":Lsun/security/x509/CertificatePolicyMap;
    iget-object v3, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@43
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_0

    #@47
    .line 117
    .end local v0    # "map":Lsun/security/x509/CertificatePolicyMap;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyMap;",
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
    .line 91
    .local p1, "map":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 93
    iput-object p1, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@5
    .line 94
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 95
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    #@c
    .line 96
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    #@f
    .line 92
    return-void
.end method

.method private encodeThis()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 71
    iget-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 72
    :cond_0
    iput-object v5, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    #@f
    .line 73
    return-void

    #@10
    .line 75
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 76
    .local v2, "os":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@17
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1a
    .line 78
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@1c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "map$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_2

    #@26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lsun/security/x509/CertificatePolicyMap;

    #@2c
    .line 79
    .local v0, "map":Lsun/security/x509/CertificatePolicyMap;
    invoke-virtual {v0, v3}, Lsun/security/x509/CertificatePolicyMap;->encode(Lsun/security/util/DerOutputStream;)V

    #@2f
    goto :goto_0

    #@30
    .line 82
    .end local v0    # "map":Lsun/security/x509/CertificatePolicyMap;
    :cond_2
    const/16 v4, 0x30

    #@32
    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@35
    .line 83
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@38
    move-result-object v4

    #@39
    iput-object v4, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    #@3b
    .line 70
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 197
    const-string/jumbo v0, "map"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 198
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@c
    .line 203
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    #@f
    .line 196
    return-void

    #@10
    .line 200
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyMappingsExtension."

    #@15
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
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
    .line 153
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 154
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 155
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/PolicyMappingsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 156
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/PolicyMappingsExtension;->critical:Z

    #@10
    .line 157
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    #@13
    .line 159
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 160
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 152
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
    .line 184
    invoke-virtual {p0, p1}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/CertificatePolicyMap;",
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
    .line 185
    const-string/jumbo v0, "map"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 186
    iget-object v0, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@b
    return-object v0

    #@c
    .line 188
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyMappingsExtension."

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
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
    .line 211
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 212
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "map"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 214
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
    .line 221
    const-string/jumbo v0, "PolicyMappings"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 168
    const-string/jumbo v0, "map"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 169
    instance-of v0, p2, Ljava/util/List;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 170
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type List."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 173
    :cond_0
    check-cast p2, Ljava/util/List;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@1a
    .line 178
    invoke-direct {p0}, Lsun/security/x509/PolicyMappingsExtension;->encodeThis()V

    #@1d
    .line 167
    return-void

    #@1e
    .line 175
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyMappingsExtension."

    #@23
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 139
    iget-object v1, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@2
    if-nez v1, :cond_0

    #@4
    const-string/jumbo v1, ""

    #@7
    return-object v1

    #@8
    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "PolicyMappings [\n"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 141
    iget-object v2, p0, Lsun/security/x509/PolicyMappingsExtension;->maps:Ljava/util/List;

    #@1e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 141
    const-string/jumbo v2, "]\n"

    #@29
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    .line 143
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
