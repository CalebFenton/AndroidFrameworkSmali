.class public interface abstract Landroid/service/settings/preferences/IMetadataCallback;
.super Ljava/lang/Object;
.source "IMetadataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/IMetadataCallback$Stub;,
        Landroid/service/settings/preferences/IMetadataCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.settings.preferences.IMetadataCallback"


# virtual methods
.method public abstract blacklist onFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/service/settings/preferences/MetadataResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
