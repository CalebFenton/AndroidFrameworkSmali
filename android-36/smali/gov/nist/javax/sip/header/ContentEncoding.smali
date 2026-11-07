.class public Lgov/nist/javax/sip/header/ContentEncoding;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentEncoding.java"

# interfaces
.implements Ljavax/sip/header/ContentEncodingHeader;


# static fields
.field private static final whitelist serialVersionUID:J = 0x1c3b09a8a2de85c9L


# instance fields
.field protected greylist contentEncoding:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 97
    const-string v0, "Content-Encoding"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "enc"    # Ljava/lang/String;

    .line 105
    const-string v0, "Content-Encoding"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getEncoding()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 130
    if-eqz p1, :cond_5

    .line 133
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentEncoding;->contentEncoding:Ljava/lang/String;

    .line 134
    return-void

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  encoding is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
