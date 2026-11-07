.class public interface abstract Lgov/nist/javax/sip/SipStackExt;
.super Ljava/lang/Object;
.source "SipStackExt.java"

# interfaces
.implements Ljavax/sip/SipStack;


# virtual methods
.method public abstract greylist getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
.end method

.method public abstract greylist getDialogs()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljavax/sip/Dialog;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist getJoinDialog(Lgov/nist/javax/sip/header/extensions/JoinHeader;)Ljavax/sip/Dialog;
.end method

.method public abstract greylist getReplacesDialog(Lgov/nist/javax/sip/header/extensions/ReplacesHeader;)Ljavax/sip/Dialog;
.end method

.method public abstract greylist getSecureAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
.end method

.method public abstract greylist obtainLocalAddress(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract greylist setAddressResolver(Lgov/nist/core/net/AddressResolver;)V
.end method

.method public abstract greylist setEnabledCipherSuites([Ljava/lang/String;)V
.end method
