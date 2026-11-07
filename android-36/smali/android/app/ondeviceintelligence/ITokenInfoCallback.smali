.class public interface abstract Landroid/app/ondeviceintelligence/ITokenInfoCallback;
.super Ljava/lang/Object;
.source "ITokenInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/ITokenInfoCallback$Stub;,
        Landroid/app/ondeviceintelligence/ITokenInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.ITokenInfoCallback"


# virtual methods
.method public abstract blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/app/ondeviceintelligence/TokenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
