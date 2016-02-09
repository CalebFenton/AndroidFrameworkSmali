.class public Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "HeaderFactoryImpl.java"

# interfaces
.implements Ljavax/sip/header/HeaderFactory;
.implements Lgov/nist/javax/sip/header/HeaderFactoryExt;


# instance fields
.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    #@6
    .line 1699
    const-string/jumbo v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    #@9
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@c
    move-result v0

    #@d
    .line 1698
    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    #@f
    .line 1697
    return-void
.end method


# virtual methods
.method public createAcceptEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/AcceptEncodingHeader;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    if-nez p1, :cond_0

    #@2
    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "the encoding parameter is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 91
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    #@10
    .line 92
    .local v0, "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    #@13
    .line 93
    return-object v0
.end method

.method public createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 111
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "contentType or subtype is null "

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 112
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    #@f
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    #@12
    .line 113
    .local v0, "accept":Lgov/nist/javax/sip/header/Accept;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    #@15
    .line 114
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    #@18
    .line 116
    return-object v0
.end method

.method public createAcceptLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/AcceptLanguageHeader;
    .locals 3
    .param p1, "language"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 127
    if-nez p1, :cond_0

    #@2
    .line 128
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 129
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    #@10
    .line 130
    .local v0, "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptLanguage;->setAcceptLanguage(Ljava/util/Locale;)V

    #@13
    .line 132
    return-object v0
.end method

.method public createAlertInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/AlertInfoHeader;
    .locals 3
    .param p1, "alertInfo"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 143
    if-nez p1, :cond_0

    #@2
    .line 144
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg alertInfo"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 145
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    #@10
    .line 146
    .local v0, "a":Lgov/nist/javax/sip/header/AlertInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    #@13
    .line 147
    return-object v0
.end method

.method public createAllowEventsHeader(Ljava/lang/String;)Ljavax/sip/header/AllowEventsHeader;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    if-nez p1, :cond_0

    #@2
    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg eventType"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 164
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AllowEvents;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    #@10
    .line 165
    .local v0, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    #@13
    .line 166
    return-object v0
.end method

.method public createAllowHeader(Ljava/lang/String;)Ljavax/sip/header/AllowHeader;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    if-nez p1, :cond_0

    #@2
    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg method"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 180
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    #@10
    .line 181
    .local v0, "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    #@13
    .line 183
    return-object v0
.end method

.method public createAuthenticationInfoHeader(Ljava/lang/String;)Ljavax/sip/header/AuthenticationInfoHeader;
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 198
    if-nez p1, :cond_0

    #@2
    .line 199
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg response"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 200
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    #@10
    .line 201
    .local v0, "auth":Lgov/nist/javax/sip/header/AuthenticationInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setResponse(Ljava/lang/String;)V

    #@13
    .line 203
    return-object v0
.end method

.method public createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    if-nez p1, :cond_0

    #@2
    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg scheme "

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 219
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    #@10
    .line 220
    .local v0, "auth":Lgov/nist/javax/sip/header/Authorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Authorization;->setScheme(Ljava/lang/String;)V

    #@13
    .line 222
    return-object v0
.end method

.method public createCSeqHeader(ILjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 2
    .param p1, "sequenceNumber"    # I
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1, p2}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .locals 5
    .param p1, "sequenceNumber"    # J
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 239
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 240
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "bad arg "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 241
    :cond_0
    if-nez p3, :cond_1

    #@22
    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    #@24
    const-string/jumbo v2, "null arg method"

    #@27
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 243
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    #@2d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    #@30
    .line 244
    .local v0, "cseq":Lgov/nist/javax/sip/header/CSeq;
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    #@33
    .line 245
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    #@36
    .line 247
    return-object v0
.end method

.method public createCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    if-nez p1, :cond_0

    #@2
    .line 270
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg callId"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 271
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    #@10
    .line 272
    .local v0, "c":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    #@13
    .line 273
    return-object v0
.end method

.method public createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;
    .locals 3
    .param p1, "callInfo"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 283
    if-nez p1, :cond_0

    #@2
    .line 284
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg callInfo"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 286
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    #@10
    .line 287
    .local v0, "c":Lgov/nist/javax/sip/header/CallInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    #@13
    .line 288
    return-object v0
