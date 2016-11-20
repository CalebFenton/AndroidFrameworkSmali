.class public Lsun/security/x509/OIDName;
.super Ljava/lang/Object;
.source "OIDName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    #@5
    invoke-direct {v1, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 70
    return-void

    #@b
    .line 73
    :catch_0
    move-exception v0

    #@c
    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Unable to create OIDName: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 51
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 0
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    iput-object p1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@5
    .line 60
    return-void
.end method


# virtual methods
.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 3
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    if-nez p1, :cond_0

    #@2
    .line 153
    const/4 v0, -0x1

    #@3
    .line 161
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@4
    .line 154
    .end local v0    # "constraintType":I
    .restart local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x8

    #@a
    if-eq v1, v2, :cond_1

    #@c
    .line 155
    const/4 v0, -0x1

    #@d
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@e
    .line 156
    .end local v0    # "constraintType":I
    :cond_1
    check-cast p1, Lsun/security/x509/OIDName;

    #@10
    .end local p1    # "inputName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p0, p1}, Lsun/security/x509/OIDName;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 157
    const/4 v0, 0x0

    #@17
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@18
    .line 160
    .end local v0    # "constraintType":I
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@1a
    const-string/jumbo v2, "Narrowing and widening are not supported for OIDNames"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1
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
    .line 92
    iget-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@5
    .line 91
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 115
    if-ne p0, p1, :cond_0

    #@2
    .line 116
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 118
    :cond_0
    instance-of v1, p1, Lsun/security/x509/OIDName;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 119
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 121
    nop

    #@c
    nop

    #@d
    .line 123
    .local v0, "other":Lsun/security/x509/OIDName;
    iget-object v1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@f
    iget-object v2, v0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@11
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 82
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@2
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public subtreeDepth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "subtreeDepth() not supported for OIDName."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "OIDName: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    #@e
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
