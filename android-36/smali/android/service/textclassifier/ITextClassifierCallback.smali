.class public interface abstract Landroid/service/textclassifier/ITextClassifierCallback;
.super Ljava/lang/Object;
.source "ITextClassifierCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextClassifierCallback$Stub;,
        Landroid/service/textclassifier/ITextClassifierCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextClassifierCallback"


# virtual methods
.method public abstract blacklist onFailure()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
