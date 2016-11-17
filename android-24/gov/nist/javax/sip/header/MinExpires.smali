.class public Lgov/nist/javax/sip/header/MinExpires;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "MinExpires.java"

# interfaces
.implements Ljavax/sip/header/MinExpiresHeader;


# static fields
.field private static final serialVersionUID:J = 0x612b7da8cbe173b9L


# instance fields
.field protected expires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "Min-Expires"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 58
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getExpires()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    #@2
    return v0
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
    .line 94
    if-gez p1, :cond_0

    #@2
    .line 95
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
    .line 96
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/MinExpires;->expires:I

    #@1e
    .line 93
    return-void
.end method
