.class public Lsun/security/x509/X400Address;
.super Ljava/lang/Object;
.source "X400Address.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field blacklist nameValue:[B


# direct methods
.method public constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 356
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 357
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "value"    # [B

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 346
    iput-object p1, p0, Lsun/security/x509/X400Address;->nameValue:[B

    .line 347
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

    .line 401
    if-nez p1, :cond_4

    .line 402
    const/4 v0, -0x1

    .local v0, "constraintType":I
    goto :goto_c

    .line 403
    .end local v0    # "constraintType":I
    :cond_4
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 404
    const/4 v0, -0x1

    .line 408
    .restart local v0    # "constraintType":I
    :goto_c
    return v0

    .line 407
    .end local v0    # "constraintType":I
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Narrowing, widening, and match are not supported for X400Address."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Lsun/security/util/DerOutputStream;)V
    .registers 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/X400Address;->nameValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 374
    .local v0, "derValue":Lsun/security/util/DerValue;
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 375
    return-void
.end method

.method public blacklist getType()I
    .registers 2

    .line 363
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist subtreeDepth()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "subtreeDepth not supported for X400Address"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 381
    const-string v0, "X400Address: <DER-encoded value>"

    return-object v0
.end method
