.class public interface abstract Landroid/hardware/contexthub/HubEndpointLifecycleCallback;
.super Ljava/lang/Object;
.source "HubEndpointLifecycleCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract whitelist onSessionClosed(Landroid/hardware/contexthub/HubEndpointSession;I)V
.end method

.method public abstract whitelist onSessionOpenRequest(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;
.end method

.method public abstract whitelist onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V
.end method
