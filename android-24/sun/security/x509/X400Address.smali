.class public Lsun/security/x509/X400Address;
.super Ljava/lang/Object;
.source "X400Address.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;


# instance fields
.field nameValue:[B


# direct methods
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
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 338
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    #@6
    .line 356
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    #@c
    .line 355
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    #@0
    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 338
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/x509/X400Address;->nameValue:[B

    #@6
    .line 346
    iput-object p1, p0, Lsun/security/x509/X400Address;->nameValue:[B

    #@8
    .line 345
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
    .line 401
    if-nez p1, :cond_0

    #@2
    .line 402
    const/4 v0, -0x1

    #@3
    .line 408
    .local v0, "constraintType":I
    :goto_0
    return v0

    #@4
    .line 403
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x3

    #@9
    if-eq v1, v2, :cond_1

    #@b
    .line 404
    const/4 v0, -0x1

    #@c
    .restart local v0    # "constraintType":I
    goto :goto_0

    #@d
    .line 407
    .end local v0    # "constraintType":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@f
    const-string/jumbo v2, "Narrowing, widening, and match are not supported for X400Address."

    #@12
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
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
    .line 373
    new-instance v0, Lsun/security/util/DerValue;

    #@2
    iget-object v1, p0, Lsun/security/x509/X400Address;->nameValue:[B

    #@4
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@7
    .line 374
    .local v0, "derValue":Lsun/security/util/DerValue;
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    #@a
    .line 372
    return-void
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 363
    const/4 v0, 0x3

    #@1
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
    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "subtreeDepth not supported for X400Address"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 381
    const-string/jumbo v0, "X400Address: <DER-encoded value>"

    #@3
    return-object v0
.end method
