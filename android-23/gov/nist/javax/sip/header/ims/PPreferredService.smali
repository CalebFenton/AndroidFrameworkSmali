.class public Lgov/nist/javax/sip/header/ims/PPreferredService;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "PPreferredService.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
.implements Lgov/nist/javax/sip/header/ims/SIPHeaderNamesIms;
.implements Ljavax/sip/header/ExtensionHeader;


# instance fields
.field private subAppIds:Ljava/lang/String;

.field private subServiceIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "P-Preferred-Service"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "P-Preferred-Service"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 40
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 111
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ims/PPreferredService;

    #@6
    .line 112
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PPreferredService;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 53
    .local v0, "retval":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "urn:urn-7:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 55
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 57
    const-string/jumbo v1, "3gpp-service"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "."

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    .line 59
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->getSubserviceIdentifiers()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 69
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    return-object v1

    #@28
    .line 63
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 65
    const-string/jumbo v1, "3gpp-application"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    move-result-object v1

    #@33
    const-string/jumbo v2, "."

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    .line 66
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ims/PPreferredService;->getApplicationIdentifiers()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 105
    instance-of v0, p1, Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

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

.method public getApplicationIdentifiers()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    const/16 v1, 0x2e

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 82
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    #@15
    return-object v0
.end method

.method public getSubserviceIdentifiers()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    const/16 v1, 0x2e

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    #@d
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 90
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    #@15
    return-object v0
.end method

.method public setApplicationIdentifiers(Ljava/lang/String;)V
    .locals 0
    .param p1, "appids"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subAppIds:Ljava/lang/String;

    #@2
    .line 93
    return-void
.end method

.method public setSubserviceIdentifiers(Ljava/lang/String;)V
    .locals 1
    .param p1, "subservices"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    const-string/jumbo v0, "."

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lgov/nist/javax/sip/header/ims/PPreferredService;->subServiceIds:Ljava/lang/String;

    #@9
    .line 98
    return-void
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
    .line 73
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
