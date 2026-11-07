.class public Lgov/nist/javax/sip/header/HeaderFactoryImpl;
.super Ljava/lang/Object;
.source "HeaderFactoryImpl.java"

# interfaces
.implements Ljavax/sip/header/HeaderFactory;
.implements Lgov/nist/javax/sip/header/HeaderFactoryExt;


# instance fields
.field private greylist stripAddressScopeZones:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    .line 1698
    nop

    .line 1699
    const-string v0, "gov.nist.core.STRIP_ADDR_SCOPES"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    .line 1700
    return-void
.end method


# virtual methods
.method public greylist createAcceptEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/AcceptEncodingHeader;
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 89
    if-eqz p1, :cond_b

    .line 91
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncoding;-><init>()V

    .line 92
    .local v0, "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptEncoding;->setEncoding(Ljava/lang/String;)V

    .line 93
    return-object v0

    .line 90
    .end local v0    # "acceptEncoding":Lgov/nist/javax/sip/header/AcceptEncoding;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the encoding parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;
    .registers 5
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 110
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 112
    new-instance v0, Lgov/nist/javax/sip/header/Accept;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Accept;-><init>()V

    .line 113
    .local v0, "accept":Lgov/nist/javax/sip/header/Accept;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Accept;->setContentType(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Accept;->setContentSubType(Ljava/lang/String;)V

    .line 116
    return-object v0

    .line 111
    .end local v0    # "accept":Lgov/nist/javax/sip/header/Accept;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentType or subtype is null "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAcceptLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/AcceptLanguageHeader;
    .registers 4
    .param p1, "language"    # Ljava/util/Locale;

    .line 127
    if-eqz p1, :cond_b

    .line 129
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    .line 130
    .local v0, "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AcceptLanguage;->setAcceptLanguage(Ljava/util/Locale;)V

    .line 132
    return-object v0

    .line 128
    .end local v0    # "acceptLanguage":Lgov/nist/javax/sip/header/AcceptLanguage;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAlertInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/AlertInfoHeader;
    .registers 4
    .param p1, "alertInfo"    # Ljavax/sip/address/URI;

    .line 143
    if-eqz p1, :cond_b

    .line 145
    new-instance v0, Lgov/nist/javax/sip/header/AlertInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AlertInfo;-><init>()V

    .line 146
    .local v0, "a":Lgov/nist/javax/sip/header/AlertInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AlertInfo;->setAlertInfo(Ljavax/sip/address/URI;)V

    .line 147
    return-object v0

    .line 144
    .end local v0    # "a":Lgov/nist/javax/sip/header/AlertInfo;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg alertInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAllowEventsHeader(Ljava/lang/String;)Ljavax/sip/header/AllowEventsHeader;
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 162
    if-eqz p1, :cond_b

    .line 164
    new-instance v0, Lgov/nist/javax/sip/header/AllowEvents;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AllowEvents;-><init>()V

    .line 165
    .local v0, "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AllowEvents;->setEventType(Ljava/lang/String;)V

    .line 166
    return-object v0

    .line 163
    .end local v0    # "allowEvents":Lgov/nist/javax/sip/header/AllowEvents;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg eventType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAllowHeader(Ljava/lang/String;)Ljavax/sip/header/AllowHeader;
    .registers 4
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 178
    if-eqz p1, :cond_b

    .line 180
    new-instance v0, Lgov/nist/javax/sip/header/Allow;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Allow;-><init>()V

    .line 181
    .local v0, "allow":Lgov/nist/javax/sip/header/Allow;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Allow;->setMethod(Ljava/lang/String;)V

    .line 183
    return-object v0

    .line 179
    .end local v0    # "allow":Lgov/nist/javax/sip/header/Allow;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAuthenticationInfoHeader(Ljava/lang/String;)Ljavax/sip/header/AuthenticationInfoHeader;
    .registers 4
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 198
    if-eqz p1, :cond_b

    .line 200
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfo;-><init>()V

    .line 201
    .local v0, "auth":Lgov/nist/javax/sip/header/AuthenticationInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/AuthenticationInfo;->setResponse(Ljava/lang/String;)V

    .line 203
    return-object v0

    .line 199
    .end local v0    # "auth":Lgov/nist/javax/sip/header/AuthenticationInfo;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg response"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 217
    if-eqz p1, :cond_b

    .line 219
    new-instance v0, Lgov/nist/javax/sip/header/Authorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Authorization;-><init>()V

    .line 220
    .local v0, "auth":Lgov/nist/javax/sip/header/Authorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Authorization;->setScheme(Ljava/lang/String;)V

    .line 222
    return-object v0

    .line 218
    .end local v0    # "auth":Lgov/nist/javax/sip/header/Authorization;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg scheme "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createCSeqHeader(ILjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .registers 5
    .param p1, "sequenceNumber"    # I
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 256
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    return-object v0
.end method

.method public greylist createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .registers 7
    .param p1, "sequenceNumber"    # J
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    .line 241
    if-eqz p3, :cond_14

    .line 243
    new-instance v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    .line 244
    .local v0, "cseq":Lgov/nist/javax/sip/header/CSeq;
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V

    .line 247
    return-object v0

    .line 242
    .end local v0    # "cseq":Lgov/nist/javax/sip/header/CSeq;
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1c
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 269
    if-eqz p1, :cond_b

    .line 271
    new-instance v0, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 272
    .local v0, "c":Lgov/nist/javax/sip/header/CallID;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V

    .line 273
    return-object v0

    .line 270
    .end local v0    # "c":Lgov/nist/javax/sip/header/CallID;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg callId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;
    .registers 4
    .param p1, "callInfo"    # Ljavax/sip/address/URI;

    .line 283
    if-eqz p1, :cond_b

    .line 286
    new-instance v0, Lgov/nist/javax/sip/header/CallInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfo;-><init>()V

    .line 287
    .local v0, "c":Lgov/nist/javax/sip/header/CallInfo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/CallInfo;->setInfo(Ljavax/sip/address/URI;)V

    .line 288
    return-object v0

    .line 284
    .end local v0    # "c":Lgov/nist/javax/sip/header/CallInfo;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg callInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createChargingVectorHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
    .registers 4
    .param p1, "icid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1419
    if-eqz p1, :cond_b

    .line 1422
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingVector;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingVector;-><init>()V

    .line 1423
    .local v0, "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PChargingVector;->setICID(Ljava/lang/String;)V

    .line 1425
    return-object v0

    .line 1420
    .end local v0    # "chargingVector":Lgov/nist/javax/sip/header/ims/PChargingVector;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null icid arg!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createContactHeader()Ljavax/sip/header/ContactHeader;
    .registers 3

    .line 320
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 321
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setWildCardFlag(Z)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/Contact;->setExpires(I)V

    .line 324
    return-object v0
.end method

.method public greylist createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 298
    if-eqz p1, :cond_b

    .line 300
    new-instance v0, Lgov/nist/javax/sip/header/Contact;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Contact;-><init>()V

    .line 301
    .local v0, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Contact;->setAddress(Ljavax/sip/address/Address;)V

    .line 303
    return-object v0

    .line 299
    .end local v0    # "contact":Lgov/nist/javax/sip/header/Contact;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createContentDispositionHeader(Ljava/lang/String;)Ljavax/sip/header/ContentDispositionHeader;
    .registers 4
    .param p1, "contentDisposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 339
    if-eqz p1, :cond_b

    .line 341
    new-instance v0, Lgov/nist/javax/sip/header/ContentDisposition;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentDisposition;-><init>()V

    .line 342
    .local v0, "c":Lgov/nist/javax/sip/header/ContentDisposition;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentDisposition;->setDispositionType(Ljava/lang/String;)V

    .line 344
    return-object v0

    .line 340
    .end local v0    # "c":Lgov/nist/javax/sip/header/ContentDisposition;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg contentDisposition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createContentEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/ContentEncodingHeader;
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 358
    if-eqz p1, :cond_b

    .line 360
    new-instance v0, Lgov/nist/javax/sip/header/ContentEncoding;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentEncoding;-><init>()V

    .line 361
    .local v0, "c":Lgov/nist/javax/sip/header/ContentEncoding;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentEncoding;->setEncoding(Ljava/lang/String;)V

    .line 363
    return-object v0

    .line 359
    .end local v0    # "c":Lgov/nist/javax/sip/header/ContentEncoding;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createContentLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/ContentLanguageHeader;
    .registers 4
    .param p1, "contentLanguage"    # Ljava/util/Locale;

    .line 375
    if-eqz p1, :cond_b

    .line 377
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguage;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLanguage;-><init>()V

    .line 378
    .local v0, "c":Lgov/nist/javax/sip/header/ContentLanguage;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setContentLanguage(Ljava/util/Locale;)V

    .line 380
    return-object v0

    .line 376
    .end local v0    # "c":Lgov/nist/javax/sip/header/ContentLanguage;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg contentLanguage"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createContentLengthHeader(I)Ljavax/sip/header/ContentLengthHeader;
    .registers 4
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 393
    if-ltz p1, :cond_b

    .line 395
    new-instance v0, Lgov/nist/javax/sip/header/ContentLength;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLength;-><init>()V

    .line 396
    .local v0, "c":Lgov/nist/javax/sip/header/ContentLength;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentLength;->setContentLength(I)V

    .line 398
    return-object v0

    .line 394
    .end local v0    # "c":Lgov/nist/javax/sip/header/ContentLength;
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad contentLength"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;
    .registers 5
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 415
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 417
    new-instance v0, Lgov/nist/javax/sip/header/ContentType;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentType;-><init>()V

    .line 418
    .local v0, "c":Lgov/nist/javax/sip/header/ContentType;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ContentType;->setContentType(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ContentType;->setContentSubType(Ljava/lang/String;)V

    .line 420
    return-object v0

    .line 416
    .end local v0    # "c":Lgov/nist/javax/sip/header/ContentType;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null contentType or subType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createDateHeader(Ljava/util/Calendar;)Ljavax/sip/header/DateHeader;
    .registers 5
    .param p1, "date"    # Ljava/util/Calendar;

    .line 430
    new-instance v0, Lgov/nist/javax/sip/header/SIPDateHeader;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SIPDateHeader;-><init>()V

    .line 431
    .local v0, "d":Lgov/nist/javax/sip/header/SIPDateHeader;
    if-eqz p1, :cond_b

    .line 433
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V

    .line 435
    return-object v0

    .line 432
    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null date"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist createErrorInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/ErrorInfoHeader;
    .registers 4
    .param p1, "errorInfo"    # Ljavax/sip/address/URI;

    .line 1155
    if-eqz p1, :cond_b

    .line 1157
    new-instance v0, Lgov/nist/javax/sip/header/ErrorInfo;

    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/address/GenericURI;

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ErrorInfo;-><init>(Lgov/nist/javax/sip/address/GenericURI;)V

    return-object v0

    .line 1156
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;
    .registers 4
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 449
    if-eqz p1, :cond_b

    .line 451
    new-instance v0, Lgov/nist/javax/sip/header/Event;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Event;-><init>()V

    .line 452
    .local v0, "event":Lgov/nist/javax/sip/header/Event;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Event;->setEventType(Ljava/lang/String;)V

    .line 454
    return-object v0

    .line 450
    .end local v0    # "event":Lgov/nist/javax/sip/header/Event;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null eventType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;
    .registers 5
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 467
    if-ltz p1, :cond_b

    .line 469
    new-instance v0, Lgov/nist/javax/sip/header/Expires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Expires;-><init>()V

    .line 470
    .local v0, "e":Lgov/nist/javax/sip/header/Expires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Expires;->setExpires(I)V

    .line 472
    return-object v0

    .line 468
    .end local v0    # "e":Lgov/nist/javax/sip/header/Expires;
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createExtensionHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ExtensionHeader;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 489
    if-eqz p1, :cond_e

    .line 492
    new-instance v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;-><init>()V

    .line 494
    .local v0, "ext":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setName(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->setValue(Ljava/lang/String;)V

    .line 497
    return-object v0

    .line 490
    .end local v0    # "ext":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .registers 5
    .param p1, "address"    # Ljavax/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 512
    if-eqz p1, :cond_10

    .line 514
    new-instance v0, Lgov/nist/javax/sip/header/From;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/From;-><init>()V

    .line 515
    .local v0, "from":Lgov/nist/javax/sip/header/From;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    .line 516
    if-eqz p2, :cond_f

    .line 517
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    .line 519
    :cond_f
    return-object v0

    .line 513
    .end local v0    # "from":Lgov/nist/javax/sip/header/From;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .registers 7
    .param p1, "headerText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1166
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 1167
    .local v0, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    .line 1168
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_5f

    .line 1169
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_45

    .line 1173
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->size()I

    move-result v2

    if-nez v2, :cond_3d

    .line 1175
    const/4 v2, 0x0

    :try_start_25
    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 1176
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->getMyClass()Ljava/lang/Class;

    move-result-object v3

    .line 1177
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/Header;
    :try_end_32
    .catch Ljava/lang/InstantiationException; {:try_start_25 .. :try_end_32} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_32} :catch_33

    .line 1175
    return-object v3

    .line 1181
    :catch_33
    move-exception v3

    .line 1182
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 1183
    return-object v2

    .line 1178
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_38
    move-exception v3

    .line 1179
    .local v3, "ex":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 1180
    return-object v2

    .line 1186
    .end local v3    # "ex":Ljava/lang/InstantiationException;
    :cond_3d
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    return-object v2

    .line 1170
    :cond_45
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only singleton allowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1189
    :cond_5f
    return-object v1
.end method

.method public greylist createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .registers 5
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1205
    if-eqz p1, :cond_1e

    .line 1207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1210
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "hdrText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    return-object v1

    .line 1206
    .end local v0    # "hdrText":Ljava/lang/String;
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "header name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createHeaders(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1225
    if-eqz p1, :cond_1c

    .line 1227
    new-instance v0, Lgov/nist/javax/sip/parser/StringMsgParser;

    invoke-direct {v0}, Lgov/nist/javax/sip/parser/StringMsgParser;-><init>()V

    .line 1228
    .local v0, "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/parser/StringMsgParser;->parseSIPHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    .line 1229
    .local v1, "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    instance-of v2, v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    if-eqz v2, :cond_13

    .line 1230
    move-object v2, v1

    check-cast v2, Lgov/nist/javax/sip/header/SIPHeaderList;

    return-object v2

    .line 1232
    :cond_13
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "List of headers of this type is not allowed in a message"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1226
    .end local v0    # "smp":Lgov/nist/javax/sip/parser/StringMsgParser;
    .end local v1    # "shdr":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    if-eqz p1, :cond_b

    .line 536
    new-instance v0, Lgov/nist/javax/sip/header/InReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/InReplyTo;-><init>()V

    .line 537
    .local v0, "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/InReplyTo;->setCallId(Ljava/lang/String;)V

    .line 539
    return-object v0

    .line 535
    .end local v0    # "inReplyTo":Lgov/nist/javax/sip/header/InReplyTo;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null callId arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createJoinHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/JoinHeader;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "fromTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1291
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Join;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Join;-><init>()V

    .line 1292
    .local v0, "join":Lgov/nist/javax/sip/header/extensions/Join;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Join;->setCallId(Ljava/lang/String;)V

    .line 1293
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Join;->setFromTag(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Join;->setToTag(Ljava/lang/String;)V

    .line 1296
    return-object v0
.end method

.method public greylist createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .registers 5
    .param p1, "maxForwards"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 552
    if-ltz p1, :cond_f

    const/16 v0, 0xff

    if-gt p1, v0, :cond_f

    .line 555
    new-instance v0, Lgov/nist/javax/sip/header/MaxForwards;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MaxForwards;-><init>()V

    .line 556
    .local v0, "m":Lgov/nist/javax/sip/header/MaxForwards;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MaxForwards;->setMaxForwards(I)V

    .line 558
    return-object v0

    .line 553
    .end local v0    # "m":Lgov/nist/javax/sip/header/MaxForwards;
    :cond_f
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad maxForwards arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createMimeVersionHeader(II)Ljavax/sip/header/MimeVersionHeader;
    .registers 5
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 576
    if-ltz p1, :cond_10

    if-ltz p2, :cond_10

    .line 579
    new-instance v0, Lgov/nist/javax/sip/header/MimeVersion;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MimeVersion;-><init>()V

    .line 580
    .local v0, "m":Lgov/nist/javax/sip/header/MimeVersion;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MimeVersion;->setMajorVersion(I)V

    .line 581
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/MimeVersion;->setMinorVersion(I)V

    .line 583
    return-object v0

    .line 577
    .end local v0    # "m":Lgov/nist/javax/sip/header/MimeVersion;
    :cond_10
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad major/minor version"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createMinExpiresHeader(I)Ljavax/sip/header/MinExpiresHeader;
    .registers 5
    .param p1, "minExpires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 597
    if-ltz p1, :cond_b

    .line 599
    new-instance v0, Lgov/nist/javax/sip/header/MinExpires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/MinExpires;-><init>()V

    .line 600
    .local v0, "min":Lgov/nist/javax/sip/header/MinExpires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/MinExpires;->setExpires(I)V

    .line 602
    return-object v0

    .line 598
    .end local v0    # "min":Lgov/nist/javax/sip/header/MinExpires;
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad minExpires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createMinSEHeader(I)Ljavax/sip/header/ExtensionHeader;
    .registers 5
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 620
    if-ltz p1, :cond_b

    .line 622
    new-instance v0, Lgov/nist/javax/sip/header/extensions/MinSE;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/MinSE;-><init>()V

    .line 623
    .local v0, "e":Lgov/nist/javax/sip/header/extensions/MinSE;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/MinSE;->setExpires(I)V

    .line 625
    return-object v0

    .line 621
    .end local v0    # "e":Lgov/nist/javax/sip/header/extensions/MinSE;
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createOrganizationHeader(Ljava/lang/String;)Ljavax/sip/header/OrganizationHeader;
    .registers 4
    .param p1, "organization"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 639
    if-eqz p1, :cond_b

    .line 641
    new-instance v0, Lgov/nist/javax/sip/header/Organization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Organization;-><init>()V

    .line 642
    .local v0, "o":Lgov/nist/javax/sip/header/Organization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Organization;->setOrganization(Ljava/lang/String;)V

    .line 644
    return-object v0

    .line 640
    .end local v0    # "o":Lgov/nist/javax/sip/header/Organization;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad organization arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPAccessNetworkInfoHeader()Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
    .registers 2

    .line 1328
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;-><init>()V

    .line 1330
    .local v0, "accessNetworkInfo":Lgov/nist/javax/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method public greylist createPAssertedIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1344
    if-eqz p1, :cond_b

    .line 1347
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;-><init>()V

    .line 1348
    .local v0, "assertedIdentity":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;->setAddress(Ljavax/sip/address/Address;)V

    .line 1350
    return-object v0

    .line 1345
    .end local v0    # "assertedIdentity":Lgov/nist/javax/sip/header/ims/PAssertedIdentity;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPAssertedServiceHeader()Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
    .registers 2

    .line 1628
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedService;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedService;-><init>()V

    .line 1629
    .local v0, "pas":Lgov/nist/javax/sip/header/ims/PAssertedService;
    return-object v0
.end method

.method public greylist createPAssociatedURIHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
    .registers 4
    .param p1, "assocURI"    # Ljavax/sip/address/Address;

    .line 1365
    if-eqz p1, :cond_b

    .line 1368
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;-><init>()V

    .line 1369
    .local v0, "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PAssociatedURI;->setAddress(Ljavax/sip/address/Address;)V

    .line 1371
    return-object v0

    .line 1366
    .end local v0    # "associatedURI":Lgov/nist/javax/sip/header/ims/PAssociatedURI;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null associatedURI!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPCalledPartyIDHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PCalledPartyIDHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1386
    if-eqz p1, :cond_b

    .line 1389
    new-instance v0, Lgov/nist/javax/sip/header/ims/PCalledPartyID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;-><init>()V

    .line 1390
    .local v0, "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PCalledPartyID;->setAddress(Ljavax/sip/address/Address;)V

    .line 1392
    return-object v0

    .line 1387
    .end local v0    # "calledPartyID":Lgov/nist/javax/sip/header/ims/PCalledPartyID;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPChargingFunctionAddressesHeader()Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
    .registers 2

    .line 1403
    new-instance v0, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;-><init>()V

    .line 1405
    .local v0, "cfa":Lgov/nist/javax/sip/header/ims/PChargingFunctionAddresses;
    return-object v0
.end method

.method public greylist createPMediaAuthorizationHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    .registers 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1440
    if-eqz p1, :cond_f

    const-string v0, ""

    if-eq p1, v0, :cond_f

    .line 1444
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;-><init>()V

    .line 1445
    .local v0, "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;->setMediaAuthorizationToken(Ljava/lang/String;)V

    .line 1447
    return-object v0

    .line 1441
    .end local v0    # "mediaAuthorization":Lgov/nist/javax/sip/header/ims/PMediaAuthorization;
    :cond_f
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "The Media-Authorization-Token parameter is null or empty"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPPreferredIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1459
    if-eqz p1, :cond_b

    .line 1462
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;-><init>()V

    .line 1463
    .local v0, "preferredIdentity":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PPreferredIdentity;->setAddress(Ljavax/sip/address/Address;)V

    .line 1465
    return-object v0

    .line 1460
    .end local v0    # "preferredIdentity":Lgov/nist/javax/sip/header/ims/PPreferredIdentity;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPPreferredServiceHeader()Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
    .registers 2

    .line 1618
    new-instance v0, Lgov/nist/javax/sip/header/ims/PPreferredService;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PPreferredService;-><init>()V

    .line 1619
    .local v0, "pps":Lgov/nist/javax/sip/header/ims/PPreferredService;
    return-object v0
.end method

.method public greylist createPProfileKeyHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PProfileKeyHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1592
    if-eqz p1, :cond_b

    .line 1594
    new-instance v0, Lgov/nist/javax/sip/header/ims/PProfileKey;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PProfileKey;-><init>()V

    .line 1595
    .local v0, "pProfileKey":Lgov/nist/javax/sip/header/ims/PProfileKey;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PProfileKey;->setAddress(Ljavax/sip/address/Address;)V

    .line 1597
    return-object v0

    .line 1593
    .end local v0    # "pProfileKey":Lgov/nist/javax/sip/header/ims/PProfileKey;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Address is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPServedUserHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PServedUserHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1606
    if-eqz p1, :cond_b

    .line 1608
    new-instance v0, Lgov/nist/javax/sip/header/ims/PServedUser;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PServedUser;-><init>()V

    .line 1609
    .local v0, "psu":Lgov/nist/javax/sip/header/ims/PServedUser;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PServedUser;->setAddress(Ljavax/sip/address/Address;)V

    .line 1611
    return-object v0

    .line 1607
    .end local v0    # "psu":Lgov/nist/javax/sip/header/ims/PServedUser;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Address is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPUserDatabaseHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
    .registers 4
    .param p1, "databaseName"    # Ljava/lang/String;

    .line 1575
    if-eqz p1, :cond_13

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1578
    new-instance v0, Lgov/nist/javax/sip/header/ims/PUserDatabase;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PUserDatabase;-><init>()V

    .line 1579
    .local v0, "pUserDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/PUserDatabase;->setDatabaseName(Ljava/lang/String;)V

    .line 1581
    return-object v0

    .line 1576
    .end local v0    # "pUserDatabase":Lgov/nist/javax/sip/header/ims/PUserDatabase;
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPVisitedNetworkIDHeader()Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
    .registers 2

    .line 1475
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;-><init>()V

    .line 1477
    .local v0, "visitedNetworkID":Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;
    return-object v0
.end method

.method public greylist createPathHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PathHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1491
    if-eqz p1, :cond_b

    .line 1495
    new-instance v0, Lgov/nist/javax/sip/header/ims/Path;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/Path;-><init>()V

    .line 1496
    .local v0, "path":Lgov/nist/javax/sip/header/ims/Path;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/Path;->setAddress(Ljavax/sip/address/Address;)V

    .line 1498
    return-object v0

    .line 1492
    .end local v0    # "path":Lgov/nist/javax/sip/header/ims/Path;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPriorityHeader(Ljava/lang/String;)Ljavax/sip/header/PriorityHeader;
    .registers 4
    .param p1, "priority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 657
    if-eqz p1, :cond_b

    .line 659
    new-instance v0, Lgov/nist/javax/sip/header/Priority;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Priority;-><init>()V

    .line 660
    .local v0, "p":Lgov/nist/javax/sip/header/Priority;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Priority;->setPriority(Ljava/lang/String;)V

    .line 662
    return-object v0

    .line 658
    .end local v0    # "p":Lgov/nist/javax/sip/header/Priority;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad priority arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createPrivacyHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PrivacyHeader;
    .registers 4
    .param p1, "privacyType"    # Ljava/lang/String;

    .line 1510
    if-eqz p1, :cond_8

    .line 1513
    new-instance v0, Lgov/nist/javax/sip/header/ims/Privacy;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/ims/Privacy;-><init>(Ljava/lang/String;)V

    .line 1515
    .local v0, "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    return-object v0

    .line 1511
    .end local v0    # "privacy":Lgov/nist/javax/sip/header/ims/Privacy;
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null privacyType arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createProxyAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthenticateHeader;
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 676
    if-eqz p1, :cond_b

    .line 678
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticate;-><init>()V

    .line 679
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthenticate;->setScheme(Ljava/lang/String;)V

    .line 681
    return-object v0

    .line 677
    .end local v0    # "p":Lgov/nist/javax/sip/header/ProxyAuthenticate;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad scheme arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 695
    if-eqz p1, :cond_b

    .line 697
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthorization;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthorization;-><init>()V

    .line 698
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyAuthorization;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyAuthorization;->setScheme(Ljava/lang/String;)V

    .line 700
    return-object v0

    .line 696
    .end local v0    # "p":Lgov/nist/javax/sip/header/ProxyAuthorization;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad scheme arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createProxyRequireHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyRequireHeader;
    .registers 4
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 714
    if-eqz p1, :cond_b

    .line 716
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequire;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequire;-><init>()V

    .line 717
    .local v0, "p":Lgov/nist/javax/sip/header/ProxyRequire;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ProxyRequire;->setOptionTag(Ljava/lang/String;)V

    .line 719
    return-object v0

    .line 715
    .end local v0    # "p":Lgov/nist/javax/sip/header/ProxyRequire;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad optionTag arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRAckHeader(IILjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .registers 10
    .param p1, "rSeqNumber"    # I
    .param p2, "cSeqNumber"    # I
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 759
    int-to-long v1, p1

    int-to-long v3, p2

    move-object v0, p0

    move-object v5, p3

    .end local p3    # "method":Ljava/lang/String;
    .local v5, "method":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;

    move-result-object p3

    return-object p3
.end method

.method public greylist createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .registers 9
    .param p1, "rSeqNumber"    # J
    .param p3, "cSeqNumber"    # J
    .param p5, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 741
    if-eqz p5, :cond_23

    .line 743
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1b

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1b

    .line 745
    new-instance v0, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    .line 746
    .local v0, "rack":Lgov/nist/javax/sip/header/RAck;
    invoke-virtual {v0, p5}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, p3, p4}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 748
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 750
    return-object v0

    .line 744
    .end local v0    # "rack":Lgov/nist/javax/sip/header/RAck;
    :cond_1b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad cseq/rseq arg"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bad method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRSeqHeader(I)Ljavax/sip/header/RSeqHeader;
    .registers 4
    .param p1, "sequenceNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 769
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;

    move-result-object v0

    return-object v0
.end method

.method public greylist createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;
    .registers 6
    .param p1, "sequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 783
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    .line 786
    new-instance v0, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    .line 787
    .local v0, "rseq":Lgov/nist/javax/sip/header/RSeq;
    invoke-virtual {v0, p1, p2}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    .line 789
    return-object v0

    .line 784
    .end local v0    # "rseq":Lgov/nist/javax/sip/header/RSeq;
    :cond_f
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sequenceNumber arg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/ReasonHeader;
    .registers 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "cause"    # I
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 808
    if-eqz p1, :cond_1b

    .line 810
    if-ltz p2, :cond_13

    .line 812
    new-instance v0, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    .line 813
    .local v0, "reason":Lgov/nist/javax/sip/header/Reason;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Reason;->setProtocol(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Reason;->setCause(I)V

    .line 815
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Reason;->setText(Ljava/lang/String;)V

    .line 817
    return-object v0

    .line 811
    .end local v0    # "reason":Lgov/nist/javax/sip/header/Reason;
    :cond_13
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad cause"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad protocol arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRecordRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RecordRouteHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 827
    if-eqz p1, :cond_b

    .line 828
    new-instance v0, Lgov/nist/javax/sip/header/RecordRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RecordRoute;-><init>()V

    .line 829
    .local v0, "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RecordRoute;->setAddress(Ljavax/sip/address/Address;)V

    .line 831
    return-object v0

    .line 827
    .end local v0    # "recordRoute":Lgov/nist/javax/sip/header/RecordRoute;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null argument!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createReferToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReferToHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1241
    if-eqz p1, :cond_b

    .line 1243
    new-instance v0, Lgov/nist/javax/sip/header/ReferTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReferTo;-><init>()V

    .line 1244
    .local v0, "referTo":Lgov/nist/javax/sip/header/ReferTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReferTo;->setAddress(Ljavax/sip/address/Address;)V

    .line 1245
    return-object v0

    .line 1242
    .end local v0    # "referTo":Lgov/nist/javax/sip/header/ReferTo;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createReferencesHeader(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1682
    new-instance v0, Lgov/nist/javax/sip/header/extensions/References;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/References;-><init>()V

    .line 1683
    .local v0, "retval":Lgov/nist/javax/sip/header/extensions/ReferencesHeader;
    invoke-interface {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setCallId(Ljava/lang/String;)V

    .line 1684
    invoke-interface {v0, p2}, Lgov/nist/javax/sip/header/extensions/ReferencesHeader;->setRel(Ljava/lang/String;)V

    .line 1685
    return-object v0
.end method

.method public greylist createReferredByHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1259
    if-eqz p1, :cond_b

    .line 1261
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    .line 1262
    .local v0, "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->setAddress(Ljavax/sip/address/Address;)V

    .line 1263
    return-object v0

    .line 1260
    .end local v0    # "referredBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createReplacesHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "toTag"    # Ljava/lang/String;
    .param p3, "fromTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1276
    new-instance v0, Lgov/nist/javax/sip/header/extensions/Replaces;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/Replaces;-><init>()V

    .line 1277
    .local v0, "replaces":Lgov/nist/javax/sip/header/extensions/Replaces;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/Replaces;->setCallId(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/extensions/Replaces;->setFromTag(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/extensions/Replaces;->setToTag(Ljava/lang/String;)V

    .line 1281
    return-object v0
.end method

.method public greylist createReplyToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReplyToHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 842
    if-eqz p1, :cond_b

    .line 844
    new-instance v0, Lgov/nist/javax/sip/header/ReplyTo;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ReplyTo;-><init>()V

    .line 845
    .local v0, "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ReplyTo;->setAddress(Ljavax/sip/address/Address;)V

    .line 847
    return-object v0

    .line 843
    .end local v0    # "replyTo":Lgov/nist/javax/sip/header/ReplyTo;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipRequestLine;
    .registers 4
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1658
    new-instance v0, Lgov/nist/javax/sip/parser/RequestLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/RequestLineParser;-><init>(Ljava/lang/String;)V

    .line 1659
    .local v0, "requestLineParser":Lgov/nist/javax/sip/parser/RequestLineParser;
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/RequestLineParser;->parse()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v1

    return-object v1
.end method

.method public greylist createRequireHeader(Ljava/lang/String;)Ljavax/sip/header/RequireHeader;
    .registers 4
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 861
    if-eqz p1, :cond_b

    .line 863
    new-instance v0, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Require;-><init>()V

    .line 864
    .local v0, "require":Lgov/nist/javax/sip/header/Require;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V

    .line 866
    return-object v0

    .line 862
    .end local v0    # "require":Lgov/nist/javax/sip/header/Require;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null optionTag"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRetryAfterHeader(I)Ljavax/sip/header/RetryAfterHeader;
    .registers 4
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 880
    if-ltz p1, :cond_b

    .line 882
    new-instance v0, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    .line 883
    .local v0, "r":Lgov/nist/javax/sip/header/RetryAfter;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    .line 885
    return-object v0

    .line 881
    .end local v0    # "r":Lgov/nist/javax/sip/header/RetryAfter;
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "bad retryAfter arg"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RouteHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 895
    if-eqz p1, :cond_b

    .line 897
    new-instance v0, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 898
    .local v0, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 900
    return-object v0

    .line 896
    .end local v0    # "route":Lgov/nist/javax/sip/header/Route;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createSIPETagHeader(Ljava/lang/String;)Ljavax/sip/header/SIPETagHeader;
    .registers 3
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1305
    new-instance v0, Lgov/nist/javax/sip/header/SIPETag;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPETag;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist createSIPIfMatchHeader(Ljava/lang/String;)Ljavax/sip/header/SIPIfMatchHeader;
    .registers 3
    .param p1, "etag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1313
    new-instance v0, Lgov/nist/javax/sip/header/SIPIfMatch;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/SIPIfMatch;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist createSecurityClientHeader()Lgov/nist/javax/sip/header/ims/SecurityClientHeader;
    .registers 2

    .line 1554
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityClient;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityClient;-><init>()V

    .line 1555
    .local v0, "secClient":Lgov/nist/javax/sip/header/ims/SecurityClient;
    return-object v0
.end method

.method public greylist createSecurityServerHeader()Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
    .registers 2

    .line 1544
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServer;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServer;-><init>()V

    .line 1545
    .local v0, "secServer":Lgov/nist/javax/sip/header/ims/SecurityServer;
    return-object v0
.end method

.method public greylist createSecurityVerifyHeader()Lgov/nist/javax/sip/header/ims/SecurityVerifyHeader;
    .registers 2

    .line 1564
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityVerify;-><init>()V

    .line 1565
    .local v0, "secVerify":Lgov/nist/javax/sip/header/ims/SecurityVerify;
    return-object v0
.end method

.method public greylist createServerHeader(Ljava/util/List;)Ljavax/sip/header/ServerHeader;
    .registers 4
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 913
    if-eqz p1, :cond_b

    .line 915
    new-instance v0, Lgov/nist/javax/sip/header/Server;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Server;-><init>()V

    .line 916
    .local v0, "server":Lgov/nist/javax/sip/header/Server;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Server;->setProduct(Ljava/util/List;)V

    .line 918
    return-object v0

    .line 914
    .end local v0    # "server":Lgov/nist/javax/sip/header/Server;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null productList arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createServiceRouteHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/ServiceRouteHeader;
    .registers 4
    .param p1, "address"    # Ljavax/sip/address/Address;

    .line 1528
    if-eqz p1, :cond_b

    .line 1531
    new-instance v0, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/ServiceRoute;-><init>()V

    .line 1532
    .local v0, "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/ims/ServiceRoute;->setAddress(Ljavax/sip/address/Address;)V

    .line 1534
    return-object v0

    .line 1529
    .end local v0    # "serviceRoute":Lgov/nist/javax/sip/header/ims/ServiceRoute;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createSessionExpiresHeader(I)Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
    .registers 5
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 1643
    if-ltz p1, :cond_b

    .line 1645
    new-instance v0, Lgov/nist/javax/sip/header/extensions/SessionExpires;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/SessionExpires;-><init>()V

    .line 1646
    .local v0, "s":Lgov/nist/javax/sip/header/extensions/SessionExpires;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/extensions/SessionExpires;->setExpires(I)V

    .line 1648
    return-object v0

    .line 1644
    .end local v0    # "s":Lgov/nist/javax/sip/header/extensions/SessionExpires;
    :cond_b
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipStatusLine;
    .registers 4
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1666
    new-instance v0, Lgov/nist/javax/sip/parser/StatusLineParser;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/parser/StatusLineParser;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v0, "statusLineParser":Lgov/nist/javax/sip/parser/StatusLineParser;
    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/StatusLineParser;->parse()Lgov/nist/javax/sip/header/StatusLine;

    move-result-object v1

    return-object v1
.end method

.method public greylist createSubjectHeader(Ljava/lang/String;)Ljavax/sip/header/SubjectHeader;
    .registers 4
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 931
    if-eqz p1, :cond_b

    .line 933
    new-instance v0, Lgov/nist/javax/sip/header/Subject;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Subject;-><init>()V

    .line 934
    .local v0, "s":Lgov/nist/javax/sip/header/Subject;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Subject;->setSubject(Ljava/lang/String;)V

    .line 936
    return-object v0

    .line 932
    .end local v0    # "s":Lgov/nist/javax/sip/header/Subject;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null subject arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;
    .registers 4
    .param p1, "subscriptionState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 951
    if-eqz p1, :cond_b

    .line 953
    new-instance v0, Lgov/nist/javax/sip/header/SubscriptionState;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/SubscriptionState;-><init>()V

    .line 954
    .local v0, "s":Lgov/nist/javax/sip/header/SubscriptionState;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/SubscriptionState;->setState(Ljava/lang/String;)V

    .line 956
    return-object v0

    .line 952
    .end local v0    # "s":Lgov/nist/javax/sip/header/SubscriptionState;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null subscriptionState arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createSupportedHeader(Ljava/lang/String;)Ljavax/sip/header/SupportedHeader;
    .registers 4
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 970
    if-eqz p1, :cond_b

    .line 972
    new-instance v0, Lgov/nist/javax/sip/header/Supported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Supported;-><init>()V

    .line 973
    .local v0, "supported":Lgov/nist/javax/sip/header/Supported;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Supported;->setOptionTag(Ljava/lang/String;)V

    .line 975
    return-object v0

    .line 971
    .end local v0    # "supported":Lgov/nist/javax/sip/header/Supported;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null optionTag arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createTimeStampHeader(F)Ljavax/sip/header/TimeStampHeader;
    .registers 4
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 988
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_e

    .line 990
    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    .line 991
    .local v0, "t":Lgov/nist/javax/sip/header/TimeStamp;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    .line 993
    return-object v0

    .line 989
    .end local v0    # "t":Lgov/nist/javax/sip/header/TimeStamp;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal timeStamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .registers 5
    .param p1, "address"    # Ljavax/sip/address/Address;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1008
    if-eqz p1, :cond_10

    .line 1010
    new-instance v0, Lgov/nist/javax/sip/header/To;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/To;-><init>()V

    .line 1011
    .local v0, "to":Lgov/nist/javax/sip/header/To;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    .line 1012
    if-eqz p2, :cond_f

    .line 1013
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    .line 1015
    :cond_f
    return-object v0

    .line 1009
    .end local v0    # "to":Lgov/nist/javax/sip/header/To;
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createUnsupportedHeader(Ljava/lang/String;)Ljavax/sip/header/UnsupportedHeader;
    .registers 3
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1029
    if-eqz p1, :cond_b

    .line 1031
    new-instance v0, Lgov/nist/javax/sip/header/Unsupported;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Unsupported;-><init>()V

    .line 1032
    .local v0, "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Unsupported;->setOptionTag(Ljava/lang/String;)V

    .line 1034
    return-object v0

    .line 1030
    .end local v0    # "unsupported":Lgov/nist/javax/sip/header/Unsupported;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createUserAgentHeader(Ljava/util/List;)Ljavax/sip/header/UserAgentHeader;
    .registers 4
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1048
    if-eqz p1, :cond_b

    .line 1050
    new-instance v0, Lgov/nist/javax/sip/header/UserAgent;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/UserAgent;-><init>()V

    .line 1051
    .local v0, "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/UserAgent;->setProduct(Ljava/util/List;)V

    .line 1053
    return-object v0

    .line 1049
    .end local v0    # "userAgent":Lgov/nist/javax/sip/header/UserAgent;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null user agent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;
    .registers 9
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

    .line 1074
    if-eqz p1, :cond_51

    if-eqz p3, :cond_51

    .line 1076
    new-instance v0, Lgov/nist/javax/sip/header/Via;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Via;-><init>()V

    .line 1077
    .local v0, "via":Lgov/nist/javax/sip/header/Via;
    if-eqz p4, :cond_e

    .line 1078
    invoke-virtual {v0, p4}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 1081
    :cond_e
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_47

    .line 1082
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_47

    .line 1085
    iget-boolean v2, p0, Lgov/nist/javax/sip/header/HeaderFactoryImpl;->stripAddressScopeZones:Z

    if-eqz v2, :cond_30

    .line 1087
    const/16 v2, 0x25

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1088
    .local v2, "zoneStart":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_30

    .line 1089
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1091
    .end local v2    # "zoneStart":I
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1094
    :cond_47
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Via;->setHost(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    .line 1096
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    .line 1098
    return-object v0

    .line 1075
    .end local v0    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createWWWAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/WWWAuthenticateHeader;
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1112
    if-eqz p1, :cond_b

    .line 1114
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticate;-><init>()V

    .line 1115
    .local v0, "www":Lgov/nist/javax/sip/header/WWWAuthenticate;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/WWWAuthenticate;->setScheme(Ljava/lang/String;)V

    .line 1117
    return-object v0

    .line 1113
    .end local v0    # "www":Lgov/nist/javax/sip/header/WWWAuthenticate;
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null scheme"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist createWarningHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/WarningHeader;
    .registers 6
    .param p1, "agent"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .line 1138
    if-eqz p1, :cond_11

    .line 1140
    new-instance v0, Lgov/nist/javax/sip/header/Warning;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/Warning;-><init>()V

    .line 1141
    .local v0, "warning":Lgov/nist/javax/sip/header/Warning;
    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/header/Warning;->setAgent(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v0, p2}, Lgov/nist/javax/sip/header/Warning;->setCode(I)V

    .line 1143
    invoke-virtual {v0, p3}, Lgov/nist/javax/sip/header/Warning;->setText(Ljava/lang/String;)V

    .line 1145
    return-object v0

    .line 1139
    .end local v0    # "warning":Lgov/nist/javax/sip/header/Warning;
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setPrettyEncoding(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 75
    invoke-static {p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->setPrettyEncode(Z)V

    .line 76
    return-void
.end method
