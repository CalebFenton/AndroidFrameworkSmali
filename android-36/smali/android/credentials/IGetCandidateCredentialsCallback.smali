.class public interface abstract Landroid/credentials/IGetCandidateCredentialsCallback;
.super Ljava/lang/Object;
.source "IGetCandidateCredentialsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/IGetCandidateCredentialsCallback$Stub;,
        Landroid/credentials/IGetCandidateCredentialsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.credentials.IGetCandidateCredentialsCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
