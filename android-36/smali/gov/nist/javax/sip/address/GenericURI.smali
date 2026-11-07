.class public Lgov/nist/javax/sip/address/GenericURI;
.super Lgov/nist/javax/sip/address/NetObject;
.source "GenericURI.java"

# interfaces
.implements Ljavax/sip/address/URI;


# static fields
.field public static final greylist ISUB:Ljava/lang/String; = "isub"

.field public static final greylist PHONE_CONTEXT_TAG:Ljava/lang/String; = "context-tag"

.field public static final greylist POSTDIAL:Ljava/lang/String; = "postdial"

.field public static final greylist PROVIDER_TAG:Ljava/lang/String; = "provider-tag"

.field public static final greylist SIP:Ljava/lang/String; = "sip"

.field public static final greylist SIPS:Ljava/lang/String; = "sips"

.field public static final greylist TEL:Ljava/lang/String; = "tel"

.field private static final whitelist serialVersionUID:J = 0x2cee91964ebc9436L


# instance fields
.field protected greylist scheme:Ljava/lang/String;

.field protected greylist uriString:Ljava/lang/String;


# direct methods
.method protected constructor greylist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 65
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    .line 73
    const/4 v0, 0x0

    :try_start_4
    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    .line 74
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "i":I
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    .line 78
    .end local v1    # "i":I
    nop

    .line 79
    return-void

    .line 76
    :catch_14
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "GenericURI, Bad URI format"

    invoke-direct {v2, v3, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method


# virtual methods
.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "that"    # Ljava/lang/Object;

    .line 120
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 121
    :cond_4
    instance-of v0, p1, Ljavax/sip/address/URI;

    if-eqz v0, :cond_18

    .line 122
    move-object v0, p1

    check-cast v0, Ljavax/sip/address/URI;

    .line 126
    .local v0, "o":Ljavax/sip/address/URI;
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 128
    .end local v0    # "o":Ljavax/sip/address/URI;
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getScheme()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 132
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isSipURI()Z
    .registers 2

    .line 115
    instance-of v0, p0, Lgov/nist/javax/sip/address/SipUri;

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
