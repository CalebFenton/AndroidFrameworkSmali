.class public Lsun/security/x509/PolicyConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "PolicyConstraintsExtension.java"

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
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.PolicyConstraints"

.field public static final blacklist INHIBIT:Ljava/lang/String; = "inhibit"

.field public static final blacklist NAME:Ljava/lang/String; = "PolicyConstraints"

.field public static final blacklist REQUIRE:Ljava/lang/String; = "require"

.field private static final blacklist TAG_INHIBIT:B = 0x1t

.field private static final blacklist TAG_REQUIRE:B


# instance fields
.field private blacklist inhibit:I

.field private blacklist require:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "require"    # I
    .param p2, "inhibit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1, p2}, Lsun/security/x509/PolicyConstraintsExtension;-><init>(Ljava/lang/Boolean;II)V

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;II)V
    .registers 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "require"    # I
    .param p3, "inhibit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 77
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 128
    iput p2, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 129
    iput p3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 130
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    .line 132
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 9
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    .line 77
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 145
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    .line 148
    move-object v1, p2

    check-cast v1, [B

    iput-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    .line 149
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 150
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_82

    .line 153
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 154
    .local v2, "in":Lsun/security/util/DerInputStream;
    :goto_26
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_81

    .line 155
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 157
    .local v3, "next":Lsun/security/util/DerValue;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_56

    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_56

    .line 158
    iget v4, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    if-ne v4, v0, :cond_4e

    .line 161
    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 162
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getInteger()I

    move-result v4

    iput v4, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    goto :goto_70

    .line 159
    :cond_4e
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Duplicate requireExplicitPolicyfound in the PolicyConstraintsExtension"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_56
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 165
    invoke-virtual {v3}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-nez v4, :cond_79

    .line 166
    iget v4, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v4, v0, :cond_71

    .line 169
    invoke-virtual {v3, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 170
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getInteger()I

    move-result v4

    iput v4, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 173
    .end local v3    # "next":Lsun/security/util/DerValue;
    :goto_70
    goto :goto_26

    .line 167
    .restart local v3    # "next":Lsun/security/util/DerValue;
    :cond_71
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Duplicate inhibitPolicyMappingfound in the PolicyConstraintsExtension"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_79
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Invalid encoding of PolicyConstraint"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    .end local v3    # "next":Lsun/security/util/DerValue;
    :cond_81
    return-void

    .line 151
    .end local v2    # "in":Lsun/security/util/DerInputStream;
    :cond_82
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Sequence tag missing for PolicyConstraint."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encodeThis()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v0, v1, :cond_d

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    .line 83
    return-void

    .line 85
    :cond_d
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 86
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 88
    .local v2, "seq":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    const/16 v4, -0x80

    const/4 v5, 0x0

    if-eq v3, v1, :cond_2f

    .line 89
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 90
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    iget v6, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    invoke-virtual {v3, v6}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 91
    invoke-static {v4, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v0, v6, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 94
    .end local v3    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2f
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-eq v3, v1, :cond_45

    .line 95
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 96
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 97
    const/4 v3, 0x1

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 100
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_45
    const/16 v1, 0x30

    invoke-virtual {v2, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 101
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    .line 102
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v0, "require"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 250
    iput v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    goto :goto_16

    .line 251
    :cond_c
    const-string v0, "inhibit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 252
    iput v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 257
    :goto_16
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 258
    return-void

    .line 254
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:PolicyConstraints."

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

    .line 202
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 203
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 204
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    .line 206
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 208
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 209
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 210
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const-string v0, "require"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 236
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 237
    :cond_10
    const-string v0, "inhibit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 238
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 240
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:PolicyConstraints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 59
    invoke-virtual {p0, p1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
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

    .line 265
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 266
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "require"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 267
    const-string v1, "inhibit"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 276
    const-string v0, "PolicyConstraints"

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

    .line 216
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4a

    .line 219
    const-string v0, "require"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 220
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    goto :goto_27

    .line 221
    :cond_16
    const-string v0, "inhibit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 222
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    .line 228
    :goto_27
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    .line 229
    return-void

    .line 224
    :cond_2b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:PolicyConstraints."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PolicyConstraints: [  Require: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "unspecified;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 185
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tInhibit: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    if-ne v1, v2, :cond_74

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unspecified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_87

    .line 190
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method
