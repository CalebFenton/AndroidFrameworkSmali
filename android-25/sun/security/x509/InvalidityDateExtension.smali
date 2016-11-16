.class public Lsun/security/x509/InvalidityDateExtension;
.super Lsun/security/x509/Extension;
.source "InvalidityDateExtension.java"

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
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final NAME:Ljava/lang/String; = "InvalidityDate"


# instance fields
.field private date:Ljava/util/Date;


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
    .line 113
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 115
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v1

    #@b
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@d
    .line 117
    check-cast p2, [B

    #@f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@11
    .line 118
    new-instance v0, Lsun/security/util/DerValue;

    #@13
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@15
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@18
    .line 119
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@1e
    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lsun/security/x509/InvalidityDateExtension;-><init>(ZLjava/util/Date;)V

    #@4
    .line 87
    return-void
.end method

.method public constructor <init>(ZLjava/util/Date;)V
    .locals 1
    .param p1, "critical"    # Z
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 99
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 100
    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    #@9
    .line 101
    iput-object p2, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@b
    .line 102
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    #@e
    .line 98
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
    const/4 v2, 0x0

    #@1
    .line 72
    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 73
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@7
    .line 74
    return-void

    #@8
    .line 76
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@a
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@d
    .line 77
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@f
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@12
    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@18
    .line 71
    return-void
.end method

.method public static toImpl(Ljava/security/cert/Extension;)Lsun/security/x509/InvalidityDateExtension;
    .locals 3
    .param p0, "ext"    # Ljava/security/cert/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    instance-of v0, p0, Lsun/security/x509/InvalidityDateExtension;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 213
    nop

    #@5
    nop

    #@6
    .end local p0    # "ext":Ljava/security/cert/Extension;
    return-object p0

    #@7
    .line 215
    .restart local p0    # "ext":Ljava/security/cert/Extension;
    :cond_0
    new-instance v0, Lsun/security/x509/InvalidityDateExtension;

    #@9
    .line 216
    invoke-interface {p0}, Ljava/security/cert/Extension;->isCritical()Z

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v1

    #@11
    invoke-interface {p0}, Ljava/security/cert/Extension;->getValue()[B

    #@14
    move-result-object v2

    #@15
    .line 215
    invoke-direct {v0, v1, v2}, Lsun/security/x509/InvalidityDateExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    #@18
    return-object v0
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
    .line 158
    const-string/jumbo v0, "date"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 159
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@c
    .line 164
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    #@f
    .line 157
    return-void

    #@10
    .line 161
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    .line 162
    const-string/jumbo v1, "Name not supported by InvalidityDateExtension"

    #@15
    .line 161
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
    .line 181
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 183
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 184
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 185
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    #@10
    .line 186
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    #@13
    .line 188
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 189
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 180
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 142
    const-string/jumbo v0, "date"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 143
    iget-object v0, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 144
    return-object v1

    #@f
    .line 146
    :cond_0
    new-instance v0, Ljava/util/Date;

    #@11
    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@13
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@16
    move-result-wide v2

    #@17
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1a
    return-object v0

    #@1b
    .line 149
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1d
    .line 150
    const-string/jumbo v1, "Name not supported by InvalidityDateExtension"

    #@20
    .line 149
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
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
    .line 197
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 198
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "date"

    #@8
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@b
    .line 200
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    const-string/jumbo v0, "InvalidityDate"

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
    .line 126
    instance-of v0, p2, Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 127
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type Date."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 129
    :cond_0
    const-string/jumbo v0, "date"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 130
    nop

    #@17
    nop

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@1a
    .line 135
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    #@1d
    .line 125
    return-void

    #@1e
    .line 132
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    .line 133
    const-string/jumbo v1, "Name not supported by InvalidityDateExtension"

    #@23
    .line 132
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 171
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
    const-string/jumbo v1, "    Invalidity Date: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    #@16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method
