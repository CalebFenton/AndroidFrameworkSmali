.class public final Lgov/nist/javax/sip/header/Allow;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Allow.java"

# interfaces
.implements Ljavax/sip/header/AllowHeader;


# static fields
.field private static final serialVersionUID:J = -0x2b177555b26229aaL


# instance fields
.field protected method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "Allow"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "m"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "Allow"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 62
    iput-object p1, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    #@8
    .line 60
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    iget-object v0, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    if-nez p1, :cond_0

    #@2
    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 79
    const-string/jumbo v1, "JAIN-SIP Exception, Allow, setMethod(), the method parameter is null."

    #@7
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 81
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Allow;->method:Ljava/lang/String;

    #@d
    .line 76
    return-void
.end method
