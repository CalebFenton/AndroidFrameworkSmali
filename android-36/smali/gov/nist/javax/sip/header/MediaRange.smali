.class public Lgov/nist/javax/sip/header/MediaRange;
.super Lgov/nist/javax/sip/header/SIPObject;
.source "MediaRange.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x5763e290c720f4eaL


# instance fields
.field protected greylist subtype:Ljava/lang/String;

.field protected greylist type:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPObject;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 114
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public greylist getSubtype()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getType()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setSubtype(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->subtype:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public greylist setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lgov/nist/javax/sip/header/MediaRange;->type:Ljava/lang/String;

    .line 94
    return-void
.end method
