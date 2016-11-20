.class public Lsun/security/x509/NameConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "NameConstraintsExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EXCLUDED_SUBTREES:Ljava/lang/String; = "excluded_subtrees"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field public static final NAME:Ljava/lang/String; = "NameConstraints"

.field public static final PERMITTED_SUBTREES:Ljava/lang/String; = "permitted_subtrees"

.field private static final TAG_EXCLUDED:B = 0x1t

.field private static final TAG_PERMITTED:B


# instance fields
.field private excluded:Lsun/security/x509/GeneralSubtrees;

.field private hasMax:Z

.field private hasMin:Z

.field private minMaxValid:Z

.field private permitted:Lsun/security/x509/GeneralSubtrees;


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
    const/16 v4, 0x30

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    .line 167
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@7
    .line 81
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@9
    .line 82
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@b
    .line 86
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    #@d
    .line 169
    sget-object v2, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@f
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@11
    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@14
    move-result v2

    #@15
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    #@17
    .line 172
    check-cast p2, [B

    #@19
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    #@1b
    .line 173
    new-instance v1, Lsun/security/util/DerValue;

    #@1d
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    #@1f
    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    #@22
    .line 174
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    #@24
    if-eq v2, v4, :cond_0

    #@26
    .line 175
    new-instance v2, Ljava/io/IOException;

    #@28
    const-string/jumbo v3, "Invalid encoding for NameConstraintsExtension."

    #@2b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 185
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@31
    if-nez v2, :cond_2

    #@33
    .line 186
    return-void

    #@34
    .line 195
    .local v0, "opt":Lsun/security/util/DerValue;
    :cond_1
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    #@37
    .line 196
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    #@39
    invoke-direct {v2, v0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    #@3c
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@3e
    .line 187
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_2
    :goto_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@40
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_6

    #@46
    .line 188
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@48
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@4b
    move-result-object v0

    #@4c
    .line 190
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_3

    #@52
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 191
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@5a
    if-eqz v2, :cond_1

    #@5c
    .line 192
    new-instance v2, Ljava/io/IOException;

    #@5e
    const-string/jumbo v3, "Duplicate permitted GeneralSubtrees in NameConstraintsExtension."

    #@61
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@64
    throw v2

    #@65
    .line 198
    :cond_3
    const/4 v2, 0x1

    #@66
    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_5

    #@6c
    .line 199
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    #@6f
    move-result v2

    #@70
    .line 198
    if-eqz v2, :cond_5

    #@72
    .line 200
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@74
    if-eqz v2, :cond_4

    #@76
    .line 201
    new-instance v2, Ljava/io/IOException;

    #@78
    const-string/jumbo v3, "Duplicate excluded GeneralSubtrees in NameConstraintsExtension."

    #@7b
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v2

    #@7f
    .line 204
    :cond_4
    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    #@82
    .line 205
    new-instance v2, Lsun/security/x509/GeneralSubtrees;

    #@84
    invoke-direct {v2, v0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    #@87
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@89
    goto :goto_0

    #@8a
    .line 207
    :cond_5
    new-instance v2, Ljava/io/IOException;

    #@8c
    const-string/jumbo v3, "Invalid encoding of NameConstraintsExtension."

    #@8f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@92
    throw v2

    #@93
    .line 210
    .end local v0    # "opt":Lsun/security/util/DerValue;
    :cond_6
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    #@95
    .line 168
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralSubtrees;Lsun/security/x509/GeneralSubtrees;)V
    .locals 1
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;
    .param p2, "excluded"    # Lsun/security/x509/GeneralSubtrees;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 148
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@4
    .line 81
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@6
    .line 82
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@8
    .line 86
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    #@b
    .line 151
    iput-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@d
    .line 152
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@f
    .line 154
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@11
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@13
    .line 155
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    #@16
    .line 156
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    #@19
    .line 150
    return-void
.end method

.method private calcMinMax()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    .line 90
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    #@5
    .line 91
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    #@7
    .line 92
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@9
    if-eqz v2, :cond_2

    #@b
    .line 93
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@e
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@11
    move-result v2

    #@12
    if-ge v0, v2, :cond_2

    #@14
    .line 94
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@16
    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@19
    move-result-object v1

    #@1a
    .line 95
    .local v1, "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 96
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    #@22
    .line 97
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    #@25
    move-result v2

    #@26
    if-eq v2, v4, :cond_1

    #@28
    .line 98
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    #@2a
    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 102
    .end local v0    # "i":I
    .end local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_2
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@2f
    if-eqz v2, :cond_5

    #@31
    .line 103
    const/4 v0, 0x0

    #@32
    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@34
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@37
    move-result v2

    #@38
    if-ge v0, v2, :cond_5

    #@3a
    .line 104
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@3c
    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@3f
    move-result-object v1

    #@40
    .line 105
    .restart local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_3

    #@46
    .line 106
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    #@48
    .line 107
    :cond_3
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    #@4b
    move-result v2

    #@4c
    if-eq v2, v4, :cond_4

    #@4e
    .line 108
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    #@50
    .line 103
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_1

    #@53
    .line 111
    .end local v0    # "i":I
    .end local v1    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_5
    iput-boolean v3, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    #@55
    .line 89
    return-void
.end method

.method private encodeThis()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v6, -0x80

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 116
    iput-boolean v7, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    #@7
    .line 117
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@9
    if-nez v3, :cond_0

    #@b
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@d
    if-nez v3, :cond_0

    #@f
    .line 118
    iput-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    #@11
    .line 119
    return-void

    #@12
    .line 121
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@14
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@17
    .line 123
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@19
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1c
    .line 124
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 125
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@22
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@25
    .line 126
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@27
    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    #@2a
    .line 127
    invoke-static {v6, v5, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@2d
    move-result v3

    #@2e
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@31
    .line 130
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@33
    if-eqz v3, :cond_2

    #@35
    .line 131
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@37
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3a
    .line 132
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@3c
    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    #@3f
    .line 133
    invoke-static {v6, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@42
    move-result v3

    #@43
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    #@46
    .line 136
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    const/16 v3, 0x30

    #@48
    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@4b
    .line 137
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@4e
    move-result-object v3

    #@4f
    iput-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    #@51
    .line 115
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 599
    :try_start_0
    invoke-super {p0}, Lsun/security/x509/Extension;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lsun/security/x509/NameConstraintsExtension;

    #@6
    .line 601
    .local v1, "newNCE":Lsun/security/x509/NameConstraintsExtension;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 602
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@c
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    #@12
    iput-object v2, v1, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@14
    .line 604
    :cond_0
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 605
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@1a
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    #@20
    iput-object v2, v1, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 607
    :cond_1
    return-object v1

    #@23
    .line 608
    .end local v1    # "newNCE":Lsun/security/x509/NameConstraintsExtension;
    :catch_0
    move-exception v0

    #@24
    .line 609
    .local v0, "cnsee":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v3, "CloneNotSupportedException while cloning NameConstraintsException. This should never happen."

    #@29
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v2
.end method

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
    const/4 v1, 0x0

    #@1
    .line 283
    const-string/jumbo v0, "permitted_subtrees"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 284
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@c
    .line 291
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    #@f
    .line 282
    return-void

    #@10
    .line 285
    :cond_0
    const-string/jumbo v0, "excluded_subtrees"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 286
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@1b
    goto :goto_0

    #@1c
    .line 288
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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
    .line 232
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 233
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 234
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 235
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    #@10
    .line 236
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    #@13
    .line 238
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 239
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 231
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
    .line 268
    invoke-virtual {p0, p1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    const-string/jumbo v0, "permitted_subtrees"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 270
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@b
    return-object v0

    #@c
    .line 271
    :cond_0
    const-string/jumbo v0, "excluded_subtrees"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 272
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@17
    return-object v0

    #@18
    .line 274
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1a
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    #@1d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@20
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
    .line 299
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 300
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "permitted_subtrees"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 301
    const-string/jumbo v1, "excluded_subtrees"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 303
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
    .line 310
    const-string/jumbo v0, "NameConstraints"

    #@3
    return-object v0
.end method

.method public merge(Lsun/security/x509/NameConstraintsExtension;)V
    .locals 4
    .param p1, "newConstraints"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 338
    if-nez p1, :cond_0

    #@3
    .line 340
    return-void

    #@4
    .line 349
    :cond_0
    const-string/jumbo v2, "excluded_subtrees"

    #@7
    invoke-virtual {p1, v2}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@a
    move-result-object v0

    #@b
    .line 350
    .local v0, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@d
    if-nez v2, :cond_5

    #@f
    .line 351
    if-eqz v0, :cond_4

    #@11
    .line 352
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    #@17
    .line 351
    :goto_0
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@19
    .line 366
    :cond_1
    :goto_1
    const-string/jumbo v2, "permitted_subtrees"

    #@1c
    invoke-virtual {p1, v2}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    #@1f
    move-result-object v1

    #@20
    .line 367
    .local v1, "newPermitted":Lsun/security/x509/GeneralSubtrees;
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@22
    if-nez v2, :cond_7

    #@24
    .line 368
    if-eqz v1, :cond_6

    #@26
    .line 369
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    #@2c
    .line 368
    :goto_2
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@2e
    .line 390
    :cond_2
    :goto_3
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@30
    if-eqz v2, :cond_3

    #@32
    .line 391
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@34
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@36
    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    #@39
    .line 396
    :cond_3
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    #@3c
    .line 336
    return-void

    #@3d
    .end local v1    # "newPermitted":Lsun/security/x509/GeneralSubtrees;
    :cond_4
    move-object v2, v3

    #@3e
    .line 352
    goto :goto_0

    #@3f
    .line 354
    :cond_5
    if-eqz v0, :cond_1

    #@41
    .line 356
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@43
    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    #@46
    goto :goto_1

    #@47
    .restart local v1    # "newPermitted":Lsun/security/x509/GeneralSubtrees;
    :cond_6
    move-object v2, v3

    #@48
    .line 369
    goto :goto_2

    #@49
    .line 371
    :cond_7
    if-eqz v1, :cond_2

    #@4b
    .line 373
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@4d
    invoke-virtual {v2, v1}, Lsun/security/x509/GeneralSubtrees;->intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;

    #@50
    move-result-object v0

    #@51
    .line 376
    if-eqz v0, :cond_2

    #@53
    .line 377
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@55
    if-eqz v2, :cond_8

    #@57
    .line 378
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@59
    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    #@5c
    goto :goto_3

    #@5d
    .line 380
    :cond_8
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    #@63
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@65
    goto :goto_3
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
    .line 246
    const-string/jumbo v0, "permitted_subtrees"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 247
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 248
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type GeneralSubtrees."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 251
    :cond_0
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@1a
    .line 262
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    #@1d
    .line 245
    return-void

    #@1e
    .line 252
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "excluded_subtrees"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 253
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 254
    new-instance v0, Ljava/io/IOException;

    #@2d
    const-string/jumbo v1, "Attribute value should be of type GeneralSubtrees."

    #@30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 257
    :cond_2
    check-cast p2, Lsun/security/x509/GeneralSubtrees;

    #@36
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@38
    goto :goto_0

    #@39
    .line 259
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@3b
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    #@3e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 217
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
    const-string/jumbo v1, "NameConstraints: ["

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 218
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@16
    if-nez v0, :cond_0

    #@18
    const-string/jumbo v0, ""

    #@1b
    .line 217
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 220
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@21
    if-nez v0, :cond_1

    #@23
    const-string/jumbo v0, ""

    #@26
    .line 217
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 222
    const-string/jumbo v1, "   ]\n"

    #@2d
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "\n    Permitted:"

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@44
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    goto :goto_0

    #@51
    .line 221
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v2, "\n    Excluded:"

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@5f
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    goto :goto_1
.end method

.method public verify(Ljava/security/cert/X509Certificate;)Z
    .locals 11
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 414
    if-nez p1, :cond_0

    #@3
    .line 415
    new-instance v8, Ljava/io/IOException;

    #@5
    const-string/jumbo v9, "Certificate is null"

    #@8
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@b
    throw v8

    #@c
    .line 419
    :cond_0
    iget-boolean v8, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    #@e
    if-nez v8, :cond_1

    #@10
    .line 420
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->calcMinMax()V

    #@13
    .line 423
    :cond_1
    iget-boolean v8, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    #@15
    if-eqz v8, :cond_2

    #@17
    .line 424
    new-instance v8, Ljava/io/IOException;

    #@19
    const-string/jumbo v9, "Non-zero minimum BaseDistance in name constraints not supported"

    #@1c
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v8

    #@20
    .line 428
    :cond_2
    iget-boolean v8, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    #@22
    if-eqz v8, :cond_3

    #@24
    .line 429
    new-instance v8, Ljava/io/IOException;

    #@26
    const-string/jumbo v9, "Maximum BaseDistance in name constraints not supported"

    #@29
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v8

    #@2d
    .line 433
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@30
    move-result-object v7

    #@31
    .line 434
    .local v7, "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v7}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    #@34
    move-result-object v6

    #@35
    .line 436
    .local v6, "subject":Lsun/security/x509/X500Name;
    invoke-virtual {v6}, Lsun/security/x509/X500Name;->isEmpty()Z

    #@38
    move-result v8

    #@39
    if-nez v8, :cond_4

    #@3b
    .line 437
    invoke-virtual {p0, v6}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    #@3e
    move-result v8

    #@3f
    if-nez v8, :cond_4

    #@41
    .line 438
    return v9

    #@42
    .line 442
    :cond_4
    const/4 v2, 0x0

    #@43
    .line 447
    .local v2, "altNames":Lsun/security/x509/GeneralNames;
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    #@46
    move-result-object v4

    #@47
    .line 449
    .local v4, "certImpl":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    #@4a
    move-result-object v1

    #@4b
    .line 450
    .local v1, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v1, :cond_5

    #@4d
    .line 454
    const-string/jumbo v8, "subject_name"

    #@50
    .line 453
    invoke-virtual {v1, v8}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@53
    move-result-object v2

    #@54
    .line 465
    .end local v2    # "altNames":Lsun/security/x509/GeneralNames;
    :cond_5
    if-nez v2, :cond_6

    #@56
    .line 466
    invoke-virtual {p0, v6}, Lsun/security/x509/NameConstraintsExtension;->verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z

    #@59
    move-result v8

    #@5a
    return v8

    #@5b
    .line 456
    .end local v1    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v4    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v2    # "altNames":Lsun/security/x509/GeneralNames;
    :catch_0
    move-exception v3

    #@5c
    .line 457
    .local v3, "ce":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    #@5e
    new-instance v9, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v10, "Unable to extract extensions from certificate: "

    #@66
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v9

    #@6a
    .line 458
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    #@6d
    move-result-object v10

    #@6e
    .line 457
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@79
    throw v8

    #@7a
    .line 470
    .end local v2    # "altNames":Lsun/security/x509/GeneralNames;
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .restart local v4    # "certImpl":Lsun/security/x509/X509CertImpl;
    :cond_6
    const/4 v5, 0x0

    #@7b
    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->size()I

    #@7e
    move-result v8

    #@7f
    if-ge v5, v8, :cond_8

    #@81
    .line 471
    invoke-virtual {v2, v5}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@88
    move-result-object v0

    #@89
    .line 472
    .local v0, "altGNI":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p0, v0}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    #@8c
    move-result v8

    #@8d
    if-nez v8, :cond_7

    #@8f
    .line 473
    return v9

    #@90
    .line 470
    :cond_7
    add-int/lit8 v5, v5, 0x1

    #@92
    goto :goto_0

    #@93
    .line 478
    .end local v0    # "altGNI":Lsun/security/x509/GeneralNameInterface;
    :cond_8
    const/4 v8, 0x1

    #@94
    return v8
.end method

.method public verify(Lsun/security/x509/GeneralNameInterface;)Z
    .locals 9
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 491
    if-nez p1, :cond_0

    #@4
    .line 492
    new-instance v6, Ljava/io/IOException;

    #@6
    const-string/jumbo v7, "name is null"

    #@9
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v6

    #@d
    .line 496
    :cond_0
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@f
    if-eqz v6, :cond_3

    #@11
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@13
    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@16
    move-result v6

    #@17
    if-lez v6, :cond_3

    #@19
    .line 498
    const/4 v3, 0x0

    #@1a
    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@1c
    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@1f
    move-result v6

    #@20
    if-ge v3, v6, :cond_3

    #@22
    .line 499
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    #@24
    invoke-virtual {v6, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@27
    move-result-object v2

    #@28
    .line 500
    .local v2, "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_2

    #@2a
    .line 498
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 502
    :cond_2
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    #@30
    move-result-object v1

    #@31
    .line 503
    .local v1, "gn":Lsun/security/x509/GeneralName;
    if-eqz v1, :cond_1

    #@33
    .line 505
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@36
    move-result-object v0

    #@37
    .line 506
    .local v0, "exName":Lsun/security/x509/GeneralNameInterface;
    if-eqz v0, :cond_1

    #@39
    .line 511
    invoke-interface {v0, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@3c
    move-result v6

    #@3d
    packed-switch v6, :pswitch_data_0

    #@40
    goto :goto_1

    #@41
    .line 518
    :pswitch_1
    return v7

    #@42
    .line 524
    .end local v0    # "exName":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "gn":Lsun/security/x509/GeneralName;
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@44
    if-eqz v6, :cond_7

    #@46
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@48
    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@4b
    move-result v6

    #@4c
    if-lez v6, :cond_7

    #@4e
    .line 526
    const/4 v5, 0x0

    #@4f
    .line 528
    .local v5, "sameType":Z
    const/4 v3, 0x0

    #@50
    .restart local v3    # "i":I
    :goto_2
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@52
    invoke-virtual {v6}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@55
    move-result v6

    #@56
    if-ge v3, v6, :cond_6

    #@58
    .line 529
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    #@5a
    invoke-virtual {v6, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@5d
    move-result-object v2

    #@5e
    .line 530
    .restart local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_5

    #@60
    .line 528
    :cond_4
    :goto_3
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_2

    #@63
    .line 532
    :cond_5
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    #@66
    move-result-object v1

    #@67
    .line 533
    .restart local v1    # "gn":Lsun/security/x509/GeneralName;
    if-eqz v1, :cond_4

    #@69
    .line 535
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@6c
    move-result-object v4

    #@6d
    .line 536
    .local v4, "perName":Lsun/security/x509/GeneralNameInterface;
    if-eqz v4, :cond_4

    #@6f
    .line 542
    invoke-interface {v4, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@72
    move-result v6

    #@73
    packed-switch v6, :pswitch_data_1

    #@76
    goto :goto_3

    #@77
    .line 552
    :pswitch_3
    return v8

    #@78
    .line 547
    :pswitch_4
    const/4 v5, 0x1

    #@79
    .line 548
    goto :goto_3

    #@7a
    .line 555
    .end local v1    # "gn":Lsun/security/x509/GeneralName;
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v4    # "perName":Lsun/security/x509/GeneralNameInterface;
    :cond_6
    if-eqz v5, :cond_7

    #@7c
    .line 556
    return v7

    #@7d
    .line 559
    .end local v3    # "i":I
    .end local v5    # "sameType":Z
    :cond_7
    return v8

    #@7e
    .line 511
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    #@8c
    .line 542
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z
    .locals 7
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 573
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    #@3
    move-result-object v6

    #@4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v3

    #@8
    .local v3, "ava$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_1

    #@e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Lsun/security/x509/AVA;

    #@14
    .line 574
    .local v2, "ava":Lsun/security/x509/AVA;
    invoke-virtual {v2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    #@17
    move-result-object v0

    #@18
    .line 575
    .local v0, "attrOID":Lsun/security/util/ObjectIdentifier;
    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    #@1a
    invoke-virtual {v0, v6}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 576
    invoke-virtual {v2}, Lsun/security/x509/AVA;->getValueString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 577
    .local v1, "attrValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@26
    .line 580
    :try_start_0
    new-instance v4, Lsun/security/x509/RFC822Name;

    #@28
    invoke-direct {v4, v1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 584
    .local v4, "emailName":Lsun/security/x509/RFC822Name;
    invoke-virtual {p0, v4}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    #@2e
    move-result v6

    #@2f
    if-nez v6, :cond_0

    #@31
    .line 585
    const/4 v6, 0x0

    #@32
    return v6

    #@33
    .line 590
    .end local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "ava":Lsun/security/x509/AVA;
    .end local v4    # "emailName":Lsun/security/x509/RFC822Name;
    :cond_1
    const/4 v6, 0x1

    #@34
    return v6

    #@35
    .line 581
    .restart local v0    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .restart local v1    # "attrValue":Ljava/lang/String;
    .restart local v2    # "ava":Lsun/security/x509/AVA;
    :catch_0
    move-exception v5

    #@36
    .local v5, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method
