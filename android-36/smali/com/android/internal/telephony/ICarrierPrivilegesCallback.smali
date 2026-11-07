.class public interface abstract Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "ICarrierPrivilegesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;,
        Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ICarrierPrivilegesCallback"


# virtual methods
.method public abstract blacklist onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCarrierServiceChanged(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
