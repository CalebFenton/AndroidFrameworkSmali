.class public Lgov/nist/javax/sip/header/Unsupported;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Unsupported.java"

# interfaces
.implements Ljavax/sip/header/UnsupportedHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2268a6084c766aa7L


# instance fields
.field protected greylist optionTag:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 57
    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "ot"    # Ljava/lang/String;

    .line 64
    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOptionTag()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setOptionTag(Ljava/lang/String;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_5

    .line 92
    iput-object p1, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    .line 93
    return-void

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  Unsupported, setOptionTag(), The option tag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
