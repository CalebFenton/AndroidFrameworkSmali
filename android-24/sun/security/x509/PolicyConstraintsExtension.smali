.class public Lsun/security/x509/PolicyConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "PolicyConstraintsExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.PolicyConstraints"

.field public static final INHIBIT:Ljava/lang/String; = "inhibit"

.field public static final NAME:Ljava/lang/String; = "PolicyConstraints"

.field public static final REQUIRE:Ljava/lang/String; = "require"

.field private static final TAG_INHIBIT:B = 0x1t

.field private static final TAG_REQUIRE:B


# instance fields
.field private inhibit:I

.field private require:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "require"    # I
    .param p2, "inhibit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2
    invoke-direct {p0, v0, p1, p2}, Lsun/security/x509/PolicyConstraintsExtension;-><init>(Ljava/lang/Boolean;II)V

    #@5
    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;II)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "require"    # I
    .param p3, "inhibit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 126
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 76
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@6
    .line 77
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@8
    .line 128
    iput p2, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@a
    .line 129
    iput p3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@c
    .line 130
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@e
    iput-object v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@10
    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@13
    move-result v0

    #@14
    iput-boolean v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    #@16
    .line 132
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    #@19
    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 8
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    .line 143
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@6
    .line 76
    iput v5, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@8
    .line 77
    iput v5, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@a
    .line 145
    sget-object v3, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@c
    iput-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@e
    .line 146
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v3

    #@12
    iput-boolean v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    #@14
    .line 148
    check-cast p2, [B

    #@16
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    #@18
    .line 149
    new-instance v2, Lsun/security/util/DerValue;

    #@1a
    iget-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    #@1c
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@1f
    .line 150
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@21
    const/16 v4, 0x30

    #@23
    if-eq v3, v4, :cond_0

    #@25
    .line 151
    new-instance v3, Ljava/io/IOException;

    #@27
    const-string/jumbo v4, "Sequence tag missing for PolicyConstraint."

    #@2a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v3

    #@2e
    .line 153
    :cond_0
    iget-object v0, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@30
    .line 154
    .local v0, "in":Lsun/security/util/DerInputStream;
    :goto_0
    if-eqz v0, :cond_7

    #@32
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_7

    #@38
    .line 155
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3b
    move-result-object v1

    #@3c
    .line 157
    .local v1, "next":Lsun/security/util/DerValue;
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_1

    #@42
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_3

    #@48
    .line 164
    :cond_1
    const/4 v3, 0x1

    #@49
    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_2

    #@4f
    .line 165
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_5

    #@55
    .line 172
    :cond_2
    new-instance v3, Ljava/io/IOException;

    #@57
    const-string/jumbo v4, "Invalid encoding of PolicyConstraint"

    #@5a
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v3

    #@5e
    .line 158
    :cond_3
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@60
    if-eq v3, v5, :cond_4

    #@62
    .line 159
    new-instance v3, Ljava/io/IOException;

    #@64
    const-string/jumbo v4, "Duplicate requireExplicitPolicyfound in the PolicyConstraintsExtension"

    #@67
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v3

    #@6b
    .line 161
    :cond_4
    invoke-virtual {v1, v7}, Lsun/security/util/DerValue;->resetTag(B)V

    #@6e
    .line 162
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    #@71
    move-result v3

    #@72
    iput v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@74
    goto :goto_0

    #@75
    .line 166
    :cond_5
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@77
    if-eq v3, v5, :cond_6

    #@79
    .line 167
    new-instance v3, Ljava/io/IOException;

    #@7b
    const-string/jumbo v4, "Duplicate inhibitPolicyMappingfound in the PolicyConstraintsExtension"

    #@7e
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@81
    throw v3

    #@82
    .line 169
    :cond_6
    invoke-virtual {v1, v7}, Lsun/security/util/DerValue;->resetTag(B)V

    #@85
    .line 170
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    #@88
    move-result v3

    #@89
    iput v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@8b
    goto :goto_0

    #@8c
    .line 144
    .end local v1    # "next":Lsun/security/util/DerValue;
    :cond_7
    return-void
.end method

.method private encodeThis()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, -0x80

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, -0x1

    #@4
    .line 81
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@6
    if-ne v3, v4, :cond_0

    #@8
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@a
    if-ne v3, v4, :cond_0

    #@c
    .line 82
    const/4 v3, 0x0

    #@d
    iput-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    #@f
    .line 83
    return-void

    #@10
    .line 85
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 86
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@17
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1a
    .line 88
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@1c
    if-eq v3, v4, :cond_1

    #@1e
    .line 89
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@20
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@23
    .line 90
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@25
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@28
    .line 91
    invoke-static {v6, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@2b
    move-result v3

    #@2c
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@2f
    .line 94
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@31
    if-eq v3, v4, :cond_2

    #@33
    .line 95
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@35
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@38
    .line 96
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@3a
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    #@3d
    .line 98
    const/4 v3, 0x1

    #@3e
    .line 97
    invoke-static {v6, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@41
    move-result v3

    #@42
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@45
    .line 100
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    const/16 v3, 0x30

    #@47
    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@4a
    .line 101
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@4d
    move-result-object v3

    #@4e
    iput-object v3, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    #@50
    .line 80
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
    const/4 v1, -0x1

    #@1
    .line 249
    const-string/jumbo v0, "require"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 250
    iput v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@c
    .line 257
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    #@f
    .line 248
    return-void

    #@10
    .line 251
    :cond_0
    const-string/jumbo v0, "inhibit"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 252
    iput v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@1b
    goto :goto_0

    #@1c
    .line 254
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyConstraints."

    #@21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
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
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 203
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 204
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 205
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->critical:Z

    #@10
    .line 206
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    #@13
    .line 208
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 209
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 201
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
    .line 235
    const-string/jumbo v0, "require"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 236
    new-instance v0, Ljava/lang/Integer;

    #@b
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@d
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@10
    return-object v0

    #@11
    .line 237
    :cond_0
    const-string/jumbo v0, "inhibit"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 238
    new-instance v0, Ljava/lang/Integer;

    #@1c
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    #@21
    return-object v0

    #@22
    .line 240
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@24
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PolicyConstraints."

    #@27
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
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
    .line 234
    invoke-virtual {p0, p1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

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
    .line 265
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 266
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "require"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 267
    const-string/jumbo v1, "inhibit"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 269
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
    .line 276
    const-string/jumbo v0, "PolicyConstraints"

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
    .line 216
    instance-of v0, p2, Ljava/lang/Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 217
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute value should be of type Integer."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 219
    :cond_0
    const-string/jumbo v0, "require"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 220
    check-cast p2, Ljava/lang/Integer;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@1e
    .line 228
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PolicyConstraintsExtension;->encodeThis()V

    #@21
    .line 215
    return-void

    #@22
    .line 221
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "inhibit"

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 222
    check-cast p2, Ljava/lang/Integer;

    #@2d
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@33
    goto :goto_0

    #@34
    .line 224
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Attribute name ["

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    const-string/jumbo v2, "]"

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 225
    const-string/jumbo v2, " not recognized by "

    #@50
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 226
    const-string/jumbo v2, "CertAttrSet:PolicyConstraints."

    #@57
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "PolicyConstraints: ["

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, "  Require: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 182
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@22
    if-ne v1, v3, :cond_0

    #@24
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, "unspecified;"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    .line 186
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    const-string/jumbo v2, "\tInhibit: "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    .line 187
    iget v1, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@4e
    if-ne v1, v3, :cond_1

    #@50
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    const-string/jumbo v2, "unspecified"

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 191
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    const-string/jumbo v2, " ]\n"

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    .line 192
    return-object v0

    #@79
    .line 185
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    iget v2, p0, Lsun/security/x509/PolicyConstraintsExtension;->require:I

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    const-string/jumbo v2, ";"

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    goto :goto_0

    #@94
    .line 190
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v1

    #@9d
    iget v2, p0, Lsun/security/x509/PolicyConstraintsExtension;->inhibit:I

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    goto :goto_1
.end method
