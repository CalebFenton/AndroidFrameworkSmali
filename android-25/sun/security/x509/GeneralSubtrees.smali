.class public Lsun/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;
.source "GeneralSubtrees.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NAME_DIFF_TYPE:I = -0x1

.field private static final NAME_MATCH:I = 0x0

.field private static final NAME_NARROWS:I = 0x1

.field private static final NAME_SAME_TYPE:I = 0x3

.field private static final NAME_WIDENS:I = 0x2


# instance fields
.field private final trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@a
    .line 61
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    #@3
    .line 76
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@5
    const/16 v3, 0x30

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 77
    new-instance v2, Ljava/io/IOException;

    #@b
    const-string/jumbo v3, "Invalid encoding of GeneralSubtrees."

    #@e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 79
    :cond_0
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@14
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 80
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@1c
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1f
    move-result-object v0

    #@20
    .line 81
    .local v0, "opt":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralSubtree;

    #@22
    invoke-direct {v1, v0}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/util/DerValue;)V

    #@25
    .line 82
    .local v1, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    #@28
    goto :goto_0

    #@29
    .line 74
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_1
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/GeneralSubtrees;)V
    .locals 2
    .param p1, "source"    # Lsun/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    #@5
    iget-object v1, p1, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a
    iput-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@c
    .line 65
    return-void
.end method

