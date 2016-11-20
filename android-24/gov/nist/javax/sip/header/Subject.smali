.class public Lgov/nist/javax/sip/header/Subject;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Subject.java"

# interfaces
.implements Ljavax/sip/header/SubjectHeader;


# static fields
.field private static final serialVersionUID:J = -0x59ead0607d05fec0L


# instance fields
.field protected subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "Subject"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 60
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 70
    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 72
    :cond_0
    const-string/jumbo v0, ""

    #@a
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    if-nez p1, :cond_0

    #@2
    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 87
    const-string/jumbo v1, "JAIN-SIP Exception,  Subject, setSubject(), the subject parameter is null"

    #@7
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 89
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Subject;->subject:Ljava/lang/String;

    #@d
    .line 84
    return-void
.end method
