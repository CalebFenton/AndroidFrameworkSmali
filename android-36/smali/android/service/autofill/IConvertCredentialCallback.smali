.class public interface abstract Landroid/service/autofill/IConvertCredentialCallback;
.super Ljava/lang/Object;
.source "IConvertCredentialCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IConvertCredentialCallback$Stub;,
        Landroid/service/autofill/IConvertCredentialCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IConvertCredentialCallback"


# virtual methods
.method public abstract blacklist onFailure(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/service/autofill/ConvertCredentialResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
