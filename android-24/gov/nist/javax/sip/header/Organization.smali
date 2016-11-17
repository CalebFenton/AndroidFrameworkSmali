.class public Lgov/nist/javax/sip/header/Organization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Organization.java"

# interfaces
.implements Ljavax/sip/header/OrganizationHeader;


# static fields
.field private static final serialVersionUID:J = -0x2682caa11d164bc8L


# instance fields
.field protected organization:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "Organization"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 69
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setOrganization(Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    if-nez p1, :cond_0

    #@2
    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 88
    const-string/jumbo v1, "JAIN-SIP Exception, Organization, setOrganization(), the organization parameter is null"

    #@7
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 90
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    #@d
    .line 85
    return-void
.end method
