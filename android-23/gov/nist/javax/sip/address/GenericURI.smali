.class public Lgov/nist/javax/sip/address/GenericURI;
.super Lgov/nist/javax/sip/address/NetObject;
.source "GenericURI.java"

# interfaces
.implements Ljavax/sip/address/URI;


# static fields
.field public static final ISUB:Ljava/lang/String; = "isub"

.field public static final PHONE_CONTEXT_TAG:Ljava/lang/String; = "context-tag"

.field public static final POSTDIAL:Ljava/lang/String; = "postdial"

.field public static final PROVIDER_TAG:Ljava/lang/String; = "provider-tag"

.field public static final SIP:Ljava/lang/String; = "sip"

.field public static final SIPS:Ljava/lang/String; = "sips"

.field public static final TEL:Ljava/lang/String; = "tel"

.field private static final serialVersionUID:J = 0x2cee91964ebc9436L


# instance fields
.field protected scheme:Ljava/lang/String;

.field protected uriString:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 71
    invoke-direct {p0}, Lgov/nist/javax/sip/address/NetObject;-><init>()V

    #@4
    .line 73
    :try_start_0
    iput-object p1, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    #@6
    .line 74
    const-string/jumbo v2, ":"

    #@9
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    .line 75
    .local v1, "i":I
    const/4 v2, 0x0

    #@e
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 71
    return-void

    #@15
    .line 76
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    #@16
    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/text/ParseException;

    #@18
    const-string/jumbo v3, "GenericURI, Bad URI format"

    #@1b
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@1e
    throw v2
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->uriString:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 120
    if-ne p0, p1, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 121
    :cond_0
    instance-of v1, p1, Ljavax/sip/address/URI;

    #@6
    if-eqz v1, :cond_1

    #@8
    move-object v0, p1

    #@9
    .line 122
    check-cast v0, Ljavax/sip/address/URI;

    #@b
    .line 126
    .local v0, "o":Ljavax/sip/address/URI;
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v0}, Ljavax/sip/address/URI;->toString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    return v1

    #@18
    .line 128
    .end local v0    # "o":Ljavax/sip/address/URI;
    :cond_1
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isSipURI()Z
    .locals 1

    #@0
    .prologue
    .line 115
    instance-of v0, p0, Lgov/nist/javax/sip/address/SipUri;

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
