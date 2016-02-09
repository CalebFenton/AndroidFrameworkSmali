.class public Lgov/nist/javax/sip/header/RecordRoute;
.super Lgov/nist/javax/sip/header/AddressParametersHeader;
.source "RecordRoute.java"

# interfaces
.implements Ljavax/sip/header/RecordRouteHeader;


# static fields
.field private static final serialVersionUID:J = 0x2123f698f16297e5L


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "Record-Route"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 65
    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov/nist/javax/sip/address/AddressImpl;

    #@0
    .prologue
    .line 58
    const-string/jumbo v0, "Record-Route"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 59
    iput-object p1, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@8
    .line 57
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/RecordRoute;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@3
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@6
    move-result v0

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 79
    const-string/jumbo v0, "<"

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f
    .line 81
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@11
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@14
    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->address:Lgov/nist/javax/sip/address/AddressImpl;

    #@16
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/AddressImpl;->getAddressType()I

    #@19
    move-result v0

    #@1a
    if-ne v0, v1, :cond_1

    #@1c
    .line 83
    const-string/jumbo v0, ">"

    #@1f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 86
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->parameters:Lgov/nist/core/NameValueList;

    #@24
    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_2

    #@2a
    .line 87
    const-string/jumbo v0, ";"

    #@2d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/RecordRoute;->parameters:Lgov/nist/core/NameValueList;

    #@32
    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@35
    .line 90
    :cond_2
    return-object p1
.end method
