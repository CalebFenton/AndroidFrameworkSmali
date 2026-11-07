.class public interface abstract Lcom/android/internal/telecom/ITelecomLoader;
.super Ljava/lang/Object;
.source "ITelecomLoader.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomLoader$Stub;,
        Lcom/android/internal/telecom/ITelecomLoader$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomLoader"


# virtual methods
.method public abstract blacklist createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;Ljava/lang/String;)Lcom/android/internal/telecom/ITelecomService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
