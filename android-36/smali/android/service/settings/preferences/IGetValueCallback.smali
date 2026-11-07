.class public interface abstract Landroid/service/settings/preferences/IGetValueCallback;
.super Ljava/lang/Object;
.source "IGetValueCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/IGetValueCallback$Stub;,
        Landroid/service/settings/preferences/IGetValueCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.settings.preferences.IGetValueCallback"


# virtual methods
.method public abstract blacklist onFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/service/settings/preferences/GetValueResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
