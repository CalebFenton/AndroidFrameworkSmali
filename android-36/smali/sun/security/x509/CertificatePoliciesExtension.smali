.class public Lsun/security/x509/CertificatePoliciesExtension;
.super Lsun/security/x509/Extension;
.source "CertificatePoliciesExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.CertificatePolicies"

.field public static final blacklist NAME:Ljava/lang/String; = "CertificatePolicies"

.field public static final blacklist POLICIES:Ljava/lang/String; = "policies"


# instance fields
.field private blacklist certPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 7
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 140
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    .line 142
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    .line 143
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 144
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_40

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 149
    :goto_26
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 150
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 151
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/x509/PolicyInformation;

    invoke-direct {v2, v1}, Lsun/security/x509/PolicyInformation;-><init>(Lsun/security/util/DerValue;)V

    .line 152
    .local v2, "policy":Lsun/security/x509/PolicyInformation;
    iget-object v3, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v1    # "seq":Lsun/security/util/DerValue;
    .end local v2    # "policy":Lsun/security/x509/PolicyInformation;
    goto :goto_26

    .line 154
    :cond_3f
    return-void

    .line 145
    :cond_40
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding for CertificatePoliciesExtension."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/util/List;)V
    .registers 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lsun/security/x509/PolicyInformation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    .local p2, "certPolicies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 124
    iput-object p2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 125
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    .line 127
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 128
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/x509/PolicyInformation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    .local p1, "certPolicies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/util/List;)V

    .line 113
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    .line 92
    :cond_d
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 93
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 95
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/PolicyInformation;

    .line 96
    .local v3, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v3, v1}, Lsun/security/x509/PolicyInformation;->encode(Lsun/security/util/DerOutputStream;)V

    .line 97
    .end local v3    # "info":Lsun/security/x509/PolicyInformation;
    goto :goto_1d

    .line 99
    :cond_2d
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 100
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    goto :goto_3c

    .line 90
    .end local v0    # "os":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_39
    :goto_39
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    .line 102
    :goto_3c
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const-string v0, "policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 232
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 233
    return-void

    .line 228
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:CertificatePoliciesExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 180
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 181
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->critical:Z

    .line 183
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 185
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 186
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 187
    return-void
.end method

.method public bridge synthetic blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsun/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const-string v0, "policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    iget-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    return-object v0

    .line 215
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:CertificatePoliciesExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 241
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "policies"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 250
    const-string v0, "CertificatePolicies"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const-string v0, "policies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 195
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_15

    .line 198
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    .line 204
    invoke-direct {p0}, Lsun/security/x509/CertificatePoliciesExtension;->encodeThis()V

    .line 205
    return-void

    .line 196
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type List."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:CertificatePoliciesExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 160
    iget-object v0, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    if-nez v0, :cond_7

    .line 161
    const-string v0, ""

    return-object v0

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CertificatePolicies [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lsun/security/x509/CertificatePoliciesExtension;->certPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/PolicyInformation;

    .line 166
    .local v2, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v2}, Lsun/security/x509/PolicyInformation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .end local v2    # "info":Lsun/security/x509/PolicyInformation;
    goto :goto_1b

    .line 168
    :cond_2f
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
