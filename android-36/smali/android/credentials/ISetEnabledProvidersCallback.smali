.class public interface abstract Landroid/credentials/ISetEnabledProvidersCallback;
.super Ljava/lang/Object;
.source "ISetEnabledProvidersCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/ISetEnabledProvidersCallback$Stub;,
        Landroid/credentials/ISetEnabledProvidersCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.credentials.ISetEnabledProvidersCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResponse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
