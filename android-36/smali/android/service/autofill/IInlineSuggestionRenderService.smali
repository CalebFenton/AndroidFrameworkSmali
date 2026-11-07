.class public interface abstract Landroid/service/autofill/IInlineSuggestionRenderService;
.super Ljava/lang/Object;
.source "IInlineSuggestionRenderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionRenderService$Stub;,
        Landroid/service/autofill/IInlineSuggestionRenderService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IInlineSuggestionRenderService"


# virtual methods
.method public abstract blacklist destroySuggestionViews(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