.method private createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;
    .locals 6
    .param p1, "name"    # Lsun/security/x509/GeneralNameInterface;

    #@0
    .prologue
    .line 246
    :try_start_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@3
    move-result v3

    #@4
    packed-switch v3, :pswitch_data_0

    #@7
    .line 279
    new-instance v3, Ljava/io/IOException;

    #@9
    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v5, "Unsupported GeneralNameInterface type: "

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v4

    #@15
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@18
    move-result v5

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 279
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 283
    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_0
    move-exception v0

    #@26
    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Unexpected error: "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw v3

    #@40
    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_0
    :try_start_1
    check-cast p1, Lsun/security/x509/OtherName;

    #@42
    .end local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/OtherName;->getOID()Lsun/security/util/ObjectIdentifier;

    #@45
    move-result-object v2

    #@46
    .line 251
    .local v2, "otherOID":Lsun/security/util/ObjectIdentifier;
    new-instance v1, Lsun/security/x509/GeneralName;

    #@48
    new-instance v3, Lsun/security/x509/OtherName;

    #@4a
    const/4 v4, 0x0

    #@4b
    invoke-direct {v3, v2, v4}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/ObjectIdentifier;[B)V

    #@4e
    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@51
    .line 282
    .end local v2    # "otherOID":Lsun/security/util/ObjectIdentifier;
    .local v1, "newName":Lsun/security/x509/GeneralName;
    :goto_0
    new-instance v3, Lsun/security/x509/GeneralSubtree;

    #@53
    const/4 v4, 0x0

    #@54
    const/4 v5, -0x1

    #@55
    invoke-direct {v3, v1, v4, v5}, Lsun/security/x509/GeneralSubtree;-><init>(Lsun/security/x509/GeneralName;II)V

    #@58
    return-object v3

    #@59
    .line 254
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    .restart local p1    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_1
    new-instance v1, Lsun/security/x509/GeneralName;

    #@5b
    new-instance v3, Lsun/security/x509/RFC822Name;

    #@5d
    const-string/jumbo v4, ""

    #@60
    invoke-direct {v3, v4}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    #@63
    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@66
    .line 255
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@67
    .line 257
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_2
    new-instance v1, Lsun/security/x509/GeneralName;

    #@69
    new-instance v3, Lsun/security/x509/DNSName;

    #@6b
    const-string/jumbo v4, ""

    #@6e
    invoke-direct {v3, v4}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    #@71
    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@74
    .line 258
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@75
    .line 260
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_3
    new-instance v1, Lsun/security/x509/GeneralName;

    #@77
    new-instance v4, Lsun/security/x509/X400Address;

    #@79
    const/4 v3, 0x0

    #@7a
    nop

    #@7b
    nop

    #@7c
    invoke-direct {v4, v3}, Lsun/security/x509/X400Address;-><init>([B)V

    #@7f
    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@82
    .line 261
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@83
    .line 263
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_4
    new-instance v1, Lsun/security/x509/GeneralName;

    #@85
    new-instance v3, Lsun/security/x509/X500Name;

    #@87
    const-string/jumbo v4, ""

    #@8a
    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    #@8d
    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@90
    .line 264
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@91
    .line 266
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_5
    new-instance v1, Lsun/security/x509/GeneralName;

    #@93
    new-instance v3, Lsun/security/x509/EDIPartyName;

    #@95
    const-string/jumbo v4, ""

    #@98
    invoke-direct {v3, v4}, Lsun/security/x509/EDIPartyName;-><init>(Ljava/lang/String;)V

    #@9b
    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@9e
    .line 267
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@9f
    .line 269
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_6
    new-instance v1, Lsun/security/x509/GeneralName;

    #@a1
    new-instance v3, Lsun/security/x509/URIName;

    #@a3
    const-string/jumbo v4, ""

    #@a6
    invoke-direct {v3, v4}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    #@a9
    invoke-direct {v1, v3}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@ac
    .line 270
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@ad
    .line 272
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_7
    new-instance v1, Lsun/security/x509/GeneralName;

    #@af
    new-instance v4, Lsun/security/x509/IPAddressName;

    #@b1
    const/4 v3, 0x0

    #@b2
    nop

    #@b3
    nop

    #@b4
    invoke-direct {v4, v3}, Lsun/security/x509/IPAddressName;-><init>([B)V

    #@b7
    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    #@ba
    .line 273
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@bb
    .line 275
    .end local v1    # "newName":Lsun/security/x509/GeneralName;
    :pswitch_8
    new-instance v1, Lsun/security/x509/GeneralName;

    #@bd
    .line 276
    new-instance v4, Lsun/security/x509/OIDName;

    #@bf
    new-instance v5, Lsun/security/util/ObjectIdentifier;

    #@c1
    const/4 v3, 0x0

    #@c2
    nop

    #@c3
    nop

    #@c4
    invoke-direct {v5, v3}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    #@c7
    invoke-direct {v4, v5}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/ObjectIdentifier;)V

    #@ca
    .line 275
    invoke-direct {v1, v4}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@cd
    .line 277
    .restart local v1    # "newName":Lsun/security/x509/GeneralName;
    goto :goto_0

    #@ce
    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;
    .locals 1
    .param p1, "ndx"    # I

    #@0
    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;
    .locals 2
    .param p0, "gs"    # Lsun/security/x509/GeneralSubtree;

    #@0
    .prologue
    .line 179
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    #@3
    move-result-object v0

    #@4
    .line 180
    .local v0, "gn":Lsun/security/x509/GeneralName;
    invoke-virtual {v0}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    #@7
    move-result-object v1

    #@8
    .line 181
    .local v1, "gni":Lsun/security/x509/GeneralNameInterface;
    return-object v1
.end method

.method private minimize()V
    .locals 6

    #@0
    .prologue
    .line 194
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@4
    move-result v5

    #@5
    if-ge v1, v5, :cond_2

    #@7
    .line 195
    invoke-direct {p0, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@a
    move-result-object v0

    #@b
    .line 196
    .local v0, "current":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    #@c
    .line 199
    .local v3, "remove1":Z
    add-int/lit8 v2, v1, 0x1

    #@e
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@11
    move-result v5

    #@12
    if-ge v2, v5, :cond_0

    #@14
    .line 200
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@17
    move-result-object v4

    #@18
    .line 201
    .local v4, "subsequent":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@1b
    move-result v5

    #@1c
    packed-switch v5, :pswitch_data_0

    #@1f
    .line 227
    .end local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    #@21
    .line 228
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    #@24
    .line 229
    add-int/lit8 v1, v1, -0x1

    #@26
    .line 194
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 207
    .restart local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :pswitch_0
    const/4 v3, 0x1

    #@2a
    .line 208
    goto :goto_2

    #@2b
    .line 212
    :pswitch_1
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    #@2e
    .line 213
    add-int/lit8 v2, v2, -0x1

    #@30
    .line 199
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    #@32
    goto :goto_1

    #@33
    .line 218
    :pswitch_3
    const/4 v3, 0x1

    #@34
    .line 219
    goto :goto_2

    #@35
    .line 188
    .end local v0    # "current":Lsun/security/x509/GeneralNameInterface;
    .end local v2    # "j":I
    .end local v3    # "remove1":Z
    .end local v4    # "subsequent":Lsun/security/x509/GeneralNameInterface;
    :cond_2
    return-void

    #@36
    .line 201
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public add(Lsun/security/x509/GeneralSubtree;)V
    .locals 1
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    #@0
    .prologue
    .line 95
    if-nez p1, :cond_0

    #@2
    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 98
    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 94
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 121
    new-instance v0, Lsun/security/x509/GeneralSubtrees;

    #@2
    invoke-direct {v0, p0}, Lsun/security/x509/GeneralSubtrees;-><init>(Lsun/security/x509/GeneralSubtrees;)V

    #@5
    return-object v0
.end method

.method public contains(Lsun/security/x509/GeneralSubtree;)Z
    .locals 1
    .param p1, "tree"    # Lsun/security/x509/GeneralSubtree;

    #@0
    .prologue
    .line 102
    if-nez p1, :cond_0

    #@2
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 105
    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 138
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 140
    .local v2, "seq":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@9
    move-result v1

    #@a
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 141
    invoke-virtual {p0, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, v2}, Lsun/security/x509/GeneralSubtree;->encode(Lsun/security/util/DerOutputStream;)V

    #@13
    .line 140
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 143
    :cond_0
    const/16 v3, 0x30

    #@18
    invoke-virtual {p1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@1b
    .line 137
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 154
    if-ne p0, p1, :cond_0

    #@2
    .line 155
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 157
    :cond_0
    instance-of v1, p1, Lsun/security/x509/GeneralSubtrees;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 158
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 160
    nop

    #@c
    nop

    #@d
    .line 161
    .local v0, "other":Lsun/security/x509/GeneralSubtrees;
    iget-object v1, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@f
    iget-object v2, v0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public get(I)Lsun/security/x509/GeneralSubtree;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/x509/GeneralSubtree;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intersect(Lsun/security/x509/GeneralSubtrees;)Lsun/security/x509/GeneralSubtrees;
    .locals 20
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 322
    if-nez p1, :cond_0

    #@2
    .line 323
    new-instance v18, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v19, "other GeneralSubtrees must not be null"

    #@7
    invoke-direct/range {v18 .. v19}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v18

    #@b
    .line 326
    :cond_0
    new-instance v9, Lsun/security/x509/GeneralSubtrees;

    #@d
    invoke-direct {v9}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    #@10
    .line 327
    .local v9, "newThis":Lsun/security/x509/GeneralSubtrees;
    const/4 v8, 0x0

    #@11
    .line 331
    .local v8, "newExcluded":Lsun/security/x509/GeneralSubtrees;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@14
    move-result v18

    #@15
    if-nez v18, :cond_1

    #@17
    .line 332
    invoke-virtual/range {p0 .. p1}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    #@1a
    .line 333
    const/16 v18, 0x0

    #@1c
    return-object v18

    #@1d
    .line 339
    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    #@20
    .line 340
    invoke-direct/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    #@23
    .line 350
    const/4 v4, 0x0

    #@24
    .end local v8    # "newExcluded":Lsun/security/x509/GeneralSubtrees;
    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@27
    move-result v18

    #@28
    move/from16 v0, v18

    #@2a
    if-ge v4, v0, :cond_a

    #@2c
    .line 351
    move-object/from16 v0, p0

    #@2e
    invoke-direct {v0, v4}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@31
    move-result-object v16

    #@32
    .line 352
    .local v16, "thisEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v13, 0x0

    #@33
    .line 359
    .local v13, "removeThisEntry":Z
    const/4 v14, 0x0

    #@34
    .line 360
    .local v14, "sameType":Z
    const/4 v6, 0x0

    #@35
    .local v6, "j":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@38
    move-result v18

    #@39
    move/from16 v0, v18

    #@3b
    if-ge v6, v0, :cond_2

    #@3d
    .line 361
    move-object/from16 v0, p1

    #@3f
    invoke-virtual {v0, v6}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@42
    move-result-object v12

    #@43
    .line 363
    .local v12, "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    #@46
    move-result-object v11

    #@47
    .line 364
    .local v11, "otherEntry":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    #@49
    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@4c
    move-result v18

    #@4d
    packed-switch v18, :pswitch_data_0

    #@50
    .line 360
    :goto_2
    add-int/lit8 v6, v6, 0x1

    #@52
    goto :goto_1

    #@53
    .line 366
    :pswitch_0
    move-object/from16 v0, p0

    #@55
    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    #@58
    .line 367
    add-int/lit8 v4, v4, -0x1

    #@5a
    .line 368
    invoke-virtual {v9, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    #@5d
    .line 369
    const/4 v14, 0x0

    #@5e
    .line 389
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :cond_2
    :goto_3
    if-eqz v14, :cond_9

    #@60
    .line 395
    const/4 v5, 0x0

    #@61
    .line 396
    .local v5, "intersection":Z
    const/4 v6, 0x0

    #@62
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@65
    move-result v18

    #@66
    move/from16 v0, v18

    #@68
    if-ge v6, v0, :cond_6

    #@6a
    .line 397
    move-object/from16 v0, p0

    #@6c
    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@6f
    move-result-object v15

    #@70
    .line 399
    .local v15, "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v15}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@73
    move-result v18

    #@74
    invoke-interface/range {v16 .. v16}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@77
    move-result v19

    #@78
    move/from16 v0, v18

    #@7a
    move/from16 v1, v19

    #@7c
    if-ne v0, v1, :cond_4

    #@7e
    .line 400
    const/4 v7, 0x0

    #@7f
    .local v7, "k":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@82
    move-result v18

    #@83
    move/from16 v0, v18

    #@85
    if-ge v7, v0, :cond_4

    #@87
    .line 402
    move-object/from16 v0, p1

    #@89
    invoke-direct {v0, v7}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@8c
    move-result-object v10

    #@8d
    .line 405
    .local v10, "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v15, v10}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@90
    move-result v2

    #@91
    .line 406
    .local v2, "constraintType":I
    if-eqz v2, :cond_3

    #@93
    .line 407
    const/16 v18, 0x2

    #@95
    move/from16 v0, v18

    #@97
    if-ne v2, v0, :cond_5

    #@99
    .line 409
    :cond_3
    const/4 v5, 0x1

    #@9a
    .line 396
    .end local v2    # "constraintType":I
    .end local v7    # "k":I
    .end local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@9c
    goto :goto_4

    #@9d
    .line 372
    .end local v5    # "intersection":Z
    .end local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :pswitch_1
    const/4 v14, 0x1

    #@9e
    .line 373
    goto :goto_2

    #@9f
    .line 376
    :pswitch_2
    const/4 v14, 0x0

    #@a0
    .line 377
    goto :goto_3

    #@a1
    .line 408
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    .restart local v2    # "constraintType":I
    .restart local v5    # "intersection":Z
    .restart local v7    # "k":I
    .restart local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .restart local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_5
    const/16 v18, 0x1

    #@a3
    move/from16 v0, v18

    #@a5
    if-eq v2, v0, :cond_3

    #@a7
    .line 400
    add-int/lit8 v7, v7, 0x1

    #@a9
    goto :goto_5

    #@aa
    .line 415
    .end local v2    # "constraintType":I
    .end local v7    # "k":I
    .end local v10    # "othAltEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v15    # "thisAltEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_6
    if-nez v5, :cond_8

    #@ac
    .line 416
    if-nez v8, :cond_7

    #@ae
    .line 417
    new-instance v8, Lsun/security/x509/GeneralSubtrees;

    #@b0
    invoke-direct {v8}, Lsun/security/x509/GeneralSubtrees;-><init>()V

    #@b3
    .line 420
    :cond_7
    move-object/from16 v0, p0

    #@b5
    move-object/from16 v1, v16

    #@b7
    invoke-direct {v0, v1}, Lsun/security/x509/GeneralSubtrees;->createWidestSubtree(Lsun/security/x509/GeneralNameInterface;)Lsun/security/x509/GeneralSubtree;

    #@ba
    move-result-object v17

    #@bb
    .line 421
    .local v17, "widestSubtree":Lsun/security/x509/GeneralSubtree;
    move-object/from16 v0, v17

    #@bd
    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->contains(Lsun/security/x509/GeneralSubtree;)Z

    #@c0
    move-result v18

    #@c1
    if-nez v18, :cond_8

    #@c3
    .line 422
    move-object/from16 v0, v17

    #@c5
    invoke-virtual {v8, v0}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    #@c8
    .line 427
    .end local v17    # "widestSubtree":Lsun/security/x509/GeneralSubtree;
    :cond_8
    move-object/from16 v0, p0

    #@ca
    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    #@cd
    .line 428
    add-int/lit8 v4, v4, -0x1

    #@cf
    .line 350
    .end local v5    # "intersection":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    #@d1
    goto/16 :goto_0

    #@d3
    .line 433
    .end local v6    # "j":I
    .end local v13    # "removeThisEntry":Z
    .end local v14    # "sameType":Z
    .end local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_a
    invoke-virtual {v9}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@d6
    move-result v18

    #@d7
    if-lez v18, :cond_b

    #@d9
    .line 434
    move-object/from16 v0, p0

    #@db
    invoke-virtual {v0, v9}, Lsun/security/x509/GeneralSubtrees;->union(Lsun/security/x509/GeneralSubtrees;)V

    #@de
    .line 439
    :cond_b
    const/4 v4, 0x0

    #@df
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@e2
    move-result v18

    #@e3
    move/from16 v0, v18

    #@e5
    if-ge v4, v0, :cond_e

    #@e7
    .line 440
    move-object/from16 v0, p1

    #@e9
    invoke-virtual {v0, v4}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@ec
    move-result-object v12

    #@ed
    .line 441
    .restart local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    invoke-static {v12}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(Lsun/security/x509/GeneralSubtree;)Lsun/security/x509/GeneralNameInterface;

    #@f0
    move-result-object v11

    #@f1
    .line 442
    .restart local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    #@f2
    .line 443
    .local v3, "diffType":Z
    const/4 v6, 0x0

    #@f3
    .restart local v6    # "j":I
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@f6
    move-result v18

    #@f7
    move/from16 v0, v18

    #@f9
    if-ge v6, v0, :cond_c

    #@fb
    .line 444
    move-object/from16 v0, p0

    #@fd
    invoke-direct {v0, v6}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@100
    move-result-object v16

    #@101
    .line 445
    .restart local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    #@103
    invoke-interface {v0, v11}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@106
    move-result v18

    #@107
    packed-switch v18, :pswitch_data_1

    #@10a
    .line 443
    :goto_8
    add-int/lit8 v6, v6, 0x1

    #@10c
    goto :goto_7

    #@10d
    .line 447
    :pswitch_3
    const/4 v3, 0x1

    #@10e
    .line 450
    goto :goto_8

    #@10f
    .line 455
    :pswitch_4
    const/4 v3, 0x0

    #@110
    .line 464
    .end local v16    # "thisEntry":Lsun/security/x509/GeneralNameInterface;
    :cond_c
    if-eqz v3, :cond_d

    #@112
    .line 465
    move-object/from16 v0, p0

    #@114
    invoke-virtual {v0, v12}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    #@117
    .line 439
    :cond_d
    add-int/lit8 v4, v4, 0x1

    #@119
    goto :goto_6

    #@11a
    .line 470
    .end local v3    # "diffType":Z
    .end local v6    # "j":I
    .end local v11    # "otherEntry":Lsun/security/x509/GeneralNameInterface;
    .end local v12    # "otherEntryGS":Lsun/security/x509/GeneralSubtree;
    :cond_e
    return-object v8

    #@11b
    .line 364
    nop

    #@11c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    #@128
    .line 445
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public reduce(Lsun/security/x509/GeneralSubtrees;)V
    .locals 6
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 497
    if-nez p1, :cond_0

    #@2
    .line 498
    return-void

    #@3
    .line 500
    :cond_0
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@7
    move-result v3

    #@8
    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@a
    .line 501
    invoke-direct {p1, v1}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@d
    move-result-object v0

    #@e
    .line 502
    .local v0, "excludedName":Lsun/security/x509/GeneralNameInterface;
    const/4 v2, 0x0

    #@f
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@12
    move-result v5

    #@13
    if-ge v2, v5, :cond_1

    #@15
    .line 503
    invoke-direct {p0, v2}, Lsun/security/x509/GeneralSubtrees;->getGeneralNameInterface(I)Lsun/security/x509/GeneralNameInterface;

    #@18
    move-result-object v4

    #@19
    .line 504
    .local v4, "permitted":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    #@1c
    move-result v5

    #@1d
    packed-switch v5, :pswitch_data_0

    #@20
    .line 502
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 508
    :pswitch_1
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    #@26
    .line 509
    add-int/lit8 v2, v2, -0x1

    #@28
    .line 510
    goto :goto_2

    #@29
    .line 513
    :pswitch_2
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->remove(I)V

    #@2c
    .line 514
    add-int/lit8 v2, v2, -0x1

    #@2e
    .line 515
    goto :goto_2

    #@2f
    .line 500
    .end local v4    # "permitted":Lsun/security/x509/GeneralNameInterface;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 496
    .end local v0    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v2    # "j":I
    :cond_2
    return-void

    #@33
    .line 504
    nop

    #@34
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    .line 90
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "   GeneralSubtrees:\n"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "\n"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    .line 129
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method

.method public trees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lsun/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public union(Lsun/security/x509/GeneralSubtrees;)V
    .locals 3
    .param p1, "other"    # Lsun/security/x509/GeneralSubtrees;

    #@0
    .prologue
    .line 479
    if-eqz p1, :cond_1

    #@2
    .line 480
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->size()I

    #@6
    move-result v1

    #@7
    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@9
    .line 481
    invoke-virtual {p1, v0}, Lsun/security/x509/GeneralSubtrees;->get(I)Lsun/security/x509/GeneralSubtree;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0, v2}, Lsun/security/x509/GeneralSubtrees;->add(Lsun/security/x509/GeneralSubtree;)V

    #@10
    .line 480
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 484
    :cond_0
    invoke-direct {p0}, Lsun/security/x509/GeneralSubtrees;->minimize()V

    #@16
    .line 478
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method
