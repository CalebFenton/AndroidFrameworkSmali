.class public Lsun/security/x509/GeneralNames;
.super Ljava/lang/Object;
.source "GeneralNames.java"


# instance fields
.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@a
    .line 76
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Lsun/security/x509/GeneralNames;-><init>()V

    #@3
    .line 57
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@5
    const/16 v3, 0x30

    #@7
    if-eq v2, v3, :cond_0

    #@9
    .line 58
    new-instance v2, Ljava/io/IOException;

    #@b
    const-string/jumbo v3, "Invalid encoding for GeneralNames."

    #@e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 60
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@14
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_1

    #@1a
    .line 61
    new-instance v2, Ljava/io/IOException;

    #@1c
    const-string/jumbo v3, "No data available in passed DER encoded value."

    #@1f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 65
    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@25
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 66
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2d
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@30
    move-result-object v0

    #@31
    .line 68
    .local v0, "encName":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralName;

    #@33
    invoke-direct {v1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    #@36
    .line 69
    .local v1, "name":Lsun/security/x509/GeneralName;
    invoke-virtual {p0, v1}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    #@39
    goto :goto_0

    #@3a
    .line 55
    .end local v0    # "encName":Lsun/security/util/DerValue;
    .end local v1    # "name":Lsun/security/x509/GeneralName;
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;
    .locals 1
    .param p1, "name"    # Lsun/security/x509/GeneralName;

    #@0
    .prologue
    .line 81
    if-nez p1, :cond_0

    #@2
    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 84
    :cond_0
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 85
    return-object p0
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 116
    return-void

    #@7
    .line 119
    :cond_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@9
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@c
    .line 120
    .local v2, "temp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "gn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lsun/security/x509/GeneralName;

    #@1e
    .line 121
    .local v0, "gn":Lsun/security/x509/GeneralName;
    invoke-virtual {v0, v2}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    #@21
    goto :goto_0

    #@22
    .line 123
    .end local v0    # "gn":Lsun/security/x509/GeneralName;
    :cond_1
    const/16 v3, 0x30

    #@24
    invoke-virtual {p1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@27
    .line 114
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 132
    if-ne p0, p1, :cond_0

    #@2
    .line 133
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 135
    :cond_0
    instance-of v1, p1, Lsun/security/x509/GeneralNames;

    #@6
    if-nez v1, :cond_1

    #@8
    .line 136
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 138
    check-cast v0, Lsun/security/x509/GeneralNames;

    #@d
    .line 139
    .local v0, "other":Lsun/security/x509/GeneralNames;
    iget-object v1, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@f
    iget-object v2, v0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@11
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    return v1
.end method

.method public get(I)Lsun/security/x509/GeneralName;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/x509/GeneralName;

    #@8
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public names()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lsun/security/x509/GeneralNames;->names:Ljava/util/List;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
