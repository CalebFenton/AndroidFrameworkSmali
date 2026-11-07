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
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final blacklist EXCLUDED_SUBTREES:Ljava/lang/String; = "excluded_subtrees"

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.NameConstraints"

.field public static final blacklist NAME:Ljava/lang/String; = "NameConstraints"

.field public static final blacklist PERMITTED_SUBTREES:Ljava/lang/String; = "permitted_subtrees"

.field private static final greylist-max-o TAG_EXCLUDED:B = 0x1t

.field private static final greylist-max-o TAG_PERMITTED:B


# instance fields
.field private greylist-max-o excluded:Lsun/security/x509/GeneralSubtrees;

.field private greylist-max-o hasMax:Z

.field private greylist-max-o hasMin:Z

.field private greylist-max-o minMaxValid:Z

.field private greylist-max-o permitted:Lsun/security/x509/GeneralSubtrees;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 8
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 82
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 169
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 172
    move-object v1, p2

    check-cast v1, [B

    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 173
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 174
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_8c

    .line 185
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v2, :cond_2c

    .line 186
    return-void

    .line 187
    :cond_2c
    :goto_2c
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_89

    .line 188
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 190
    .local v2, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-virtual {v2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 191
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v4, :cond_55

    .line 195
    invoke-virtual {v2, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 196
    new-instance v4, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v4, v2}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    goto :goto_78

    .line 192
    :cond_55
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Duplicate permitted GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_5d
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 199
    invoke-virtual {v2}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 200
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v4, :cond_79

    .line 204
    invoke-virtual {v2, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 205
    new-instance v4, Lsun/security/x509/GeneralSubtrees;

    invoke-direct {v4, v2}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/util/DerValue;)V

    iput-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 209
    .end local v2    # "opt":Lsun/security/util/DerValue;
    :goto_78
    goto :goto_2c

    .line 201
    .restart local v2    # "opt":Lsun/security/util/DerValue;
    :cond_79
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Duplicate excluded GeneralSubtrees in NameConstraintsExtension."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_81
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid encoding of NameConstraintsExtension."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    .end local v2    # "opt":Lsun/security/util/DerValue;
    :cond_89
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 211
    return-void

    .line 175
    :cond_8c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid encoding for NameConstraintsExtension."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lsun/security/x509/GeneralSubtrees;Lsun/security/x509/GeneralSubtrees;)V
    .registers 4
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;
    .param p2, "excluded"    # Lsun/security/x509/GeneralSubtrees;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 82
    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 151
    iput-object p1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 152
    iput-object p2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 154
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 156
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 157
    return-void
.end method

.method private greylist-max-o calcMinMax()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 91
    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 92
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 94
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    .line 95
    .local v3, "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v4

    if-eqz v4, :cond_22

    .line 96
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 97
    :cond_22
    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v4

    if-eq v4, v1, :cond_2a

    .line 98
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 93
    .end local v3    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 102
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_53

    .line 103
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_32
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v3

    if-ge v0, v3, :cond_53

    .line 104
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v3

    .line 105
    .restart local v3    # "subtree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtree;->getMinimum()I

    move-result v4

    if-eqz v4, :cond_48

    .line 106
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    .line 107
    :cond_48
    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtree;->getMaximum()I

    move-result v4

    if-eq v4, v1, :cond_50

    .line 108
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    .line 103
    .end local v3    # "subtree":Lsun/security/x509/GeneralSubtree;
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 111
    .end local v0    # "i":I
    :cond_53
    iput-boolean v2, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 112
    return-void
.end method

.method private greylist-max-o encodeThis()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    .line 117
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_f

    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_f

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 119
    return-void

    .line 121
    :cond_f
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 123
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 124
    .local v2, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    const/16 v4, -0x80

    const/4 v5, 0x1

    if-eqz v3, :cond_31

    .line 125
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 126
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v6, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v6, v3}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 127
    invoke-static {v4, v5, v0}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v0

    invoke-virtual {v2, v0, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 130
    .end local v3    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_31
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_46

    .line 131
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 132
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3, v0}, Lsun/security/x509/GeneralSubtrees;->encode(Lsun/security/util/DerOutputStream;)V

    .line 133
    invoke-static {v4, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v2, v3, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 136
    .end local v0    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_46
    const/16 v0, 0x30

    invoke-virtual {v1, v0, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 137
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 598
    nop

    .line 599
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    .line 601
    .local v0, "newNCE":Lsun/security/x509/NameConstraintsExtension;
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_15

    .line 602
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtrees;

    iput-object v1, v0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    .line 604
    :cond_15
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v1, :cond_23

    .line 605
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtrees;

    iput-object v1, v0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;
    :try_end_23
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_23} :catch_24

    .line 607
    :cond_23
    return-object v0

    .line 608
    .end local v0    # "newNCE":Lsun/security/x509/NameConstraintsExtension;
    :catch_24
    move-exception v0

    .line 609
    .local v0, "cnsee":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CloneNotSupportedException while cloning NameConstraintsException. This should never happen."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const-string v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 284
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    goto :goto_16

    .line 285
    :cond_c
    const-string v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 286
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 291
    :goto_16
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 292
    return-void

    .line 288
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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

    .line 232
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 233
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 234
    sget-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/NameConstraintsExtension;->critical:Z

    .line 236
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 238
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 239
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 240
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

    .line 63
    invoke-virtual {p0, p1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const-string v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 270
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    return-object v0

    .line 271
    :cond_b
    const-string v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 272
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    return-object v0

    .line 274
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

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

    .line 299
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 300
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "permitted_subtrees"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 301
    const-string v1, "excluded_subtrees"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 310
    const-string v0, "NameConstraints"

    return-object v0
.end method

.method public blacklist merge(Lsun/security/x509/NameConstraintsExtension;)V
    .registers 6
    .param p1, "newConstraints"    # Lsun/security/x509/NameConstraintsExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    if-nez p1, :cond_3

    .line 340
    return-void

    .line 349
    :cond_3
    const-string v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v0

    .line 350
    .local v0, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 351
    if-eqz v0, :cond_17

    .line 352
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralSubtrees;

    goto :goto_18

    :cond_17
    move-object v1, v2

    :goto_18
    iput-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    goto :goto_22

    .line 354
    :cond_1b
    if-eqz v0, :cond_22

    .line 356
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    .line 366
    :cond_22
    :goto_22
    const-string v1, "permitted_subtrees"

    invoke-virtual {p1, v1}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v1

    .line 367
    .local v1, "newPermitted":Lsun/security/x509/GeneralSubtrees;
    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-nez v3, :cond_39

    .line 368
    if-eqz v1, :cond_35

    .line 369
    invoke-virtual {v1}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    goto :goto_36

    :cond_35
    nop

    :goto_36
    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    goto :goto_55

    .line 371
    :cond_39
    if-eqz v1, :cond_55

    .line 373
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v1}, Lsun/security/x509/GeneralSubtrees;->intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_55

    .line 377
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_4d

    .line 378
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    goto :goto_55

    .line 380
    :cond_4d
    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralSubtrees;

    iput-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 390
    :cond_55
    :goto_55
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    if-eqz v2, :cond_60

    .line 391
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralSubtrees;->reduce(Lsun/security/x509/GeneralSubtrees;)V

    .line 396
    :cond_60
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 398
    return-void
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    const-string v0, "permitted_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Attribute value should be of type GeneralSubtrees."

    if-eqz v0, :cond_1a

    .line 247
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_14

    .line 251
    move-object v0, p2

    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    goto :goto_2b

    .line 248
    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1a
    const-string v0, "excluded_subtrees"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 253
    instance-of v0, p2, Lsun/security/x509/GeneralSubtrees;

    if-eqz v0, :cond_2f

    .line 257
    move-object v0, p2

    check-cast v0, Lsun/security/x509/GeneralSubtrees;

    iput-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    .line 262
    :goto_2b
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->encodeThis()V

    .line 263
    return-void

    .line 254
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet:NameConstraintsExtension."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NameConstraints: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    const-string v2, ""

    if-nez v1, :cond_1b

    move-object v1, v2

    goto :goto_34

    .line 219
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n    Permitted:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v3}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    if-nez v1, :cond_3d

    goto :goto_56

    .line 221
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n    Excluded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   ]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method

