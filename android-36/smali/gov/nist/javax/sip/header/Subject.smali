.class public Lgov/nist/javax/sip/header/Subject;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Subject.java"

# interfaces
.implements Ljavax/sip/header/SubjectHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x59ead0607d05fec0L


# instance fields
.field protected greylist subject:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 61
    const-string v0, "Subject"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 70
    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_7
    const-string v0, ""

    return-object v0
.end method

.method public greylist getSubject()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setSubject(Ljava/lang/String;)V
    .registers 4
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_5

    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    .line 90
    return-void

    .line 86
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  Subject, setSubject(), the subject parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
