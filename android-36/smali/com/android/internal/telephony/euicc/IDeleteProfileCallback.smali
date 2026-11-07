.class public interface abstract Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;
.super Ljava/lang/Object;
.source "IDeleteProfileCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IDeleteProfileCallback"


# virtual methods
.method public abstract blacklist onComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
