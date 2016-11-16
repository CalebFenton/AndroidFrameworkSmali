.class public Lsun/security/x509/SubjectInfoAccessExtension;
.super Lsun/security/x509/Extension;
.source "SubjectInfoAccessExtension.java"

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
.field public static final DESCRIPTIONS:Ljava/lang/String; = "descriptions"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.SubjectInfoAccess"

.field public static final NAME:Ljava/lang/String; = "SubjectInfoAccess"


# instance fields
.field private accessDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AccessDescription;",
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
    .line 113
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 115
    sget-object v3, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v3, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v3

    #@b
    iput-boolean v3, p0, Lsun/security/x509/SubjectInfoAccessExtension;->critical:Z

    #@d
    .line 118
    instance-of v3, p2, [B

    #@f
    if-nez v3, :cond_0

    #@11
    .line 119
    new-instance v3, Ljava/io/IOException;

    #@13
    const-string/jumbo v4, "Illegal argument type"

    #@16
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@19
    throw v3

    #@1a
    .line 122
    :cond_0
    check-cast p2, [B

    #@1c
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    #@1e
    .line 123
    new-instance v2, Lsun/security/util/DerValue;

    #@20
    iget-object v3, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    #@22
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@25
    .line 124
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@27
    const/16 v4, 0x30

    #@29
    if-eq v3, v4, :cond_1

    #@2b
    .line 125
    new-instance v3, Ljava/io/IOException;

    #@2d
    const-string/jumbo v4, "Invalid encoding for SubjectInfoAccessExtension."

    #@30
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 128
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@39
    iput-object v3, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@3b
    .line 129
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@3d
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_2

    #@43
    .line 130
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@45
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@48
    move-result-object v1

    #@49
    .line 131
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/x509/AccessDescription;

    #@4b
    invoke-direct {v0, v1}, Lsun/security/x509/AccessDescription;-><init>(Lsun/security/util/DerValue;)V

    #@4e
    .line 132
    .local v0, "accessDescription":Lsun/security/x509/AccessDescription;
    iget-object v3, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@50
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    goto :goto_0

    #@54
    .line 114
    .end local v0    # "accessDescription":Lsun/security/x509/AccessDescription;
    .end local v1    # "seq":Lsun/security/util/DerValue;
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AccessDescription;",
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
    .line 98
    .local p1, "accessDescriptions":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 100
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 101
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->critical:Z

    #@a
    .line 102
    iput-object p1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@c
    .line 103
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    #@f
    .line 99
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
    .line 223
    iget-object v4, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 224
    const/4 v4, 0x0

    #@9
    iput-object v4, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    #@b
    .line 222
    :goto_0
    return-void

    #@c
    .line 226
    :cond_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@e
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@11
    .line 227
    .local v2, "ads":Lsun/security/util/DerOutputStream;
    iget-object v4, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "accessDescription$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lsun/security/x509/AccessDescription;

    #@23
    .line 228
    .local v0, "accessDescription":Lsun/security/x509/AccessDescription;
    invoke-virtual {v0, v2}, Lsun/security/x509/AccessDescription;->encode(Lsun/security/util/DerOutputStream;)V

    #@26
    goto :goto_1

    #@27
    .line 230
    .end local v0    # "accessDescription":Lsun/security/x509/AccessDescription;
    :cond_1
    new-instance v3, Lsun/security/util/DerOutputStream;

    #@29
    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    #@2c
    .line 231
    .local v3, "seq":Lsun/security/util/DerOutputStream;
    const/16 v4, 0x30

    #@2e
    invoke-virtual {v3, v4, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@31
    .line 232
    invoke-virtual {v3}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@34
    move-result-object v4

    #@35
    iput-object v4, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

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
    .line 201
    const-string/jumbo v0, "descriptions"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 202
    new-instance v0, Ljava/util/ArrayList;

    #@b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@e
    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@10
    .line 208
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    #@13
    .line 200
    return-void

    #@14
    .line 204
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
    .line 205
    const-string/jumbo v2, "] not recognized by "

    #@29
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 206
    const-string/jumbo v2, "CertAttrSet:SubjectInfoAccessExtension."

    #@30
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3b
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
    .line 157
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 158
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 159
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 160
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->critical:Z

    #@10
    .line 161
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    #@13
    .line 163
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 164
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 156
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    const-string/jumbo v0, "descriptions"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 189
    iget-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@b
    return-object v0

    #@c
    .line 191
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
    .line 192
    const-string/jumbo v2, "] not recognized by "

    #@21
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 193
    const-string/jumbo v2, "CertAttrSet:SubjectInfoAccessExtension."

    #@28
    .line 191
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

.method public getAccessDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@2
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
    .line 216
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 217
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "descriptions"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 218
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
    .line 147
    const-string/jumbo v0, "SubjectInfoAccess"

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
    .line 171
    const-string/jumbo v0, "descriptions"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 172
    instance-of v0, p2, Ljava/util/List;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 173
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type List."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 175
    :cond_0
    check-cast p2, Ljava/util/List;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@1a
    .line 181
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    #@1d
    .line 170
    return-void

    #@1e
    .line 177
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
    .line 178
    const-string/jumbo v2, "] not recognized by "

    #@33
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 179
    const-string/jumbo v2, "CertAttrSet:SubjectInfoAccessExtension."

    #@3a
    .line 177
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
    .locals 2

    #@0
    .prologue
    .line 240
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
    const-string/jumbo v1, "SubjectInfoAccess [\n  "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 241
    iget-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    #@16
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 241
    const-string/jumbo v1, "\n]\n"

    #@1d
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method
