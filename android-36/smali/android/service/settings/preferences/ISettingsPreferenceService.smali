.class public interface abstract Landroid/service/settings/preferences/ISettingsPreferenceService;
.super Ljava/lang/Object;
.source "ISettingsPreferenceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/ISettingsPreferenceService$Stub;,
        Landroid/service/settings/preferences/ISettingsPreferenceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.settings.preferences.ISettingsPreferenceService"


# virtual methods
.method public abstract blacklist getAllPreferenceMetadata(Landroid/service/settings/preferences/MetadataRequest;Landroid/service/settings/preferences/IMetadataCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPreferenceValue(Landroid/service/settings/preferences/GetValueRequest;Landroid/service/settings/preferences/IGetValueCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setPreferenceValue(Landroid/service/settings/preferences/SetValueRequest;Landroid/service/settings/preferences/ISetValueCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
