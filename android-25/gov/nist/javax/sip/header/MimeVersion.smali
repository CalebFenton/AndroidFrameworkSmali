.class public Lgov/nist/javax/sip/header/MimeVersion;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MimeVersion.java"

# interfaces
.implements Ljavax/sip/header/MimeVersionHeader;


# static fields
.field private static final serialVersionUID:J = -0x6e59b8a2cb581754L


# instance fields
.field protected majorVersion:I

.field protected minorVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "MIME-Version"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 65
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 125
    const-string/jumbo v1, "."

    #@12
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 126
    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    #@2
    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    #@0
    .prologue
    .line 75
    iget v0, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    #@2
    return v0
.end method

.method public setMajorVersion(I)V
    .locals 2
    .param p1, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    if-gez p1, :cond_0

    #@2
    .line 113
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 114
    const-string/jumbo v1, "JAIN-SIP Exception, MimeVersion, setMajorVersion(), the majorVersion parameter is null"

    #@7
    .line 113
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 116
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    #@d
    .line 111
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 2
    .param p1, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    if-gez p1, :cond_0

    #@2
    .line 97
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    .line 98
    const-string/jumbo v1, "JAIN-SIP Exception, MimeVersion, setMinorVersion(), the minorVersion parameter is null"

    #@7
    .line 97
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 100
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    #@d
    .line 95
    return-void
.end method
