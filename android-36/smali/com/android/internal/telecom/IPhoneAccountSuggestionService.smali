.class public interface abstract Lcom/android/internal/telecom/IPhoneAccountSuggestionService;
.super Ljava/lang/Object;
.source "IPhoneAccountSuggestionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Stub;,
        Lcom/android/internal/telecom/IPhoneAccountSuggestionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IPhoneAccountSuggestionService"


# virtual methods
.method public abstract blacklist onAccountSuggestionRequest(Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
