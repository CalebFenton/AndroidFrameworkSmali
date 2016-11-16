.class public Lsun/security/x509/BasicConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "BasicConstraintsExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.BasicConstraints"

.field public static final IS_CA:Ljava/lang/String; = "is_ca"

.field public static final NAME:Ljava/lang/String; = "BasicConstraints"

.field public static final PATH_LEN:Ljava/lang/String; = "path_len"


# instance fields
.field private ca:Z

.field private pathLen:I


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 122
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 68
    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@6
    .line 69
    const/4 v2, -0x1

    #@7
    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@9
    .line 125
    sget-object v2, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v2

    #@11
    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    #@13
    .line 128
    check-cast p2, [B

    #@15
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    #@17
    .line 129
    new-instance v1, Lsun/security/util/DerValue;

    #@19
    iget-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    #@1b
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@1e
    .line 130
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@20
    const/16 v3, 0x30

    #@22
    if-eq v2, v3, :cond_0

    #@24
    .line 131
    new-instance v2, Ljava/io/IOException;

    #@26
    const-string/jumbo v3, "Invalid encoding of BasicConstraints"

    #@29
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2

    #@2d
    .line 134
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2f
    if-eqz v2, :cond_1

    #@31
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@33
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@36
    move-result v2

    #@37
    if-nez v2, :cond_2

    #@39
    .line 136
    :cond_1
    return-void

    #@3a
    .line 138
    :cond_2
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3f
    move-result-object v0

    #@40
    .line 139
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    #@42
    const/4 v3, 0x1

    #@43
    if-eq v2, v3, :cond_3

    #@45
    .line 141
    return-void

    #@46
    .line 144
    :cond_3
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBoolean()Z

    #@49
    move-result v2

    #@4a
    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@4c
    .line 145
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@4e
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@51
    move-result v2

    #@52
    if-nez v2, :cond_4

    #@54
    .line 149
    const v2, 0x7fffffff

    #@57
    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@59
    .line 150
    return-void

    #@5a
    .line 153
    :cond_4
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@5c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@5f
    move-result-object v0

    #@60
    .line 154
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    #@62
    const/4 v3, 0x2

    #@63
    if-eq v2, v3, :cond_5

    #@65
    .line 155
    new-instance v2, Ljava/io/IOException;

    #@67
    const-string/jumbo v3, "Invalid encoding of BasicConstraints"

    #@6a
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v2

    #@6e
    .line 157
    :cond_5
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    #@71
    move-result v2

    #@72
    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@74
    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;ZI)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "ca"    # Z
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 68
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@6
    .line 69
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@9
    .line 107
    iput-boolean p2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@b
    .line 108
    iput p3, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@d
    .line 109
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@f
    iput-object v0, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@11
    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@14
    move-result v0

    #@15
    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    #@17
    .line 111
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    #@1a
    .line 106
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ca"    # Z
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1, p2}, Lsun/security/x509/BasicConstraintsExtension;-><init>(Ljava/lang/Boolean;ZI)V

    #@7
    .line 94
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 74
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@7
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@a
    .line 76
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 77
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@10
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    #@13
    .line 79
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@15
    if-ltz v2, :cond_0

    #@17
    .line 80
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@19
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@1c
    .line 83
    :cond_0
    const/16 v2, 0x30

    #@1e
    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@21
    .line 84
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    #@27
    .line 72
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
    .line 245
    const-string/jumbo v0, "is_ca"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 246
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@c
    .line 253
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    #@f
    .line 244
    return-void

    #@10
    .line 247
    :cond_0
    const-string/jumbo v0, "path_len"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 248
    const/4 v0, -0x1

    #@1a
    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@1c
    goto :goto_0

    #@1d
    .line 250
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1f
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

    #@22
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
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
    .line 191
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 192
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 193
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 194
    iget-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 195
    const/4 v1, 0x1

    #@12
    iput-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    #@14
    .line 199
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    #@17
    .line 201
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@1a
    .line 203
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@21
    .line 190
    return-void

    #@22
    .line 197
    :cond_1
    const/4 v1, 0x0

    #@23
    iput-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    #@25
    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 231
    const-string/jumbo v0, "is_ca"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 232
    iget-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 233
    :cond_0
    const-string/jumbo v0, "path_len"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 234
    iget v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v0

    #@1f
    return-object v0

    #@20
    .line 236
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@22
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

    #@25
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
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
    .line 261
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 262
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "is_ca"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 263
    const-string/jumbo v1, "path_len"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 265
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 272
    const-string/jumbo v0, "BasicConstraints"

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
    .line 210
    const-string/jumbo v0, "is_ca"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 211
    instance-of v0, p2, Ljava/lang/Boolean;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 212
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 214
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@1b
    move-result v0

    #@1c
    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@1e
    .line 224
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    #@21
    .line 209
    return-void

    #@22
    .line 215
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "path_len"

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 216
    instance-of v0, p2, Ljava/lang/Integer;

    #@2d
    if-nez v0, :cond_2

    #@2f
    .line 217
    new-instance v0, Ljava/io/IOException;

    #@31
    const-string/jumbo v1, "Attribute value should be of type Integer."

    #@34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 219
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    #@3a
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@40
    goto :goto_0

    #@41
    .line 221
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@43
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

    #@46
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 174
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
    const-string/jumbo v2, "BasicConstraints:[\n"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 176
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    iget-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    #@23
    if-eqz v1, :cond_0

    #@25
    const-string/jumbo v1, "  CA:true"

    #@28
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, "\n"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 177
    iget v1, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@39
    if-ltz v1, :cond_1

    #@3b
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, "  PathLen:"

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    const-string/jumbo v2, "\n"

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    .line 182
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    const-string/jumbo v2, "]\n"

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    return-object v1

    #@71
    .line 176
    :cond_0
    const-string/jumbo v1, "  CA:false"

    #@74
    goto :goto_0

    #@75
    .line 180
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    const-string/jumbo v2, "  PathLen: undefined\n"

    #@81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    goto :goto_1
.end method
