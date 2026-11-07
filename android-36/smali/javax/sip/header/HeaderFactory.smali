.class public interface abstract Ljavax/sip/header/HeaderFactory;
.super Ljava/lang/Object;
.source "HeaderFactory.java"


# virtual methods
.method public abstract blacklist createAcceptEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/AcceptEncodingHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAcceptHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/AcceptHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAcceptLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/AcceptLanguageHeader;
.end method

.method public abstract blacklist createAlertInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/AlertInfoHeader;
.end method

.method public abstract blacklist createAllowEventsHeader(Ljava/lang/String;)Ljavax/sip/header/AllowEventsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAllowHeader(Ljava/lang/String;)Ljavax/sip/header/AllowHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAuthenticationInfoHeader(Ljava/lang/String;)Ljavax/sip/header/AuthenticationInfoHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createCSeqHeader(ILjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createCSeqHeader(JLjava/lang/String;)Ljavax/sip/header/CSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createCallIdHeader(Ljava/lang/String;)Ljavax/sip/header/CallIdHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createCallInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/CallInfoHeader;
.end method

.method public abstract blacklist createContactHeader()Ljavax/sip/header/ContactHeader;
.end method

.method public abstract blacklist createContactHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ContactHeader;
.end method

.method public abstract blacklist createContentDispositionHeader(Ljava/lang/String;)Ljavax/sip/header/ContentDispositionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createContentEncodingHeader(Ljava/lang/String;)Ljavax/sip/header/ContentEncodingHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createContentLanguageHeader(Ljava/util/Locale;)Ljavax/sip/header/ContentLanguageHeader;
.end method

.method public abstract blacklist createContentLengthHeader(I)Ljavax/sip/header/ContentLengthHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createDateHeader(Ljava/util/Calendar;)Ljavax/sip/header/DateHeader;
.end method

.method public abstract blacklist createErrorInfoHeader(Ljavax/sip/address/URI;)Ljavax/sip/header/ErrorInfoHeader;
.end method

.method public abstract blacklist createEventHeader(Ljava/lang/String;)Ljavax/sip/header/EventHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createExpiresHeader(I)Ljavax/sip/header/ExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createExtensionHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ExtensionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createFromHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/FromHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createHeaders(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createInReplyToHeader(Ljava/lang/String;)Ljavax/sip/header/InReplyToHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createMaxForwardsHeader(I)Ljavax/sip/header/MaxForwardsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createMimeVersionHeader(II)Ljavax/sip/header/MimeVersionHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createMinExpiresHeader(I)Ljavax/sip/header/MinExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createOrganizationHeader(Ljava/lang/String;)Ljavax/sip/header/OrganizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createPriorityHeader(Ljava/lang/String;)Ljavax/sip/header/PriorityHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createProxyAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthenticateHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createProxyRequireHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyRequireHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createRAckHeader(IILjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createRAckHeader(JJLjava/lang/String;)Ljavax/sip/header/RAckHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createRSeqHeader(I)Ljavax/sip/header/RSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createRSeqHeader(J)Ljavax/sip/header/RSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/ReasonHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createRecordRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RecordRouteHeader;
.end method

.method public abstract blacklist createReferToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReferToHeader;
.end method

.method public abstract blacklist createReplyToHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/ReplyToHeader;
.end method

.method public abstract blacklist createRequireHeader(Ljava/lang/String;)Ljavax/sip/header/RequireHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createRetryAfterHeader(I)Ljavax/sip/header/RetryAfterHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createRouteHeader(Ljavax/sip/address/Address;)Ljavax/sip/header/RouteHeader;
.end method

.method public abstract blacklist createSIPETagHeader(Ljava/lang/String;)Ljavax/sip/header/SIPETagHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createSIPIfMatchHeader(Ljava/lang/String;)Ljavax/sip/header/SIPIfMatchHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createServerHeader(Ljava/util/List;)Ljavax/sip/header/ServerHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createSubjectHeader(Ljava/lang/String;)Ljavax/sip/header/SubjectHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createSubscriptionStateHeader(Ljava/lang/String;)Ljavax/sip/header/SubscriptionStateHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createSupportedHeader(Ljava/lang/String;)Ljavax/sip/header/SupportedHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createTimeStampHeader(F)Ljavax/sip/header/TimeStampHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist createToHeader(Ljavax/sip/address/Address;Ljava/lang/String;)Ljavax/sip/header/ToHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createUnsupportedHeader(Ljava/lang/String;)Ljavax/sip/header/UnsupportedHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createUserAgentHeader(Ljava/util/List;)Ljavax/sip/header/UserAgentHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax/sip/header/ViaHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createWWWAuthenticateHeader(Ljava/lang/String;)Ljavax/sip/header/WWWAuthenticateHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist createWarningHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/header/WarningHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract blacklist setPrettyEncoding(Z)V
.end method
