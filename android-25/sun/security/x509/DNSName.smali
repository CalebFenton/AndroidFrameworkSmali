.class public Lsun/security/x509/DNSName;
.super Ljava/lang/Object;
.source "DNSName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# static fields
.field private static final alpha:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

.field private static final alphaDigitsAndHyphen:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-"

.field private static final digitsAndHyphen:Ljava/lang/String; = "0123456789-"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    const/4 v6, 0x0

    #@3
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 75
    if-eqz p1, :cond_0

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_1

    #@e
    .line 76
    :cond_0
    new-instance v4, Ljava/io/IOException;

    #@10
    const-string/jumbo v5, "DNS name must not be null"

    #@13
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@16
    throw v4

    #@17
    .line 77
    :cond_1
    const/16 v4, 0x20

    #@19
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v4

    #@1d
    const/4 v5, -0x1

    #@1e
    if-eq v4, v5, :cond_2

    #@20
    .line 78
    new-instance v4, Ljava/io/IOException;

    #@22
    const-string/jumbo v5, "DNS names or NameConstraints with blank components are not permitted"

    #@25
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 79
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v4

    #@2d
    if-eq v4, v7, :cond_3

    #@2f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@32
    move-result v4

    #@33
    add-int/lit8 v4, v4, -0x1

    #@35
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v4

    #@39
    if-ne v4, v7, :cond_4

    #@3b
    .line 80
    :cond_3
    new-instance v4, Ljava/io/IOException;

    #@3d
    const-string/jumbo v5, "DNS names or NameConstraints may not begin or end with a ."

    #@40
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@43
    throw v4

    #@44
    .line 84
    :cond_4
    const/4 v2, 0x0

    #@45
    .local v2, "startIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@48
    move-result v4

    #@49
    if-ge v2, v4, :cond_a

    #@4b
    .line 85
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    #@4e
    move-result v0

    #@4f
    .line 86
    .local v0, "endIndex":I
    if-gez v0, :cond_5

    #@51
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@54
    move-result v0

    #@55
    .line 89
    :cond_5
    sub-int v4, v0, v2

    #@57
    const/4 v5, 0x1

    #@58
    if-ge v4, v5, :cond_6

    #@5a
    .line 90
    new-instance v4, Ljava/io/IOException;

    #@5c
    const-string/jumbo v5, "DNSName SubjectAltNames with empty components are not permitted"

    #@5f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@62
    throw v4

    #@63
    .line 93
    :cond_6
    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    #@66
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@69
    move-result v5

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    #@6d
    move-result v4

    #@6e
    if-gez v4, :cond_7

    #@70
    .line 94
    new-instance v4, Ljava/io/IOException;

    #@72
    const-string/jumbo v5, "DNSName components must begin with a letter"

    #@75
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v4

    #@79
    .line 96
    :cond_7
    add-int/lit8 v1, v2, 0x1

    #@7b
    .local v1, "nonStartIndex":I
    :goto_1
    if-ge v1, v0, :cond_9

    #@7d
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@80
    move-result v3

    #@81
    .line 98
    .local v3, "x":C
    const-string/jumbo v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-"

    #@84
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    #@87
    move-result v4

    #@88
    if-gez v4, :cond_8

    #@8a
    .line 99
    new-instance v4, Ljava/io/IOException;

    #@8c
    const-string/jumbo v5, "DNSName components must consist of letters, digits, and hyphens"

    #@8f
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@92
    throw v4

    #@93
    .line 96
    :cond_8
    add-int/lit8 v1, v1, 0x1

    #@95
    goto :goto_1

    #@96
    .line 84
    .end local v3    # "x":C
    :cond_9
    add-int/lit8 v2, v0, 0x1

    #@98
    goto :goto_0

    #@99
    .line 102
    .end local v0    # "endIndex":I
    .end local v1    # "nonStartIndex":I
    :cond_a
    iput-object p1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@9b
    .line 74
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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@9
    .line 64
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 8
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x2e

    #@2
    .line 197
    if-nez p1, :cond_0

    #@4
    .line 198
    const/4 v0, -0x1

    #@5
    .line 223
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@6
    .line 199
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@9
    move-result v5

    #@a
    const/4 v6, 0x2

    #@b
    if-eq v5, v6, :cond_1

    #@d
    .line 200
    const/4 v0, -0x1

    #@e
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@f
    .line 203
    .end local v0    # "constraintType":I
    :cond_1
    check-cast p1, Lsun/security/x509/DNSName;

    #@11
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 204
    .local v1, "inName":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@1d
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@1f
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 205
    .local v4, "thisName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 206
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@2b
    .line 207
    .end local v0    # "constraintType":I
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_4

    #@31
    .line 208
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@34
    move-result v2

    #@35
    .line 209
    .local v2, "inNdx":I
    add-int/lit8 v5, v2, -0x1

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v5

    #@3b
    if-ne v5, v7, :cond_3

    #@3d
    .line 210
    const/4 v0, 0x2

    #@3e
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@3f
    .line 212
    .end local v0    # "constraintType":I
    :cond_3
    const/4 v0, 0x3

    #@40
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@41
    .line 213
    .end local v0    # "constraintType":I
    .end local v2    # "inNdx":I
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_6

    #@47
    .line 214
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@4a
    move-result v3

    #@4b
    .line 215
    .local v3, "ndx":I
    add-int/lit8 v5, v3, -0x1

    #@4d
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v5

    #@51
    if-ne v5, v7, :cond_5

    #@53
    .line 216
    const/4 v0, 0x1

    #@54
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@55
    .line 218
    .end local v0    # "constraintType":I
    :cond_5
    const/4 v0, 0x3

    #@56
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@57
    .line 220
    .end local v0    # "constraintType":I
    .end local v3    # "ndx":I
    :cond_6
    const/4 v0, 0x3

    #@58
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
    .line 126
    iget-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    #@5
    .line 125
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 143
    if-ne p0, p1, :cond_0

    #@2
    .line 144
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 146
    :cond_0
    instance-of v1, p1, Lsun/security/x509/DNSName;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 147
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 149
    check-cast v0, Lsun/security/x509/DNSName;

    #@d
    .line 153
    .local v0, "other":Lsun/security/x509/DNSName;
    iget-object v1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@f
    iget-object v2, v0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

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
    .line 116
    iget-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 109
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

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

.method public subtreeDepth()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x2e

    #@2
    const/4 v3, 0x0

    #@3
    .line 235
    iget-object v1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

    #@5
    .line 236
    .local v1, "subtree":Ljava/lang/String;
    const/4 v0, 0x1

    #@6
    .line 239
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v2

    #@a
    if-ltz v2, :cond_0

    #@c
    .line 240
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@f
    move-result v2

    #@10
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 239
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 243
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DNSName: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/DNSName;->name:Ljava/lang/String;

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
