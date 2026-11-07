.class public interface abstract Landroid/service/settings/preferences/ISetValueCallback;
.super Ljava/lang/Object;
.source "ISetValueCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/ISetValueCallback$Stub;,
        Landroid/service/settings/preferences/ISetValueCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.settings.preferences.ISetValueCallback"


# virtual methods
.method public abstract blacklist onFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/service/settings/preferences/SetValueResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
