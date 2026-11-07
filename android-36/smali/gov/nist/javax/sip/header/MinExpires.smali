.class public Lgov/nist/javax/sip/header/MinExpires;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MinExpires.java"

# interfaces
.implements Ljavax/sip/header/MinExpiresHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x612b7da8cbe173b9L


# instance fields
.field protected greylist expires:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 59
    const-string v0, "Min-Expires"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 67
    iget v0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getExpires()I
    .registers 2

    .line 78
    iget v0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

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

    .line 94
    if-ltz p1, :cond_5

    .line 96
    iput p1, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    .line 97
    return-void

    .line 95
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
