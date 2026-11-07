.class public Lgov/nist/javax/sip/header/ims/PUserDatabase;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "PUserDatabase.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private greylist databaseName:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 54
    const-string v0, "P-User-Database"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "databaseName"    # Ljava/lang/String;

    .line 46
    const-string v0, "P-User-Database"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-super {p0}, Lgov/nist/javax/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    .line 97
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    return-object v0
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 4

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "retval":Ljava/lang/StringBuffer;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 79
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_17
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_3b
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 90
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/ParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist getDatabaseName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setDatabaseName(Ljava/lang/String;)V
    .registers 4
    .param p1, "databaseName"    # Ljava/lang/String;

    .line 64
    if-eqz p1, :cond_29

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 67
    const-string v0, "aaa://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 68
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    goto :goto_28

    .line 70
    :cond_26
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PUserDatabase;->databaseName:Ljava/lang/String;

    .line 72
    :goto_28
    return-void

    .line 65
    :cond_29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
