.class public Lgov/nist/javax/sip/header/Expires;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Expires.java"

# interfaces
.implements Ljavax/sip/header/ExpiresHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x2b7f6e1819e3cbcbL


# instance fields
.field protected greylist expires:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 59
    const-string v0, "Expires"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 67
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Expires;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 71
    iget v0, p0, Lgov/nist/javax/sip/header/Expires;->expires:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist getExpires()I
    .registers 2

    .line 86
    iget v0, p0, Lgov/nist/javax/sip/header/Expires;->expires:I

    return v0
.end method

.method public greylist setExpires(I)V
    .registers 5
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 101
    if-ltz p1, :cond_5

    .line 103
    iput p1, p0, Lgov/nist/javax/sip/header/Expires;->expires:I

    .line 104
    return-void

    .line 102
    :cond_5
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
