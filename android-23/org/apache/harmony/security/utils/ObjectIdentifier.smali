.class public final Lorg/apache/harmony/security/utils/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private group:Ljava/lang/Object;

.field private hash:I

.field private name:Ljava/lang/String;

.field private final oid:[I

.field private sOID:Ljava/lang/String;

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "oid"    # [I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    #@6
    .line 70
    invoke-static {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->validateOid([I)V

    #@9
    .line 72
    iput-object p1, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@b
    .line 68
    return-void
.end method

.method public constructor <init>([ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "oid"    # [I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "oidGroup"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;-><init>([I)V

    #@3
    .line 88
    if-nez p3, :cond_0

    #@5
    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "oidGroup == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 91
    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    #@10
    .line 93
    iput-object p2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    #@12
    .line 94
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toOIDString()Ljava/lang/String;

    #@15
    .line 85
    return-void
.end method

.method public static hashIntArray([I)I
    .locals 4
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 211
    const/4 v1, 0x0

    #@1
    .line 212
    .local v1, "intHash":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@3
    if-ge v0, v2, :cond_0

    #@5
    const/4 v2, 0x4

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 213
    aget v2, p0, v0

    #@a
    mul-int/lit8 v3, v0, 0x8

    #@c
    shl-int/2addr v2, v3

    #@d
    add-int/2addr v1, v2

    #@e
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 215
    :cond_0
    const v2, 0x7fffffff

    #@14
    and-int/2addr v2, v1

    #@15
    return v2
.end method

.method public static validateOid([I)V
    .locals 3
    .param p0, "oid"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    .line 190
    if-nez p0, :cond_0

    #@4
    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v1, "oid == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 194
    :cond_0
    array-length v0, p0

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "OID MUST have at least 2 subidentifiers"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 198
    :cond_1
    aget v0, p0, v2

    #@1b
    if-le v0, v1, :cond_2

    #@1d
    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "Valid values for first subidentifier are 0, 1 and 2"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 200
    :cond_2
    aget v0, p0, v2

    #@28
    if-eq v0, v1, :cond_3

    #@2a
    const/4 v0, 0x1

    #@2b
    aget v0, p0, v0

    #@2d
    const/16 v1, 0x27

    #@2f
    if-le v0, v1, :cond_3

    #@31
    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v1, "If the first subidentifier has 0 or 1 value the second subidentifier value MUST be less than 40"

    #@36
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 188
    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 131
    if-ne p0, p1, :cond_0

    #@2
    .line 132
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 134
    :cond_0
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    if-eq v0, v1, :cond_2

    #@10
    .line 135
    :cond_1
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 137
    :cond_2
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@14
    check-cast p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@16
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@18
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method public getGroup()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->group:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOid()[I
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 175
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 176
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@7
    invoke-static {v0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hashIntArray([I)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    #@d
    .line 178
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->hash:I

    #@f
    return v0
.end method

.method public toOIDString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "OID."

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    #@1e
    .line 149
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->sOID:Ljava/lang/String;

    #@20
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 158
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    #@2
    if-nez v2, :cond_1

    #@4
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@8
    array-length v2, v2

    #@9
    mul-int/lit8 v2, v2, 0x4

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 161
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@11
    array-length v2, v2

    #@12
    add-int/lit8 v2, v2, -0x1

    #@14
    if-ge v0, v2, :cond_0

    #@16
    .line 162
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@18
    aget v2, v2, v0

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 163
    const/16 v2, 0x2e

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 161
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 165
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@27
    iget-object v3, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->oid:[I

    #@29
    array-length v3, v3

    #@2a
    add-int/lit8 v3, v3, -0x1

    #@2c
    aget v2, v2, v3

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    #@37
    .line 168
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/utils/ObjectIdentifier;->soid:Ljava/lang/String;

    #@39
    return-object v2
.end method
