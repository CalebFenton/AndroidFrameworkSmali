.class public interface abstract Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback;
.super Ljava/lang/Object;
.source "IPhoneAccountSuggestionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback$Stub;,
        Lcom/android/internal/telecom/IPhoneAccountSuggestionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IPhoneAccountSuggestionCallback"


# virtual methods
.method public abstract blacklist suggestPhoneAccounts(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountSuggestion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
