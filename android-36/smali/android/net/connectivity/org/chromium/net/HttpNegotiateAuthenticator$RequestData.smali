.class Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
.super Ljava/lang/Object;
.source "HttpNegotiateAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestData"
.end annotation


# instance fields
.field public blacklist account:Landroid/accounts/Account;

.field public blacklist accountManager:Landroid/accounts/AccountManager;

.field public blacklist authTokenType:Ljava/lang/String;

.field public blacklist nativeResultObject:J

.field public blacklist options:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
