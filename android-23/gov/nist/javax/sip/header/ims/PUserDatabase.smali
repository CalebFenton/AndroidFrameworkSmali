.class public Lgov/nist/javax/sip/header/ims/PUserDatabase;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PUserDatabase.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private databaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "P-User-Database"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "P-User-Database"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 47
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    #@8
    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    #@6
    .line 97
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 77
    .local v0, "retval":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "<"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 78
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->getDatabaseName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 79
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->getDatabaseName()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 81
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->parameters:Lgov/nist/core/NameValueList;

    #@1a
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_1

    #@20
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, ";"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->parameters:Lgov/nist/core/NameValueList;

    #@2e
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 83
    :cond_1
    const-string/jumbo v1, ">"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setDatabaseName(Ljava/lang/String;)V
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v0, " "

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v1, "Database name is null"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 67
    :cond_1
    const-string/jumbo v0, "aaa://"

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@22
    const-string/jumbo v1, "aaa://"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    #@33
    .line 63
    :goto_0
    return-void

    #@34
    .line 70
    :cond_2
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    #@36
    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
