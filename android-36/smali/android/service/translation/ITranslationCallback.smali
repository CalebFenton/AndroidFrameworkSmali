.class public interface abstract Landroid/service/translation/ITranslationCallback;
.super Ljava/lang/Object;
.source "ITranslationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/translation/ITranslationCallback$Stub;,
        Landroid/service/translation/ITranslationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.translation.ITranslationCallback"


# virtual methods
.method public abstract blacklist onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