.method public blacklist verify(Ljava/security/cert/X509Certificate;)Z
    .registers 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    if-eqz p1, :cond_8b

    .line 419
    iget-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->minMaxValid:Z

    if-nez v0, :cond_9

    .line 420
    invoke-direct {p0}, Lsun/security/x509/NameConstraintsExtension;->calcMinMax()V

    .line 423
    :cond_9
    iget-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->hasMin:Z

    if-nez v0, :cond_83

    .line 428
    iget-boolean v0, p0, Lsun/security/x509/NameConstraintsExtension;->hasMax:Z

    if-nez v0, :cond_7b

    .line 433
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 434
    .local v0, "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v0}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v1

    .line 436
    .local v1, "subject":Lsun/security/x509/X500Name;
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 437
    invoke-virtual {p0, v1}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 438
    return v3

    .line 442
    :cond_27
    const/4 v2, 0x0

    .line 447
    .local v2, "altNames":Lsun/security/x509/GeneralNames;
    :try_start_28
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v4

    .line 448
    .local v4, "certImpl":Lsun/security/x509/X509CertImpl;
    nop

    .line 449
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v5

    .line 450
    .local v5, "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v5, :cond_3a

    .line 453
    const-string v6, "subject_name"

    invoke-virtual {v5, v6}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v6
    :try_end_39
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_39} :catch_5d

    move-object v2, v6

    .line 459
    .end local v4    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v5    # "altNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :cond_3a
    nop

    .line 465
    if-nez v2, :cond_42

    .line 466
    invoke-virtual {p0, v1}, Lsun/security/x509/NameConstraintsExtension;->verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z

    move-result v3

    return v3

    .line 470
    :cond_42
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_43
    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->size()I

    move-result v5

    if-ge v4, v5, :cond_5b

    .line 471
    invoke-virtual {v2, v4}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    .line 472
    .local v5, "altGNI":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p0, v5}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 473
    return v3

    .line 470
    .end local v5    # "altGNI":Lsun/security/x509/GeneralNameInterface;
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 478
    .end local v4    # "i":I
    :cond_5b
    const/4 v3, 0x1

    return v3

    .line 456
    :catch_5d
    move-exception v3

    .line 457
    .local v3, "ce":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to extract extensions from certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    .end local v0    # "subjectPrincipal":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "subject":Lsun/security/x509/X500Name;
    .end local v2    # "altNames":Lsun/security/x509/GeneralNames;
    .end local v3    # "ce":Ljava/security/cert/CertificateException;
    :cond_7b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum BaseDistance in name constraints not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_83
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Non-zero minimum BaseDistance in name constraints not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_8b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certificate is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist verify(Lsun/security/x509/GeneralNameInterface;)Z
    .registers 10
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    if-eqz p1, :cond_7d

    .line 496
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v0

    if-lez v0, :cond_3c

    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v2

    if-ge v0, v2, :cond_3c

    .line 499
    iget-object v2, p0, Lsun/security/x509/NameConstraintsExtension;->excluded:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v2

    .line 500
    .local v2, "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v2, :cond_21

    .line 501
    goto :goto_39

    .line 502
    :cond_21
    invoke-virtual {v2}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v3

    .line 503
    .local v3, "gn":Lsun/security/x509/GeneralName;
    if-nez v3, :cond_28

    .line 504
    goto :goto_39

    .line 505
    :cond_28
    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 506
    .local v4, "exName":Lsun/security/x509/GeneralNameInterface;
    if-nez v4, :cond_2f

    .line 507
    goto :goto_39

    .line 511
    :cond_2f
    invoke-interface {v4, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_86

    goto :goto_39

    .line 518
    :pswitch_37
    return v1

    .line 515
    :pswitch_38
    nop

    .line 498
    .end local v2    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v3    # "gn":Lsun/security/x509/GeneralName;
    .end local v4    # "exName":Lsun/security/x509/GeneralNameInterface;
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 524
    .end local v0    # "i":I
    :cond_3c
    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    const/4 v2, 0x1

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v0}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v0

    if-lez v0, :cond_7c

    .line 526
    const/4 v0, 0x0

    .line 528
    .local v0, "sameType":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4b
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtrees;->size()I

    move-result v4

    if-ge v3, v4, :cond_79

    .line 529
    iget-object v4, p0, Lsun/security/x509/NameConstraintsExtension;->permitted:Lsun/security/x509/GeneralSubtrees;

    invoke-virtual {v4, v3}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    move-result-object v4

    .line 530
    .local v4, "gs":Lsun/security/x509/GeneralSubtree;
    if-nez v4, :cond_5c

    .line 531
    goto :goto_76

    .line 532
    :cond_5c
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v5

    .line 533
    .local v5, "gn":Lsun/security/x509/GeneralName;
    if-nez v5, :cond_63

    .line 534
    goto :goto_76

    .line 535
    :cond_63
    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v6

    .line 536
    .local v6, "perName":Lsun/security/x509/GeneralNameInterface;
    if-nez v6, :cond_6a

    .line 537
    goto :goto_76

    .line 542
    :cond_6a
    invoke-interface {v6, p1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v7

    packed-switch v7, :pswitch_data_94

    goto :goto_76

    .line 547
    :pswitch_72
    const/4 v0, 0x1

    .line 548
    goto :goto_76

    .line 552
    :pswitch_74
    return v2

    .line 544
    :pswitch_75
    nop

    .line 528
    .end local v4    # "gs":Lsun/security/x509/GeneralSubtree;
    .end local v5    # "gn":Lsun/security/x509/GeneralName;
    .end local v6    # "perName":Lsun/security/x509/GeneralNameInterface;
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 555
    .end local v3    # "i":I
    :cond_79
    if-eqz v0, :cond_7c

    .line 556
    return v1

    .line 559
    .end local v0    # "sameType":Z
    :cond_7c
    return v2

    .line 492
    :cond_7d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "name is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_86
    .packed-switch -0x1
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_38
    .end packed-switch

    :pswitch_data_94
    .packed-switch -0x1
        :pswitch_75
        :pswitch_74
        :pswitch_74
        :pswitch_72
        :pswitch_72
    .end packed-switch
.end method

.method public blacklist verifyRFC822SpecialCase(Lsun/security/x509/X500Name;)Z
    .registers 8
    .param p1, "subject"    # Lsun/security/x509/X500Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    invoke-virtual {p1}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/AVA;

    .line 574
    .local v1, "ava":Lsun/security/x509/AVA;
    invoke-virtual {v1}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    .line 575
    .local v2, "attrOID":Lsun/security/util/ObjectIdentifier;
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 576
    invoke-virtual {v1}, Lsun/security/x509/AVA;->getValueString()Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "attrValue":Ljava/lang/String;
    if-eqz v3, :cond_36

    .line 580
    :try_start_26
    new-instance v4, Lsun/security/x509/RFC822Name;

    invoke-direct {v4, v3}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_34

    .line 583
    .local v4, "emailName":Lsun/security/x509/RFC822Name;
    nop

    .line 584
    invoke-virtual {p0, v4}, Lsun/security/x509/NameConstraintsExtension;->verify(Lsun/security/x509/GeneralNameInterface;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 585
    const/4 v0, 0x0

    return v0

    .line 581
    .end local v4    # "emailName":Lsun/security/x509/RFC822Name;
    :catch_34
    move-exception v4

    .line 582
    .local v4, "ioe":Ljava/io/IOException;
    goto :goto_8

    .line 589
    .end local v1    # "ava":Lsun/security/x509/AVA;
    .end local v2    # "attrOID":Lsun/security/util/ObjectIdentifier;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_36
    goto :goto_8

    .line 590
    :cond_37
    const/4 v0, 0x1

    return v0
.end method
