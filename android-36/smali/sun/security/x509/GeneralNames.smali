.class public Lsun/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# instance fields
.field private final blacklist names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    .line 78
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/DerValue;)V
    .registers 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lsun/security/x509/GeneralNames;-><init>()V

    .line 57
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_31

    .line 60
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_29

    .line 65
    :goto_11
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_28

    .line 66
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 68
    .local v0, "encName":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralName;

    invoke-direct {v1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    .line 69
    .local v1, "name":Lsun/security/x509/GeneralName;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    .line 70
    .end local v0    # "encName":Lsun/security/util/DerValue;
    .end local v1    # "name":Lsun/security/x509/GeneralName;
    goto :goto_11

    .line 71
    :cond_28
    return-void

    .line 61
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data available in passed DER encoded value."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_31
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding for GeneralNames."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;
    .registers 3
    .param p1, "name"    # Lsun/security/x509/GeneralName;

    .line 81
    if-eqz p1, :cond_8

    .line 84
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-object p0

    .line 82
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    return-void

    .line 119
    :cond_7
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 120
    .local v0, "temp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralName;

    .line 121
    .local v2, "gn":Lsun/security/x509/GeneralName;
    invoke-virtual {v2, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 122
    .end local v2    # "gn":Lsun/security/x509/GeneralName;
    goto :goto_12

    .line 123
    :cond_22
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 124
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 132
    if-ne p0, p1, :cond_4

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_4
    instance-of v0, p1, Lsun/security/x509/GeneralNames;

    if-nez v0, :cond_a

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_a
    move-object v0, p1

    check-cast v0, Lsun/security/x509/GeneralNames;

    .line 139
    .local v0, "other":Lsun/security/x509/GeneralNames;
    iget-object v1, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    iget-object v2, v0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist get(I)Lsun/security/x509/GeneralName;
    .registers 3
    .param p1, "index"    # I

    .line 89
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 143
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isEmpty()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist names()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 97
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
