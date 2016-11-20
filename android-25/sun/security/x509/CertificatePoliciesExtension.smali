.class public Lsun/security/x509/CertificatePoliciesExtension;
.super Lsun/security/x509/Extension;
.source "CertificatePoliciesExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.CertificatePolicies"

.field public static final NAME:Ljava/lang/String; = "CertificatePolicies"

.field public static final POLICIES:Ljava/lang/String; = "policies"


# instance fields
.field private certPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    .line 138
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 140
    sget-object v3, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v3

    #@b
    iput-boolean v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    #@d
    .line 142
    check-cast p2, [B

    #@f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    #@11
    .line 143
    new-instance v2, Lsun/security/util/DerValue;

    #@13
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    #@15
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@18
    .line 144
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@1a
    const/16 v4, 0x30

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 145
    new-instance v3, Ljava/io/IOException;

    #@20
    const-string/jumbo v4, "Invalid encoding for CertificatePoliciesExtension."

    #@23
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 148
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2c
    iput-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@2e
    .line 149
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@30
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 150
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@38
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3b
    move-result-object v1

    #@3c
    .line 151
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/PolicyInformation;

    #@3e
    invoke-direct {v0, v1}, Lsun/security/x509/PolicyInformation;-><init>(Lsun/security/util/DerValue;)V

    #@41
    .line 152
    .local v0, "policy":Lsun/security/x509/PolicyInformation;
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@43
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@46
    goto :goto_0

    #@47
    .line 139
    .end local v0    # "policy":Lsun/security/x509/PolicyInformation;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/PolicyInformation;",
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
    .line 122
    .local p2, "certPolicies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 124
    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@5
    .line 125
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    #@f
    .line 127
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    #@12
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/PolicyInformation;",
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
    .line 112
    .local p1, "certPolicies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/util/List;)V

    #@5
    .line 111
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
    .line 89
    iget-object v4, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@3
    if-eqz v4, :cond_0

    #@5
    iget-object v4, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@a
    move-result v4

    #@b
    if-eqz v4, :cond_1

    #@d
    .line 90
    :cond_0
    iput-object v5, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    #@f
    .line 88
    :goto_0
    return-void

    #@10
    .line 92
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 93
    .local v2, "os":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@17
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1a
    .line 95
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@1c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_1
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
    check-cast v0, Lsun/security/x509/PolicyInformation;

    #@2c
    .line 96
    .local v0, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v0, v3}, Lsun/security/x509/PolicyInformation;->encode(Lsun/security/util/DerOutputStream;)V

    #@2f
    goto :goto_1

    #@30
    .line 99
    .end local v0    # "info":Lsun/security/x509/PolicyInformation;
    :cond_2
    const/16 v4, 0x30

    #@32
    invoke-virtual {v2, v4, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@35
    .line 100
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@38
    move-result-object v4

    #@39
    iput-object v4, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    #@3b
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
    .line 225
    const-string/jumbo v0, "policies"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 226
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@c
    .line 232
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    #@f
    .line 224
    return-void

    #@10
    .line 228
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Attribute name ["

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 229
    const-string/jumbo v2, "] not recognized by "

    #@25
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 230
    const-string/jumbo v2, "CertAttrSet:CertificatePoliciesExtension."

    #@2c
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
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
    .line 179
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 180
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 181
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 182
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    #@10
    .line 183
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    #@13
    .line 185
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 186
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 178
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
    .line 210
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

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
            "Lsun/security/x509/PolicyInformation;",
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
    .line 211
    const-string/jumbo v0, "policies"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 213
    iget-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@b
    return-object v0

    #@c
    .line 215
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
    .line 216
    const-string/jumbo v2, "] not recognized by "

    #@21
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 217
    const-string/jumbo v2, "CertAttrSet:CertificatePoliciesExtension."

    #@28
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
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
    .line 240
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 241
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "policies"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 243
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
    .line 250
    const-string/jumbo v0, "CertificatePolicies"

    #@3
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
    .line 194
    const-string/jumbo v0, "policies"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 195
    instance-of v0, p2, Ljava/util/List;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 196
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type List."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 198
    :cond_0
    check-cast p2, Ljava/util/List;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@1a
    .line 204
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    #@1d
    .line 193
    return-void

    #@1e
    .line 200
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
    .line 201
    const-string/jumbo v2, "] not recognized by "

    #@33
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 202
    const-string/jumbo v2, "CertAttrSet:CertificatePoliciesExtension."

    #@3a
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 160
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@2
    if-nez v3, :cond_0

    #@4
    .line 161
    const-string/jumbo v3, ""

    #@7
    return-object v3

    #@8
    .line 163
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    .line 164
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "CertificatePolicies [\n"

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 165
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    #@19
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lsun/security/x509/PolicyInformation;

    #@29
    .line 166
    .local v0, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v0}, Lsun/security/x509/PolicyInformation;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_0

    #@31
    .line 168
    .end local v0    # "info":Lsun/security/x509/PolicyInformation;
    :cond_1
    const-string/jumbo v3, "]\n"

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3
.end method