.end method

.method public createChargingVectorHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
    .locals 3
    .param p1, "icid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1419
    if-nez p1, :cond_0

    #@2
    .line 1420
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null icid arg!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1422
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V

    #@10
    .line 1423
    .local v0, "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setICID(Ljava/lang/String;)V

    #@13
    .line 1425
    return-object v0
.end method

.method public createContactHeader()Ljavax/sip/header/ContactHeader;
    .locals 2

    #@0
    .prologue
    .line 320
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    #@5
    .line 321
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    #@9
    .line 322
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setExpires(I)V

    #@d
    .line 324
    return-object v0
.end method

.method public createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 298
    if-nez p1, :cond_0

    #@2
    .line 299
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg address"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 300
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    #@10
    .line 301
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 303
    return-object v0
.end method

.method public createContentDispositionHeader(Ljava/lang/String;)Ljavax/sip/header/ContentDispositionHeader;
    .locals 3
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    if-nez p1, :cond_0

    #@2
    .line 340
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg contentDisposition"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 341
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    #@10
    .line 342
    .local v0, "c":Lgov/nist/javax/sip/header/ContentDisposition;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    #@13
    .line 344
    return-object v0
.end method

.method public createContentEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/ContentEncodingHeader;
    .locals 3
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 358
    if-nez p1, :cond_0

    #@2
    .line 359
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null encoding"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 360
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    #@10
    .line 361
    .local v0, "c":Lgov/nist/javax/sip/header/ContentEncoding;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    #@13
    .line 363
    return-object v0
.end method

.method public createContentLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/ContentLanguageHeader;
    .locals 3
    .param p1, "contentLanguage"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 375
    if-nez p1, :cond_0

    #@2
    .line 376
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg contentLanguage"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 377
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>()V

    #@10
    .line 378
    .local v0, "c":Lgov/nist/javax/sip/header/ContentLanguage;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setContentLanguage(Ljava/util/Locale;)V

    #@13
    .line 380
    return-object v0
.end method

.method public createContentLengthHeader(I)Ljavax/sip/header/ContentLengthHeader;
    .locals 3
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    if-gez p1, :cond_0

    #@2
    .line 394
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@4
    const-string/jumbo v2, "bad contentLength"

    #@7
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 395
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLength;-><init>()V

    #@10
    .line 396
    .local v0, "c":Lgov/nist/javax/sip/header/ContentLength;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V

    #@13
    .line 398
    return-object v0
.end method

.method public createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 415
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 416
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "null contentType or subType"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 417
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    #@f
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    #@12
    .line 418
    .local v0, "c":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    #@15
    .line 419
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    #@18
    .line 420
    return-object v0
.end method

.method public createDateHeader(Ljava/util/Calendar;)Ljavax/sip/header/DateHeader;
    .locals 3
    .param p1, "date"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 430
    new-instance v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPDateHeader;-><init>()V

    #@5
    .line 431
    .local v0, "d":Lgov/nist/javax/sip/header/SIPDateHeader;
    if-nez p1, :cond_0

    #@7
    .line 432
    new-instance v1, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v2, "null date"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V

    #@13
    .line 435
    return-object v0
.end method

.method public createErrorInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/ErrorInfoHeader;
    .locals 2
    .param p1, "errorInfo"    # Ljavax/sip/address/URI;

    #@0
    .prologue
    .line 1155
    if-nez p1, :cond_0

    #@2
    .line 1156
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "null arg"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 1157
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    #@d
    check-cast p1, Lgov/nist/javax/sip/address/GenericURI;

    #@f
    .end local p1    # "errorInfo":Ljavax/sip/address/URI;
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>(Lgov/nist/javax/sip/address/GenericURI;)V

    #@12
    return-object v0
.end method

.method public createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;
    .locals 3
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 449
    if-nez p1, :cond_0

    #@2
    .line 450
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null eventType"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 451
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    #@10
    .line 452
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    #@13
    .line 454
    return-object v0
.end method

.method public createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 467
    if-gez p1, :cond_0

    #@2
    .line 468
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bad value "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 469
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Expires;

    #@1e
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    #@21
    .line 470
    .local v0, "e":Lgov/nist/javax/sip/header/Expires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V

    #@24
    .line 472
    return-object v0
