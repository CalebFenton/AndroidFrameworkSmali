.class public interface abstract Landroid/view/translation/ITranslationServiceCallback;
.super Ljava/lang/Object;
.source "ITranslationServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ITranslationServiceCallback$Stub;,
        Landroid/view/translation/ITranslationServiceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.translation.ITranslationServiceCallback"


# virtual methods
.method public abstract blacklist updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
