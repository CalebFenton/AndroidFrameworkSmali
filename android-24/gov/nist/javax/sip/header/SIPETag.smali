.class public Lgov/nist/javax/sip/header/SIPETag;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPETag.java"

# interfaces
.implements Ljavax/sip/header/SIPETagHeader;
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = 0x3541b15bf9044cbbL


# instance fields
.field protected entityTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "SIP-ETag"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPETag;-><init>()V

    #@3
    .line 59
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    #@6
    .line 57
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 2
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    if-nez p1, :cond_0

    #@2
    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    .line 86
    const-string/jumbo v1, "JAIN-SIP Exception,SIP-ETag, setETag(), the etag parameter is null"

    #@7
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 88
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPETag;->entityTag:Ljava/lang/String;

    #@d
    .line 83
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPETag;->setETag(Ljava/lang/String;)V

    #@3
    .line 97
    return-void
.end method
