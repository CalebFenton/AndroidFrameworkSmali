.class public interface abstract Lgov/nist/javax/sip/header/HeaderFactoryExt;
.super Ljava/lang/Object;
.source "HeaderFactoryExt.java"

# interfaces
.implements Ljavax/sip/header/HeaderFactory;


# virtual methods
.method public abstract greylist createChargingVectorHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createJoinHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/JoinHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createPAccessNetworkInfoHeader()Lgov/nist/javax/sip/header/ims/PAccessNetworkInfoHeader;
.end method

.method public abstract greylist createPAssertedIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssertedIdentityHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createPAssertedServiceHeader()Lgov/nist/javax/sip/header/ims/PAssertedServiceHeader;
.end method

.method public abstract greylist createPAssociatedURIHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PAssociatedURIHeader;
.end method

.method public abstract greylist createPCalledPartyIDHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PCalledPartyIDHeader;
.end method

.method public abstract greylist createPChargingFunctionAddressesHeader()Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.end method

.method public abstract greylist createPMediaAuthorizationHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PMediaAuthorizationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createPPreferredIdentityHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PPreferredIdentityHeader;
.end method

.method public abstract greylist createPPreferredServiceHeader()Lgov/nist/javax/sip/header/ims/PPreferredServiceHeader;
.end method

.method public abstract greylist createPProfileKeyHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PProfileKeyHeader;
.end method

.method public abstract greylist createPServedUserHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PServedUserHeader;
.end method

.method public abstract greylist createPUserDatabaseHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PUserDatabaseHeader;
.end method

.method public abstract greylist createPVisitedNetworkIDHeader()Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDHeader;
.end method

.method public abstract greylist createPathHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/PathHeader;
.end method

.method public abstract greylist createPrivacyHeader(Ljava/lang/String;)Lgov/nist/javax/sip/header/ims/PrivacyHeader;
.end method

.method public abstract greylist createReferredByHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/extensions/ReferredByHeader;
.end method

.method public abstract greylist createReplacesHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/header/extensions/ReplacesHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createRequestLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipRequestLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract greylist createSecurityClientHeader()Lgov/nist/javax/sip/header/ims/SecurityClientHeader;
.end method

.method public abstract greylist createSecurityServerHeader()Lgov/nist/javax/sip/header/ims/SecurityServerHeader;
.end method

.method public abstract greylist createSecurityVerifyHeader()Lgov/nist/javax/sip/header/ims/SecurityVerifyHeader;
.end method

.method public abstract greylist createServiceRouteHeader(Ljavax/sip/address/Address;)Lgov/nist/javax/sip/header/ims/ServiceRouteHeader;
.end method

.method public abstract greylist createSessionExpiresHeader(I)Lgov/nist/javax/sip/header/extensions/SessionExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract greylist createStatusLine(Ljava/lang/String;)Lgov/nist/javax/sip/header/SipStatusLine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
