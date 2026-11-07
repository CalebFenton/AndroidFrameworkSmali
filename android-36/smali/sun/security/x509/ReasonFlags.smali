.class public Lsun/security/x509/ReasonFlags;
.super Ljava/lang/Object;
.source "ReasonFlags.java"


# static fields
.field public static final blacklist AA_COMPROMISE:Ljava/lang/String; = "aa_compromise"

.field public static final blacklist AFFILIATION_CHANGED:Ljava/lang/String; = "affiliation_changed"

.field public static final blacklist CA_COMPROMISE:Ljava/lang/String; = "ca_compromise"

.field public static final blacklist CERTIFICATE_HOLD:Ljava/lang/String; = "certificate_hold"

.field public static final blacklist CESSATION_OF_OPERATION:Ljava/lang/String; = "cessation_of_operation"

.field public static final blacklist KEY_COMPROMISE:Ljava/lang/String; = "key_compromise"

.field private static final blacklist NAMES:[Ljava/lang/String;

.field public static final blacklist PRIVILEGE_WITHDRAWN:Ljava/lang/String; = "privilege_withdrawn"

.field public static final blacklist SUPERSEDED:Ljava/lang/String; = "superseded"

.field public static final blacklist UNUSED:Ljava/lang/String; = "unused"


# instance fields
.field private blacklist bitString:[Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unused"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "key_compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ca_compromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliation_changed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessation_of_operation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificate_hold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "privilege_withdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "aa_compromise"

    aput-object v2, v0, v1

    sput-object v0, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/BitArray;)V
    .registers 3
    .param p1, "reasons"    # Lsun/security/util/BitArray;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 144
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 4
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 154
    .local v0, "derVal":Lsun/security/util/DerValue;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 155
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/util/DerValue;->getUnalignedBitString(Z)Lsun/security/util/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 165
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "reasons"    # [B

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 126
    return-void
.end method

.method public constructor blacklist <init>([Z)V
    .registers 2
    .param p1, "reasons"    # [Z

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 135
    return-void
.end method

.method private blacklist isSet(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 102
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static blacklist name2Index(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 86
    sget-object v1, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 87
    return v0

    .line 85
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Name not recognized by ReasonFlags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist set(IZ)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .line 111
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_14

    .line 112
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Z

    .line 113
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    .line 116
    .end local v0    # "tmp":[Z
    :cond_14
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    aput-boolean p2, v0, p1

    .line 117
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/ReasonFlags;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Lsun/security/util/BitArray;

    iget-object v1, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    invoke-direct {v0, v1}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 245
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 253
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 254
    sget-object v2, Lsun/security/x509/ReasonFlags;->NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 256
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getFlags()[Z
    .registers 2

    .line 171
    iget-object v0, p0, Lsun/security/x509/ReasonFlags;->bitString:[Z

    return-object v0
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

    .line 178
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 181
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 182
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/ReasonFlags;->name2Index(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/ReasonFlags;->set(IZ)V

    .line 183
    return-void

    .line 179
    .end local v0    # "val":Z
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reason Flags [\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 206
    const-string v1, "  Unused\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :cond_13
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 209
    const-string v1, "  Key Compromise\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1f
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 212
    const-string v1, "  CA Compromise\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2b
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 215
    const-string v1, "  Affiliation_Changed\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_37
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 218
    const-string v1, "  Superseded\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_43
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 221
    const-string v1, "  Cessation Of Operation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_4f
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 224
    const-string v1, "  Certificate Hold\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_5b
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 227
    const-string v1, "  Privilege Withdrawn\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_67
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lsun/security/x509/ReasonFlags;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 230
    const-string v1, "  AA Compromise\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_74
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
