.class public final Lgov/nist/javax/sip/header/extensions/SessionExpires;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SessionExpires.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;
.implements Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;


# static fields
.field public static final NAME:Ljava/lang/String; = "Session-Expires"

.field public static final REFRESHER:Ljava/lang/String; = "refresher"

.field private static final serialVersionUID:J = 0x79a63e78c9b0a324L


# instance fields
.field public expires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    const-string/jumbo v0, "Session-Expires"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 37
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 86
    iget v1, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->expires:I

    #@2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 88
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    #@8
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, ";"

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    #@20
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    .line 91
    :cond_0
    return-object v0
.end method

.method public getExpires()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget v0, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->expires:I

    #@2
    return v0
.end method

.method public getRefresher()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "refresher"

    #@5
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setExpires(I)V
    .locals 3
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 69
    if-gez p1, :cond_0

    #@2
    .line 70
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "bad argument "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 71
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->expires:I

    #@1e
    .line 68
    return-void
.end method

.method public setRefresher(Ljava/lang/String;)V
    .locals 2
    .param p1, "refresher"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/extensions/SessionExpires;->parameters:Lgov/nist/core/NameValueList;

    #@2
    const-string/jumbo v1, "refresher"

    #@5
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
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
    .line 76
    new-instance v0, Ljava/text/ParseException;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@6
    throw v0
.end method
