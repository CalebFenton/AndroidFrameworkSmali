.class public interface abstract Landroid/service/autofill/IInlineSuggestionUi;
.super Ljava/lang/Object;
.source "IInlineSuggestionUi.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionUi$Stub;,
        Landroid/service/autofill/IInlineSuggestionUi$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IInlineSuggestionUi"


# virtual methods
.method public abstract blacklist getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist releaseSurfaceControlViewHost()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
