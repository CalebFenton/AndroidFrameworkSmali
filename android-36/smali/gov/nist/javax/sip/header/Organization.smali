.class public Lgov/nist/javax/sip/header/Organization;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Organization.java"

# interfaces
.implements Ljavax/sip/header/OrganizationHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2682caa11d164bc8L


# instance fields
.field protected greylist organization:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 70
    const-string v0, "Organization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOrganization()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setOrganization(Ljava/lang/String;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_5

    .line 90
    iput-object p1, p0, Lgov/nist/javax/sip/header/Organization;->organization:Ljava/lang/String;

    .line 91
    return-void

    .line 87
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Organization, setOrganization(), the organization parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
