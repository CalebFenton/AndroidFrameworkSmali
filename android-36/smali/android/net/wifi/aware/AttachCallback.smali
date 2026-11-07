.class public Landroid/net/wifi/aware/AttachCallback;
.super Ljava/lang/Object;
.source "AttachCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAttachFailed()V
    .registers 1

    .line 46
    return-void
.end method

.method public whitelist onAttached(Landroid/net/wifi/aware/WifiAwareSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/wifi/aware/WifiAwareSession;

    .line 38
    return-void
.end method

.method public whitelist onAwareSessionTerminated()V
    .registers 1

    .line 56
    return-void
.end method
