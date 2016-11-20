.class public Lsun/security/x509/InhibitAnyPolicyExtension;
.super Lsun/security/x509/Extension;
.source "InhibitAnyPolicyExtension.java"

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
.field public static AnyPolicy_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.InhibitAnyPolicy"

.field public static final NAME:Ljava/lang/String; = "InhibitAnyPolicy"

.field public static final SKIP_CERTS:Ljava/lang/String; = "skip_certs"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private skipCerts:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 67
    const-string/jumbo v1, "certpath"

    #@3
    invoke-static {v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v1

    #@7
    sput-object v1, Lsun/security/x509/InhibitAnyPolicyExtension;->debug:Lsun/security/util/Debug;

    #@9
    .line 81
    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    #@b
    const-string/jumbo v2, "2.5.29.32.0"

    #@e
    invoke-direct {v1, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@11
    sput-object v1, Lsun/security/x509/InhibitAnyPolicyExtension;->AnyPolicy_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 64
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    #@14
    .line 82
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_0
    move-exception v0

    #@15
    .restart local v0    # "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "skipCerts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v1, 0x7fffffff

    #@3
    const/4 v0, -0x1

    #@4
    .line 109
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@7
    .line 94
    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@9
    .line 110
    if-ge p1, v0, :cond_0

    #@b
    .line 111
    new-instance v0, Ljava/io/IOException;

    #@d
    const-string/jumbo v1, "Invalid value for skipCerts"

    #@10
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 112
    :cond_0
    if-ne p1, v0, :cond_1

    #@16
    .line 113
    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@18
    .line 116
    :goto_0
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@1a
    iput-object v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@1c
    .line 117
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    #@1f
    .line 118
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    #@22
    .line 109
    return-void

    #@23
    .line 115
    :cond_1
    iput p1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@25
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v5, 0x7fffffff

    #@3
    const/4 v4, -0x1

    #@4
    .line 130
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@7
    .line 94
    iput v5, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@9
    .line 133
    sget-object v2, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    .line 136
    new-instance v2, Ljava/io/IOException;

    #@15
    const-string/jumbo v3, "Criticality cannot be false for InhibitAnyPolicy"

    #@18
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@1f
    move-result v2

    #@20
    iput-boolean v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    #@22
    .line 140
    check-cast p2, [B

    #@24
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    #@26
    .line 141
    new-instance v1, Lsun/security/util/DerValue;

    #@28
    iget-object v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    #@2a
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@2d
    .line 142
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@2f
    const/4 v3, 0x2

    #@30
    if-eq v2, v3, :cond_1

    #@32
    .line 143
    new-instance v2, Ljava/io/IOException;

    #@34
    const-string/jumbo v3, "Invalid encoding of InhibitAnyPolicy: data not integer"

    #@37
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 146
    :cond_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 147
    new-instance v2, Ljava/io/IOException;

    #@41
    const-string/jumbo v3, "Invalid encoding of InhibitAnyPolicy: null data"

    #@44
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 149
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    #@4b
    move-result v0

    #@4c
    .line 150
    .local v0, "skipCertsValue":I
    if-ge v0, v4, :cond_3

    #@4e
    .line 151
    new-instance v2, Ljava/io/IOException;

    #@50
    const-string/jumbo v3, "Invalid value for skipCerts"

    #@53
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@56
    throw v2

    #@57
    .line 152
    :cond_3
    if-ne v0, v4, :cond_4

    #@59
    .line 153
    iput v5, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@5b
    .line 131
    :goto_0
    return-void

    #@5c
    .line 155
    :cond_4
    iput v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@5e
    goto :goto_0
.end method

.method private encodeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 99
    .local v0, "out":Lsun/security/util/DerOutputStream;
    iget v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@7
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@a
    .line 100
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    #@10
    .line 97
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
    .line 235
    const-string/jumbo v0, "skip_certs"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 236
    new-instance v0, Ljava/io/IOException;

    #@b
    const-string/jumbo v1, "Attribute skip_certs may not be deleted."

    #@e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 239
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@14
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    #@17
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1a
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
    .line 173
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 174
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 175
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 176
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    #@10
    .line 177
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    #@13
    .line 179
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 181
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 172
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 219
    const-string/jumbo v0, "skip_certs"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 220
    new-instance v0, Ljava/lang/Integer;

    #@b
    iget v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@d
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    return-object v0

    #@11
    .line 222
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@13
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    #@16
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
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
    .line 218
    invoke-virtual {p0, p1}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 250
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 251
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "skip_certs"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 252
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
    .line 261
    const-string/jumbo v0, "InhibitAnyPolicy"

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
    const/4 v2, -0x1

    #@1
    .line 193
    const-string/jumbo v1, "skip_certs"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_3

    #@a
    .line 194
    instance-of v1, p2, Ljava/lang/Integer;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 195
    new-instance v1, Ljava/io/IOException;

    #@10
    const-string/jumbo v2, "Attribute value should be of type Integer."

    #@13
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 196
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    #@19
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v0

    #@1d
    .line 197
    .local v0, "skipCertsValue":I
    if-ge v0, v2, :cond_1

    #@1f
    .line 198
    new-instance v1, Ljava/io/IOException;

    #@21
    const-string/jumbo v2, "Invalid value for skipCerts"

    #@24
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 199
    :cond_1
    if-ne v0, v2, :cond_2

    #@2a
    .line 200
    const v1, 0x7fffffff

    #@2d
    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@2f
    .line 207
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    #@32
    .line 192
    return-void

    #@33
    .line 202
    :cond_2
    iput v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@35
    goto :goto_0

    #@36
    .line 205
    .end local v0    # "skipCertsValue":I
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    #@38
    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    #@3b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, "InhibitAnyPolicy: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "\n"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    .line 164
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
