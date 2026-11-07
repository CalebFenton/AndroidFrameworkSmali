.class public interface abstract Landroid/app/sdksandbox/ISharedPreferencesSyncCallback;
.super Ljava/lang/Object;
.source "ISharedPreferencesSyncCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/ISharedPreferencesSyncCallback$Stub;,
        Landroid/app/sdksandbox/ISharedPreferencesSyncCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.sdksandbox.ISharedPreferencesSyncCallback"

.field public static final blacklist PREFERENCES_SYNC_INTERNAL_ERROR:I = 0x2

.field public static final blacklist SANDBOX_NOT_AVAILABLE:I = 0x1


# virtual methods
.method public abstract blacklist onError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSandboxStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