.end method

.method public createExtensionHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ExtensionHeader;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 489
    if-nez p1, :cond_0

    #@2
    .line 490
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad name"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 493
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>()V

    #@10
    .line 494
    .local v0, "ext":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setName(Ljava/lang/String;)V

    #@13
    .line 495
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    #@16
    .line 497
    return-object v0
.end method

.method public createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    if-nez p1, :cond_0

    #@2
    .line 513
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 514
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/From;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    #@10
    .line 515
    .local v0, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 516
    if-eqz p2, :cond_1

    #@15
    .line 517
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    #@18
    .line 519
    :cond_1
    return-object v0
.end method

.method public createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 8
    .param p1, "headerText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 1166
    new-instance v3, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@4
    invoke-direct {v3}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@7
    .line 1167
    .local v3, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@e
    move-result-object v2

    #@f
    .line 1168
    .local v2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v4, v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@11
    if-eqz v4, :cond_2

    #@13
    move-object v4, v2

    #@14
    .line 1169
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@16
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    #@19
    move-result v4

    #@1a
    const/4 v5, 0x1

    #@1b
    if-le v4, v5, :cond_0

    #@1d
    .line 1170
    new-instance v4, Ljava/text/ParseException;

    #@1f
    .line 1171
    new-instance v5, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v6, "Only singleton allowed "

    #@27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    .line 1170
    invoke-direct {v4, v5, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@36
    throw v4

    #@37
    :cond_0
    move-object v4, v2

    #@38
    .line 1173
    check-cast v4, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@3a
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    #@3d
    move-result v4

    #@3e
    if-nez v4, :cond_1

    #@40
    .line 1175
    :try_start_0
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@42
    .end local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Ljavax/sip/header/Header;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    return-object v4

    #@4d
    .line 1181
    :catch_0
    move-exception v0

    #@4e
    .line 1182
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@51
    .line 1183
    return-object v6

    #@52
    .line 1178
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@53
    .line 1179
    .local v1, "ex":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    #@56
    .line 1180
    return-object v6

    #@57
    .line 1186
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    .restart local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@59
    .end local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    #@5c
    move-result-object v4

    #@5d
    return-object v4

    #@5e
    .line 1189
    .restart local v2    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2
    return-object v2
.end method

.method public createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1205
    if-nez p1, :cond_0

    #@2
    .line 1206
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "header name is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1208
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@13
    move-result-object v1

    #@14
    .line 1210
    const-string/jumbo v2, ":"

    #@17
    .line 1208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 1213
    .local v0, "hdrText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@26
    move-result-object v1

    #@27
    return-object v1
.end method

.method public createHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1225
    if-nez p1, :cond_0

    #@2
    .line 1226
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v3, "null arg!"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1227
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/parser/StringMsgParser;

    #@d
    invoke-direct {v1}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    #@10
    .line 1228
    .local v1, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    #@13
    move-result-object v0

    #@14
    .line 1229
    .local v0, "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v2, v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 1230
    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    #@1a
    .end local v0    # "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    return-object v0

    #@1b
    .line 1232
    .restart local v0    # "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1
    new-instance v2, Ljava/text/ParseException;

    #@1d
    .line 1233
    const-string/jumbo v3, "List of headers of this type is not allowed in a message"

    #@20
    .line 1234
    const/4 v4, 0x0

    #@21
    .line 1232
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@24
    throw v2
.end method

.method public createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    if-nez p1, :cond_0

    #@2
    .line 535
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null callId arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 536
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    #@10
    .line 537
    .local v0, "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    #@13
    .line 539
    return-object v0
.end method

.method public createJoinHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/JoinHeader;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "fromTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1291
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Join;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    #@5
    .line 1292
    .local v0, "join":Lgov/nist/javax/sip/header/extensions/Join;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V

    #@8
    .line 1293
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Join;->setFromTag(Ljava/lang/String;)V

    #@b
    .line 1294
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Join;->setToTag(Ljava/lang/String;)V

    #@e
    .line 1296
    return-object v0
.end method

.method public createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .locals 4
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 552
    if-ltz p1, :cond_0

    #@2
    const/16 v1, 0xff

    #@4
    if-le p1, v1, :cond_1

    #@6
    .line 553
    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@8
    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "bad maxForwards arg "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 553
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 555
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/MaxForwards;

    #@22
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    #@25
    .line 556
    .local v0, "m":Lgov/nist/javax/sip/header/MaxForwards;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    #@28
    .line 558
    return-object v0
.end method

.method public createMimeVersionHeader(II)Ljavax/sip/header/MimeVersionHeader;
    .locals 3
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 576
    if-ltz p1, :cond_0

    #@2
    if-gez p2, :cond_1

    #@4
    .line 577
    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@6
    .line 578
    const-string/jumbo v2, "bad major/minor version"

    #@9
    .line 577
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 579
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/MimeVersion;

    #@f
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    #@12
    .line 580
    .local v0, "m":Lgov/nist/javax/sip/header/MimeVersion;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    #@15
    .line 581
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V

    #@18
    .line 583
    return-object v0
.end method

.method public createMinExpiresHeader(I)Ljavax/sip/header/MinExpiresHeader;
    .locals 4
    .param p1, "minExpires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 597
    if-gez p1, :cond_0

    #@2
    .line 598
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bad minExpires "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 599
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/MinExpires;

    #@1e
    invoke-direct {v0}, Lgov/nist/javax/sip/header/MinExpires;-><init>()V

    #@21
    .line 600
    .local v0, "min":Lgov/nist/javax/sip/header/MinExpires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MinExpires;->setExpires(I)V

    #@24
    .line 602
    return-object v0
.end method

.method public createMinSEHeader(I)Ljavax/sip/header/ExtensionHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 620
    if-gez p1, :cond_0

    #@2
    .line 621
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bad value "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 622
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/MinSE;

    #@1e
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    #@21
    .line 623
    .local v0, "e":Lgov/nist/javax/sip/header/extensions/MinSE;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V

    #@24
    .line 625
    return-object v0
.end method

.method public createOrganizationHeader(Ljava/lang/String;)Ljavax/sip/header/OrganizationHeader;
    .locals 3
    .param p1, "organization"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 639
    if-nez p1, :cond_0

    #@2
    .line 640
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad organization arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 641
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Organization;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    #@10
    .line 642
    .local v0, "o":Lgov/nist/javax/sip/header/Organization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V

    #@13
    .line 644
    return-object v0
.end method

.method public createPAccessNetworkInfoHeader()Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
    .locals 1

    #@0
    .prologue
    .line 1328
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    #@5
    .line 1330
    .local v0, "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method public createPAssertedIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1344
    if-nez p1, :cond_0

    #@2
    .line 1345
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1347
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    #@10
    .line 1348
    .local v0, "assertedIdentity":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1350
    return-object v0
.end method

.method public createPAssertedServiceHeader()Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
    .locals 1

    #@0
    .prologue
    .line 1628
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedService;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    #@5
    .line 1629
    .local v0, "pas":Lgov/nist/javax/sip/header/ims/PAssertedService;
    return-object v0
.end method

.method public createPAssociatedURIHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
    .locals 3
    .param p1, "assocURI"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1365
    if-nez p1, :cond_0

    #@2
    .line 1366
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null associatedURI!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1368
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    #@10
    .line 1369
    .local v0, "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1371
    return-object v0
.end method

.method public createPCalledPartyIDHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PCalledPartyIDHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1386
    if-nez p1, :cond_0

    #@2
    .line 1387
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1389
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    #@10
    .line 1390
    .local v0, "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1392
    return-object v0
.end method

.method public createPChargingFunctionAddressesHeader()Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
    .locals 1

    #@0
    .prologue
    .line 1403
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V

    #@5
    .line 1405
    .local v0, "cfa":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    return-object v0
.end method

.method public createPMediaAuthorizationHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1440
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v1, ""

    #@5
    if-ne p1, v1, :cond_1

    #@7
    .line 1441
    :cond_0
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@9
    const-string/jumbo v2, "The Media-Authorization-Token parameter is null or empty"

    #@c
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 1444
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    #@12
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    #@15
    .line 1445
    .local v0, "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V

    #@18
    .line 1447
    return-object v0
.end method

.method public createPPreferredIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1459
    if-nez p1, :cond_0

    #@2
    .line 1460
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1462
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    #@10
    .line 1463
    .local v0, "preferredIdentity":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1465
    return-object v0
.end method

.method public createPPreferredServiceHeader()Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
    .locals 1

    #@0
    .prologue
    .line 1618
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredService;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    #@5
    .line 1619
    .local v0, "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    return-object v0
.end method

.method public createPProfileKeyHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PProfileKeyHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1592
    if-nez p1, :cond_0

    #@2
    .line 1593
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "Address is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1594
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    #@10
    .line 1595
    .local v0, "pProfileKey":Lgov/nist/javax/sip/header/ims/PProfileKey;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PProfileKey;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1597
    return-object v0
.end method

.method public createPServedUserHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1606
    if-nez p1, :cond_0

    #@2
    .line 1607
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "Address is null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1608
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    #@10
    .line 1609
    .local v0, "psu":Lgov/nist/javax/sip/header/ims/PServedUser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1611
    return-object v0
.end method

.method public createPUserDatabaseHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
    .locals 3
    .param p1, "databaseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1575
    if-eqz p1, :cond_0

    #@2
    const-string/jumbo v1, " "

    #@5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1576
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v2, "Database name is null"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 1578
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    #@16
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    #@19
    .line 1579
    .local v0, "pUserDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    #@1c
    .line 1581
    return-object v0
.end method

.method public createPVisitedNetworkIDHeader()Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    .locals 1

    #@0
    .prologue
    .line 1475
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    #@5
    .line 1477
    .local v0, "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    return-object v0
.end method

.method public createPathHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PathHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1491
    if-nez p1, :cond_0

    #@2
    .line 1492
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1495
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/Path;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    #@10
    .line 1496
    .local v0, "path":Lgov/nist/javax/sip/header/ims/Path;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/Path;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1498
    return-object v0
.end method

.method public createPriorityHeader(Ljava/lang/String;)Ljavax/sip/header/PriorityHeader;
    .locals 3
    .param p1, "priority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 657
    if-nez p1, :cond_0

    #@2
    .line 658
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad priority arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 659
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    #@10
    .line 660
    .local v0, "p":Lgov/nist/javax/sip/header/Priority;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    #@13
    .line 662
    return-object v0
.end method

.method public createPrivacyHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    .locals 3
    .param p1, "privacyType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1510
    if-nez p1, :cond_0

    #@2
    .line 1511
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null privacyType arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1513
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    #@d
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>(Ljava/lang/String;)V

    #@10
    .line 1515
    .local v0, "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    return-object v0
.end method

.method public createProxyAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthenticateHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 676
    if-nez p1, :cond_0

    #@2
    .line 677
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad scheme arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 678
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;-><init>()V

    #@10
    .line 679
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->setScheme(Ljava/lang/String;)V

    #@13
    .line 681
    return-object v0
.end method

.method public createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 695
    if-nez p1, :cond_0

    #@2
    .line 696
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad scheme arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 697
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorization;-><init>()V

    #@10
    .line 698
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyAuthorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthorization;->setScheme(Ljava/lang/String;)V

    #@13
    .line 700
    return-object v0
.end method

.method public createProxyRequireHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyRequireHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 714
    if-nez p1, :cond_0

    #@2
    .line 715
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad optionTag arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 716
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequire;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    #@10
    .line 717
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyRequire;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    #@13
    .line 719
    return-object v0
.end method

.method public createRAckHeader(IILjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .locals 7
    .param p1, "rSeqNumber"    # I
    .param p2, "cSeqNumber"    # I
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 759
    int-to-long v2, p1

    #@1
    int-to-long v4, p2

    #@2
    move-object v1, p0

    #@3
    move-object v6, p3

    #@4
    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .locals 5
    .param p1, "rSeqNumber"    # J
    .param p3, "cSeqNumber"    # J
    .param p5, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 741
    if-nez p5, :cond_0

    #@4
    .line 742
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "Bad method"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 743
    :cond_0
    cmp-long v1, p3, v2

    #@f
    if-ltz v1, :cond_1

    #@11
    cmp-long v1, p1, v2

    #@13
    if-gez v1, :cond_2

    #@15
    .line 744
    :cond_1
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@17
    const-string/jumbo v2, "bad cseq/rseq arg"

    #@1a
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 745
    :cond_2
    new-instance v0, Lgov/nist/javax/sip/header/RAck;

    #@20
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    #@23
    .line 746
    .local v0, "rack":Lgov/nist/javax/sip/header/RAck;
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    #@26
    .line 747
    invoke-virtual {v0, p3, p4}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    #@29
    .line 748
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    #@2c
    .line 750
    return-object v0
.end method

.method public createRSeqHeader(I)Ljavax/sip/header/RSeqHeader;
    .locals 2
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 769
    int-to-long v0, p1

    #@1
    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;
    .locals 5
    .param p1, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 783
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 784
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@8
    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "invalid sequenceNumber arg "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 784
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 786
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RSeq;

    #@22
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    #@25
    .line 787
    .local v0, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    #@28
    .line 789
    return-object v0
.end method

.method public createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/ReasonHeader;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "cause"    # I
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 808
    if-nez p1, :cond_0

    #@2
    .line 809
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "bad protocol arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 810
    :cond_0
    if-gez p2, :cond_1

    #@d
    .line 811
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@f
    const-string/jumbo v2, "bad cause"

    #@12
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 812
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Reason;

    #@18
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    #@1b
    .line 813
    .local v0, "reason":Lgov/nist/javax/sip/header/Reason;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    #@1e
    .line 814
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Reason;->setCause(I)V

    #@21
    .line 815
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Reason;->setText(Ljava/lang/String;)V

    #@24
    .line 817
    return-object v0
.end method

.method public createRecordRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RecordRouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 827
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "Null argument!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 828
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RecordRoute;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    #@10
    .line 829
    .local v0, "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RecordRoute;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 831
    return-object v0
.end method

.method public createReferToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReferToHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1241
    if-nez p1, :cond_0

    #@2
    .line 1242
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1243
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ReferTo;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReferTo;-><init>()V

    #@10
    .line 1244
    .local v0, "referTo":Lgov/nist/javax/sip/header/ReferTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReferTo;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1245
    return-object v0
.end method

.method public createReferencesHeader(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1682
    new-instance v0, Lgov/nist/javax/sip/header/extensions/References;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    #@5
    .line 1683
    .local v0, "retval":Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    invoke-interface {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setCallId(Ljava/lang/String;)V

    #@8
    .line 1684
    invoke-interface {v0, p2}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setRel(Ljava/lang/String;)V

    #@b
    .line 1685
    return-object v0
.end method

.method public createReferredByHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1259
    if-nez p1, :cond_0

    #@2
    .line 1260
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1261
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    #@10
    .line 1262
    .local v0, "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1263
    return-object v0
.end method

.method public createReplacesHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "fromTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1276
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Replaces;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Replaces;-><init>()V

    #@5
    .line 1277
    .local v0, "replaces":Lgov/nist/javax/sip/header/extensions/Replaces;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setCallId(Ljava/lang/String;)V

    #@8
    .line 1278
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Replaces;->setFromTag(Ljava/lang/String;)V

    #@b
    .line 1279
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Replaces;->setToTag(Ljava/lang/String;)V

    #@e
    .line 1281
    return-object v0
.end method

.method public createReplyToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReplyToHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 842
    if-nez p1, :cond_0

    #@2
    .line 843
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 844
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    #@10
    .line 845
    .local v0, "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReplyTo;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 847
    return-object v0
.end method

.method public createRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipRequestLine;
    .locals 2
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1658
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    #@5
    .line 1659
    .local v0, "requestLineParser":Lgov/nist/javax/sip/parser/RequestLineParser;
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public createRequireHeader(Ljava/lang/String;)Ljavax/sip/header/RequireHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 861
    if-nez p1, :cond_0

    #@2
    .line 862
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null optionTag"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 863
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Require;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Require;-><init>()V

    #@10
    .line 864
    .local v0, "require":Lgov/nist/javax/sip/header/Require;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    #@13
    .line 866
    return-object v0
.end method

.method public createRetryAfterHeader(I)Ljavax/sip/header/RetryAfterHeader;
    .locals 3
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 880
    if-gez p1, :cond_0

    #@2
    .line 881
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@4
    const-string/jumbo v2, "bad retryAfter arg"

    #@7
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 882
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/RetryAfter;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    #@10
    .line 883
    .local v0, "r":Lgov/nist/javax/sip/header/RetryAfter;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    #@13
    .line 885
    return-object v0
.end method

.method public createRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 895
    if-nez p1, :cond_0

    #@2
    .line 896
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 897
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Route;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Route;-><init>()V

    #@10
    .line 898
    .local v0, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 900
    return-object v0
.end method

.method public createSIPETagHeader(Ljava/lang/String;)Ljavax/sip/header/SIPETagHeader;
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1305
    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPETag;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public createSIPIfMatchHeader(Ljava/lang/String;)Ljavax/sip/header/SIPIfMatchHeader;
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1313
    new-instance v0, Lgov/nist/javax/sip/header/SIPIfMatch;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public createSecurityClientHeader()Lgov/nist/javax/sip/header/ims/SecurityClientHeader;
    .locals 1

    #@0
    .prologue
    .line 1554
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    #@5
    .line 1555
    .local v0, "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    return-object v0
.end method

.method public createSecurityServerHeader()Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
    .locals 1

    #@0
    .prologue
    .line 1544
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServer;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    #@5
    .line 1545
    .local v0, "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    return-object v0
.end method

.method public createSecurityVerifyHeader()Lgov/nist/javax/sip/header/ims/SecurityVerifyHeader;
    .locals 1

    #@0
    .prologue
    .line 1564
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    #@5
    .line 1565
    .local v0, "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    return-object v0
.end method

.method public createServerHeader(Ljava/util/List;)Ljavax/sip/header/ServerHeader;
    .locals 3
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 913
    if-nez p1, :cond_0

    #@2
    .line 914
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null productList arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 915
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Server;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Server;-><init>()V

    #@10
    .line 916
    .local v0, "server":Lgov/nist/javax/sip/header/Server;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Server;->setProduct(Ljava/util/List;)V

    #@13
    .line 918
    return-object v0
.end method

.method public createServiceRouteHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/ServiceRouteHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;

    #@0
    .prologue
    .line 1528
    if-nez p1, :cond_0

    #@2
    .line 1529
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address!"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1531
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    #@10
    .line 1532
    .local v0, "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/ServiceRoute;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1534
    return-object v0
.end method

.method public createSessionExpiresHeader(I)Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
    .locals 4
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1643
    if-gez p1, :cond_0

    #@2
    .line 1644
    new-instance v1, Ljavax/sip/InvalidArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "bad value "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 1645
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    #@1e
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/SessionExpires;-><init>()V

    #@21
    .line 1646
    .local v0, "s":Lgov/nist/javax/sip/header/extensions/SessionExpires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->setExpires(I)V

    #@24
    .line 1648
    return-object v0
.end method

.method public createStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipStatusLine;
    .locals 2
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1666
    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    #@2
    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    #@5
    .line 1667
    .local v0, "statusLineParser":Lgov/nist/javax/sip/parser/StatusLineParser;
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public createSubjectHeader(Ljava/lang/String;)Ljavax/sip/header/SubjectHeader;
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 931
    if-nez p1, :cond_0

    #@2
    .line 932
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null subject arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 933
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Subject;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    #@10
    .line 934
    .local v0, "s":Lgov/nist/javax/sip/header/Subject;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V

    #@13
    .line 936
    return-object v0
.end method

.method public createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;
    .locals 3
    .param p1, "subscriptionState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 951
    if-nez p1, :cond_0

    #@2
    .line 952
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null subscriptionState arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 953
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/SubscriptionState;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    #@10
    .line 954
    .local v0, "s":Lgov/nist/javax/sip/header/SubscriptionState;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    #@13
    .line 956
    return-object v0
.end method

.method public createSupportedHeader(Ljava/lang/String;)Ljavax/sip/header/SupportedHeader;
    .locals 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 970
    if-nez p1, :cond_0

    #@2
    .line 971
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null optionTag arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 972
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    #@10
    .line 973
    .local v0, "supported":Lgov/nist/javax/sip/header/Supported;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    #@13
    .line 975
    return-object v0
.end method

.method public createTimeStampHeader(F)Ljavax/sip/header/TimeStampHeader;
    .locals 3
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 988
    const/4 v1, 0x0

    #@1
    cmpg-float v1, p1, v1

    #@3
    if-gez v1, :cond_0

    #@5
    .line 989
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v2, "illegal timeStamp"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 990
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    #@10
    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    #@13
    .line 991
    .local v0, "t":Lgov/nist/javax/sip/header/TimeStamp;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    #@16
    .line 993
    return-object v0
.end method

.method public createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .locals 3
    .param p1, "address"    # Ljavax/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1008
    if-nez p1, :cond_0

    #@2
    .line 1009
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null address"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1010
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/To;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/To;-><init>()V

    #@10
    .line 1011
    .local v0, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    #@13
    .line 1012
    if-eqz p2, :cond_1

    #@15
    .line 1013
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    #@18
    .line 1015
    :cond_1
    return-object v0
.end method

.method public createUnsupportedHeader(Ljava/lang/String;)Ljavax/sip/header/UnsupportedHeader;
    .locals 2
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1029
    if-nez p1, :cond_0

    #@2
    .line 1030
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@7
    throw v1

    #@8
    .line 1031
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Unsupported;

    #@a
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    #@d
    .line 1032
    .local v0, "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    #@10
    .line 1034
    return-object v0
.end method

.method public createUserAgentHeader(Ljava/util/List;)Ljavax/sip/header/UserAgentHeader;
    .locals 3
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1048
    if-nez p1, :cond_0

    #@2
    .line 1049
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null user agent"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1050
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    #@10
    .line 1051
    .local v0, "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/UserAgent;->setProduct(Ljava/util/List;)V

    #@13
    .line 1053
    return-object v0
.end method

.method public createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "branch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x5b

    #@2
    const/4 v3, 0x0

    #@3
    .line 1074
    if-eqz p1, :cond_0

    #@5
    if-nez p3, :cond_1

    #@7
    .line 1075
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v3, "null arg"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 1076
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    #@12
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    #@15
    .line 1077
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    if-eqz p4, :cond_2

    #@17
    .line 1078
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    #@1a
    .line 1081
    :cond_2
    const/16 v2, 0x3a

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@1f
    move-result v2

    #@20
    if-ltz v2, :cond_4

    #@22
    .line 1082
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    #@25
    move-result v2

    #@26
    if-gez v2, :cond_4

    #@28
    .line 1085
    iget-boolean v2, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    #@2a
    if-eqz v2, :cond_3

    #@2c
    .line 1087
    const/16 v2, 0x25

    #@2e
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v1

    #@32
    .line 1088
    .local v1, "zoneStart":I
    const/4 v2, -0x1

    #@33
    if-eq v1, v2, :cond_3

    #@35
    .line 1089
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object p1

    #@39
    .line 1091
    .end local v1    # "zoneStart":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const/16 v3, 0x5d

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object p1

    #@50
    .line 1094
    :cond_4
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Via;->setHost(Ljava/lang/String;)V

    #@53
    .line 1095
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    #@56
    .line 1096
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    #@59
    .line 1098
    return-object v0
.end method

.method public createWWWAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/WWWAuthenticateHeader;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 1112
    if-nez p1, :cond_0

    #@2
    .line 1113
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null scheme"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1114
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    #@10
    .line 1115
    .local v0, "www":Lgov/nist/javax/sip/header/WWWAuthenticate;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->setScheme(Ljava/lang/String;)V

    #@13
    .line 1117
    return-object v0
.end method

.method public createWarningHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/WarningHeader;
    .locals 3
    .param p1, "agent"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 1138
    if-nez p1, :cond_0

    #@2
    .line 1139
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "null arg"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 1140
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/Warning;

    #@d
    invoke-direct {v0}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    #@10
    .line 1141
    .local v0, "warning":Lgov/nist/javax/sip/header/Warning;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    #@13
    .line 1142
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V

    #@16
    .line 1143
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    #@19
    .line 1145
    return-object v0
.end method

.method public setPrettyEncoding(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 75
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->setPrettyEncode(Z)V

    #@3
    .line 74
    return-void
.end method
