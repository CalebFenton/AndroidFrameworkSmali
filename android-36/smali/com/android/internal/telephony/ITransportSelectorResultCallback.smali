.class public interface abstract Lcom/android/internal/telephony/ITransportSelectorResultCallback;
.super Ljava/lang/Object;
.source "ITransportSelectorResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITransportSelectorResultCallback$Stub;,
        Lcom/android/internal/telephony/ITransportSelectorResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITransportSelectorResultCallback"


# virtual methods
.method public abstract blacklist onCompleted(Lcom/android/internal/telephony/IWwanSelectorCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
