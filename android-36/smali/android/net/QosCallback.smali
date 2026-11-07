.class public abstract Landroid/net/QosCallback;
.super Ljava/lang/Object;
.source "QosCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/QosCallback$QosCallbackRegistrationException;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onError(Landroid/net/QosCallbackException;)V
    .registers 2
    .param p1, "exception"    # Landroid/net/QosCallbackException;

    .line 52
    return-void
.end method

.method public whitelist onQosSessionAvailable(Landroid/net/QosSession;Landroid/net/QosSessionAttributes;)V
    .registers 3
    .param p1, "session"    # Landroid/net/QosSession;
    .param p2, "sessionAttributes"    # Landroid/net/QosSessionAttributes;

    .line 65
    return-void
.end method

.method public whitelist onQosSessionLost(Landroid/net/QosSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/QosSession;

    .line 77
    return-void
.end method
