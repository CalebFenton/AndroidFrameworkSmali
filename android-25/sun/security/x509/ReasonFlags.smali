.class public Lsun/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# static fields
.field public static final AA_COMPROMISE:Ljava/lang/String; = "aa_compromise"

.field public static final AFFILIATION_CHANGED:Ljava/lang/String; = "affiliation_changed"

.field public static final CA_COMPROMISE:Ljava/lang/String; = "ca_compromise"

.field public static final CERTIFICATE_HOLD:Ljava/lang/String; = "certificate_hold"

.field public static final CESSATION_OF_OPERATION:Ljava/lang/String; = "cessation_of_operation"

.field public static final KEY_COMPROMISE:Ljava/lang/String; = "key_compromise"

.field private static final NAMES:[Ljava/lang/String;

.field public static final PRIVILEGE_WITHDRAWN:Ljava/lang/String; = "privilege_withdrawn"

.field public static final SUPERSEDED:Ljava/lang/String; = "superseded"

.field public static final UNUSED:Ljava/lang/String; = "unused"


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 72
    const/16 v0, 0x9

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 73
    const-string/jumbo v1, "unused"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    .line 74
    const-string/jumbo v1, "key_compromise"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    .line 75
    const-string/jumbo v1, "ca_compromise"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 76
    const-string/jumbo v1, "affiliation_changed"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 77
    const-string/jumbo v1, "superseded"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    .line 78
    const-string/jumbo v1, "cessation_of_operation"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    .line 79
    const-string/jumbo v1, "certificate_hold"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 80
    const-string/jumbo v1, "privilege_withdrawn"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 81
    const-string/jumbo v1, "aa_compromise"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 72
    sput-object v0, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    #@3d
    .line 56
    return-void
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "reasons"    # Lsun/security/util/BitArray;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@9
    .line 141
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@6
    move-result-object v0

    #@7
    .line 153
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    #@8
    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@12
    .line 151
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    const/4 v0, 0x1

    #@4
    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@e
    .line 162
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "reasons"    # [B

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    new-instance v0, Lsun/security/util/BitArray;

    #@5
    array-length v1, p1

    #@6
    mul-int/lit8 v1, v1, 0x8

    #@8
    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@b
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@11
    .line 123
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 0
    .param p1, "reasons"    # [Z

    #@0
    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    iput-object p1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@5
    .line 132
    return-void
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method private static name2Index(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 86
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 87
    return v0

    #@11
    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 90
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@16
    const-string/jumbo v2, "Name not recognized by ReasonFlags"

    #@19
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v1
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 110
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@3
    array-length v1, v1

    #@4
    if-lt p1, v1, :cond_0

    #@6
    .line 111
    add-int/lit8 v1, p1, 0x1

    #@8
    new-array v0, v1, [Z

    #@a
    .line 112
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@c
    iget-object v2, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@e
    array-length v2, v2

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@12
    .line 113
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@14
    .line 115
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@16
    aput-boolean p2, v1, p1

    #@18
    .line 108
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 195
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2
    invoke-virtual {p0, p1, v0}, Lsun/security/x509/ReasonFlags;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 194
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 228
    new-instance v0, Lsun/security/util/BitArray;

    #@2
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@4
    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>([Z)V

    #@7
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    #@a
    .line 227
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 3
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
    .line 236
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 237
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    #@8
    array-length v2, v2

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 238
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    #@d
    aget-object v2, v2, v1

    #@f
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@12
    .line 237
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method public getFlags()[Z
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    #@2
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
    .line 177
    instance-of v1, p2, Ljava/lang/Boolean;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 178
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Attribute must be of type Boolean."

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 180
    :cond_0
    nop

    #@e
    nop

    #@f
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v0

    #@13
    .line 181
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v1, v0}, Lsun/security/x509/ReasonFlags;->set(IZ)V

    #@1a
    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 202
    const-string/jumbo v1, "Reason Flags [\n"

    #@3
    .line 205
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    #@4
    :try_start_0
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    const-string/jumbo v3, "  Unused\n"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 206
    :cond_0
    const/4 v2, 0x1

    #@1f
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, "  Key Compromise\n"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 207
    :cond_1
    const/4 v2, 0x2

    #@3a
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@3d
    move-result v2

    #@3e
    if-eqz v2, :cond_2

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, "  CA Compromise\n"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 208
    :cond_2
    const/4 v2, 0x3

    #@55
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_3

    #@5b
    new-instance v2, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    const-string/jumbo v3, "  Affiliation_Changed\n"

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    .line 209
    :cond_3
    const/4 v2, 0x4

    #@70
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@73
    move-result v2

    #@74
    if-eqz v2, :cond_4

    #@76
    new-instance v2, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    const-string/jumbo v3, "  Superseded\n"

    #@82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v1

    #@8a
    .line 210
    :cond_4
    const/4 v2, 0x5

    #@8b
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_5

    #@91
    new-instance v2, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v2

    #@9a
    const-string/jumbo v3, "  Cessation Of Operation\n"

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v1

    #@a5
    .line 211
    :cond_5
    const/4 v2, 0x6

    #@a6
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@a9
    move-result v2

    #@aa
    if-eqz v2, :cond_6

    #@ac
    new-instance v2, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    const-string/jumbo v3, "  Certificate Hold\n"

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    .line 212
    :cond_6
    const/4 v2, 0x7

    #@c1
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_7

    #@c7
    new-instance v2, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v2

    #@d0
    const-string/jumbo v3, "  Privilege Withdrawn\n"

    #@d3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v1

    #@db
    .line 213
    :cond_7
    const/16 v2, 0x8

    #@dd
    invoke-direct {p0, v2}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    #@e0
    move-result v2

    #@e1
    if-eqz v2, :cond_8

    #@e3
    new-instance v2, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v2

    #@ec
    const-string/jumbo v3, "  AA Compromise\n"

    #@ef
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v2

    #@f3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@f6
    move-result-object v1

    #@f7
    .line 216
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    const-string/jumbo v3, "]\n"

    #@103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v2

    #@107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v1

    #@10b
    .line 218
    return-object v1

    #@10c
    .line 214
    :catch_0
    move-exception v0

    #@10d
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method
