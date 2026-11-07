.class public Lsun/security/x509/SubjectInfoAccessExtension;
.super Lsun/security/x509/Extension;
.source "SubjectInfoAccessExtension.java"

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
.field public static final blacklist DESCRIPTIONS:Ljava/lang/String; = "descriptions"

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.SubjectInfoAccess"

.field public static final blacklist NAME:Ljava/lang/String; = "SubjectInfoAccess"


# instance fields
.field private blacklist accessDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/AccessDescription;",
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

    .line 115
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 116
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->critical:Z

    .line 119
    instance-of v0, p2, [B

    if-eqz v0, :cond_4c

    .line 123
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    .line 124
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 125
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_44

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    .line 130
    :goto_2a
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_43

    .line 131
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 132
    .local v1, "seq":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/x509/AccessDescription;

    invoke-direct {v2, v1}, Lsun/security/x509/AccessDescription;-><init>(Lsun/security/util/DerValue;)V

    .line 133
    .local v2, "accessDescription":Lsun/security/x509/AccessDescription;
    iget-object v3, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v1    # "seq":Lsun/security/util/DerValue;
    .end local v2    # "accessDescription":Lsun/security/x509/AccessDescription;
    goto :goto_2a

    .line 135
    :cond_43
    return-void

    .line 126
    :cond_44
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding for SubjectInfoAccessExtension."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    .end local v0    # "val":Lsun/security/util/DerValue;
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Illegal argument type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsun/security/x509/AccessDescription;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    .local p1, "accessDescriptions":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 101
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->critical:Z

    .line 103
    iput-object p1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    .line 105
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    goto :goto_37

    .line 229
    :cond_c
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 230
    .local v0, "ads":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/AccessDescription;

    .line 231
    .local v2, "accessDescription":Lsun/security/x509/AccessDescription;
    invoke-virtual {v2, v0}, Lsun/security/x509/AccessDescription;->encode(Lsun/security/util/DerOutputStream;)V

    .line 232
    .end local v2    # "accessDescription":Lsun/security/x509/AccessDescription;
    goto :goto_17

    .line 233
    :cond_27
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 234
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 235
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    .line 237
    .end local v0    # "ads":Lsun/security/util/DerOutputStream;
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    :goto_37
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

    .line 203
    const-string v0, "descriptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    nop

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    .line 211
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    .line 212
    return-void

    .line 207
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:SubjectInfoAccessExtension."

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

    .line 158
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 159
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 160
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 161
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->critical:Z

    .line 162
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    .line 164
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 165
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
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

    .line 71
    invoke-virtual {p0, p1}, Lsun/security/x509/SubjectInfoAccessExtension;->get(Ljava/lang/String;)Ljava/util/List;

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
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-string v0, "descriptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    iget-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    return-object v0

    .line 193
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:SubjectInfoAccessExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAccessDescriptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    return-object v0
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

    .line 219
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 220
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "descriptions"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 148
    const-string v0, "SubjectInfoAccess"

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

    .line 173
    const-string v0, "descriptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 174
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_15

    .line 177
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    .line 183
    invoke-direct {p0}, Lsun/security/x509/SubjectInfoAccessExtension;->encodeThis()V

    .line 184
    return-void

    .line 175
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type List."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:SubjectInfoAccessExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubjectInfoAccess [\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/SubjectInfoAccessExtension;->accessDescriptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
