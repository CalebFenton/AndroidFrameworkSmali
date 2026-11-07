.class public interface abstract Landroid/app/ondeviceintelligence/IRemoteCallback;
.super Ljava/lang/Object;
.source "IRemoteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IRemoteCallback$Stub;,
        Landroid/app/ondeviceintelligence/IRemoteCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.IRemoteCallback"


# virtual methods
.method public abstract blacklist sendResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
