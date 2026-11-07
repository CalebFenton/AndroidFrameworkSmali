.class public Lsun/security/x509/OIDName;
.super Ljava/lang/Object;
.source "OIDName.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field private blacklist oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_3
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    .line 75
    nop

    .line 76
    return-void

    .line 73
    :catch_c
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create OIDName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/ObjectIdentifier;)V
    .registers 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    .line 62
    return-void
.end method


# virtual methods
.method public blacklist constrains(Lsun/security/x509/GeneralNameInterface;)I
    .registers 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 152
    if-nez p1, :cond_4

    .line 153
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto :goto_18

    .line 154
    .end local v0    # "constraintType":I
    :cond_4
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    .line 155
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_18

    .line 156
    .end local v0    # "constraintType":I
    :cond_e
    move-object v0, p1

    check-cast v0, Lsun/security/x509/OIDName;

    invoke-virtual {p0, v0}, Lsun/security/x509/OIDName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 157
    const/4 v0, 0x0

    .line 161
    .restart local v0    # "constraintType":I
    :goto_18
    return v0

    .line 160
    .end local v0    # "constraintType":I
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing and widening are not supported for OIDNames"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 93
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 115
    if-ne p0, p1, :cond_4

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_4
    instance-of v0, p1, Lsun/security/x509/OIDName;

    if-nez v0, :cond_a

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/OIDName;

    .line 123
    .local v0, "other":Lsun/security/x509/OIDName;
    iget-object v1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v2, v0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 106
    iget-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 82
    const/16 v0, 0x8

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 132
    iget-object v0, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "subtreeDepth() not supported for OIDName."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OIDName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/OIDName;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
