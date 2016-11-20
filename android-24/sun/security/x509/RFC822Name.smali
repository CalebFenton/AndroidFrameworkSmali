.class public Lsun/security/x509/RFC822Name;
.super Ljava/lang/Object;
.source "RFC822Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0, p1}, Lsun/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    #@6
    .line 66
    iput-object p1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@8
    .line 64
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@9
    .line 55
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@b
    invoke-virtual {p0, v0}, Lsun/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    #@e
    .line 53
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 9
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/16 v7, 0x40

    #@3
    .line 185
    if-nez p1, :cond_0

    #@5
    .line 186
    const/4 v0, -0x1

    #@6
    .line 228
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@7
    .line 187
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@a
    move-result v5

    #@b
    const/4 v6, 0x1

    #@c
    if-eq v5, v6, :cond_1

    #@e
    .line 188
    const/4 v0, -0x1

    #@f
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@10
    .line 192
    .end local v0    # "constraintType":I
    :cond_1
    check-cast p1, Lsun/security/x509/RFC822Name;

    #@12
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    #@15
    move-result-object v5

    #@16
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 193
    .local v1, "inName":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@1e
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    .line 194
    .local v4, "thisName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_2

    #@2a
    .line 195
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@2c
    .line 196
    .end local v0    # "constraintType":I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2f
    move-result v5

    #@30
    if-eqz v5, :cond_6

    #@32
    .line 198
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    #@35
    move-result v5

    #@36
    if-eq v5, v8, :cond_3

    #@38
    .line 199
    const/4 v0, 0x3

    #@39
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@3a
    .line 200
    .end local v0    # "constraintType":I
    :cond_3
    const-string/jumbo v5, "."

    #@3d
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_4

    #@43
    .line 201
    const/4 v0, 0x2

    #@44
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@45
    .line 203
    .end local v0    # "constraintType":I
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@48
    move-result v2

    #@49
    .line 204
    .local v2, "inNdx":I
    add-int/lit8 v5, v2, -0x1

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v5

    #@4f
    if-ne v5, v7, :cond_5

    #@51
    .line 205
    const/4 v0, 0x2

    #@52
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@53
    .line 207
    .end local v0    # "constraintType":I
    :cond_5
    const/4 v0, 0x3

    #@54
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@55
    .line 210
    .end local v0    # "constraintType":I
    .end local v2    # "inNdx":I
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_a

    #@5b
    .line 212
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    #@5e
    move-result v5

    #@5f
    if-eq v5, v8, :cond_7

    #@61
    .line 213
    const/4 v0, 0x3

    #@62
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@63
    .line 214
    .end local v0    # "constraintType":I
    :cond_7
    const-string/jumbo v5, "."

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@69
    move-result v5

    #@6a
    if-eqz v5, :cond_8

    #@6c
    .line 215
    const/4 v0, 0x1

    #@6d
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@6e
    .line 217
    .end local v0    # "constraintType":I
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@71
    move-result v3

    #@72
    .line 218
    .local v3, "ndx":I
    add-int/lit8 v5, v3, -0x1

    #@74
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    #@77
    move-result v5

    #@78
    if-ne v5, v7, :cond_9

    #@7a
    .line 219
    const/4 v0, 0x1

    #@7b
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@7c
    .line 221
    .end local v0    # "constraintType":I
    :cond_9
    const/4 v0, 0x3

    #@7d
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@7e
    .line 225
    .end local v0    # "constraintType":I
    .end local v3    # "ndx":I
    :cond_a
    const/4 v0, 0x3

    #@7f
    .restart local v0    # "constraintType":I
    goto :goto_0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    #@5
    .line 119
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 137
    if-ne p0, p1, :cond_0

    #@2
    .line 138
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 140
    :cond_0
    instance-of v1, p1, Lsun/security/x509/RFC822Name;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 141
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 143
    nop

    #@c
    nop

    #@d
    .line 147
    .local v0, "other":Lsun/security/x509/RFC822Name;
    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@f
    iget-object v2, v0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public parseName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 82
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 83
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@a
    const-string/jumbo v2, "RFC822Name may not be null or empty"

    #@d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 86
    :cond_1
    const/16 v1, 0x40

    #@13
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@16
    move-result v1

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 87
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_2

    #@23
    .line 88
    new-instance v1, Ljava/io/IOException;

    #@25
    const-string/jumbo v2, "RFC822Name may not end with @"

    #@28
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 92
    :cond_2
    const-string/jumbo v1, "."

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@38
    move-result v1

    #@39
    const/4 v2, 0x1

    #@3a
    if-ne v1, v2, :cond_3

    #@3c
    .line 94
    new-instance v1, Ljava/io/IOException;

    #@3e
    const-string/jumbo v2, "RFC822Name domain may not be just ."

    #@41
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 81
    :cond_3
    return-void
.end method

.method public subtreeDepth()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x2e

    #@2
    const/4 v4, 0x0

    #@3
    .line 239
    iget-object v2, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@5
    .line 240
    .local v2, "subtree":Ljava/lang/String;
    const/4 v1, 0x1

    #@6
    .line 243
    .local v1, "i":I
    const/16 v3, 0x40

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@b
    move-result v0

    #@c
    .line 244
    .local v0, "atNdx":I
    if-ltz v0, :cond_0

    #@e
    .line 245
    const/4 v1, 0x2

    #@f
    .line 246
    add-int/lit8 v3, v0, 0x1

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 250
    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@18
    move-result v3

    #@19
    if-ltz v3, :cond_1

    #@1b
    .line 251
    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    .line 250
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 254
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "RFC822Name: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
