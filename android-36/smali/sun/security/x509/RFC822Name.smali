.class public Lsun/security/x509/RFC822Name;
.super Ljava/lang/Object;
.source "RFC822Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lsun/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lsun/security/x509/RFC822Name;->parseName(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 8
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 185
    if-nez p1, :cond_5

    .line 186
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto/16 :goto_87

    .line 187
    .end local v0    # "constraintType":I
    :cond_5
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 188
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto/16 :goto_87

    .line 191
    .end local v0    # "constraintType":I
    :cond_f
    move-object v0, p1

    check-cast v0, Lsun/security/x509/RFC822Name;

    .line 192
    invoke-virtual {v0}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "inName":Ljava/lang/String;
    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "thisName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 195
    const/4 v2, 0x0

    move v0, v2

    .local v2, "constraintType":I
    goto/16 :goto_87

    .line 196
    .end local v2    # "constraintType":I
    :cond_2e
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "."

    const/4 v4, -0x1

    const/16 v5, 0x40

    if-eqz v2, :cond_5c

    .line 198
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_42

    .line 199
    const/4 v2, 0x3

    move v0, v2

    .restart local v2    # "constraintType":I
    goto :goto_87

    .line 200
    .end local v2    # "constraintType":I
    :cond_42
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 201
    const/4 v2, 0x2

    move v0, v2

    .restart local v2    # "constraintType":I
    goto :goto_87

    .line 203
    .end local v2    # "constraintType":I
    :cond_4b
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, "inNdx":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_59

    .line 205
    const/4 v3, 0x2

    .local v3, "constraintType":I
    goto :goto_5a

    .line 207
    .end local v3    # "constraintType":I
    :cond_59
    const/4 v3, 0x3

    .line 209
    .end local v2    # "inNdx":I
    .restart local v3    # "constraintType":I
    :goto_5a
    move v0, v3

    goto :goto_87

    .line 210
    .end local v3    # "constraintType":I
    :cond_5c
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 212
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_6b

    .line 213
    const/4 v2, 0x3

    move v0, v2

    .local v2, "constraintType":I
    goto :goto_87

    .line 214
    .end local v2    # "constraintType":I
    :cond_6b
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 215
    const/4 v2, 0x1

    move v0, v2

    .restart local v2    # "constraintType":I
    goto :goto_87

    .line 217
    .end local v2    # "constraintType":I
    :cond_74
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "ndx":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_82

    .line 219
    const/4 v3, 0x1

    .restart local v3    # "constraintType":I
    goto :goto_83

    .line 221
    .end local v3    # "constraintType":I
    :cond_82
    const/4 v3, 0x3

    .line 223
    .end local v2    # "ndx":I
    .restart local v3    # "constraintType":I
    :goto_83
    move v0, v3

    goto :goto_87

    .line 225
    .end local v3    # "constraintType":I
    :cond_85
    const/4 v2, 0x3

    move v0, v2

    .line 228
    .end local v1    # "thisName":Ljava/lang/String;
    .local v0, "constraintType":I
    :goto_87
    return v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    if-ne p0, p1, :cond_4

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_4
    instance-of v0, p1, Lsun/security/x509/RFC822Name;

    if-nez v0, :cond_a

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/RFC822Name;

    .line 147
    .local v0, "other":Lsun/security/x509/RFC822Name;
    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    iget-object v2, v0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 156
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist parseName(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 86
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    .line 92
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_29

    goto :goto_31

    .line 94
    :cond_29
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RFC822Name domain may not be just ."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_31
    :goto_31
    return-void

    .line 88
    :cond_32
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RFC822Name may not end with @"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "domain":Ljava/lang/String;
    :cond_3a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFC822Name may not be null or empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist subtreeDepth()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    .line 240
    .local v0, "subtree":Ljava/lang/String;
    const/4 v1, 0x1

    .line 243
    .local v1, "i":I
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 244
    .local v2, "atNdx":I
    if-ltz v2, :cond_13

    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_13
    :goto_13
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_27

    .line 251
    const/4 v4, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 254
    :cond_27
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RFC822Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/RFC822Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
