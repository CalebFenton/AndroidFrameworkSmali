.class public Lgov/nist/javax/sip/header/MimeVersion;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MimeVersion.java"

# interfaces
.implements Ljavax/sip/header/MimeVersionHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x6e59b8a2cb581754L


# instance fields
.field protected greylist majorVersion:I

.field protected greylist minorVersion:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 66
    const-string v0, "MIME-Version"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    return-object v0
.end method

.method public greylist getMajorVersion()I
    .registers 2

    .line 84
    iget v0, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    return v0
.end method

.method public greylist getMinorVersion()I
    .registers 2

    .line 75
    iget v0, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    return v0
.end method

.method public greylist setMajorVersion(I)V
    .registers 4
    .param p1, "majorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 112
    if-ltz p1, :cond_5

    .line 116
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->majorVersion:I

    .line 117
    return-void

    .line 113
    :cond_5
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, MimeVersion, setMajorVersion(), the majorVersion parameter is null"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMinorVersion(I)V
    .registers 4
    .param p1, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 96
    if-ltz p1, :cond_5

    .line 100
    iput p1, p0, Lgov/nist/javax/sip/header/MimeVersion;->minorVersion:I

    .line 101
    return-void

    .line 97
    :cond_5
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, MimeVersion, setMinorVersion(), the minorVersion parameter is null"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
