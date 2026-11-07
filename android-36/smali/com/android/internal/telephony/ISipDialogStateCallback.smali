.class public interface abstract Lcom/android/internal/telephony/ISipDialogStateCallback;
.super Ljava/lang/Object;
.source "ISipDialogStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISipDialogStateCallback$Stub;,
        Lcom/android/internal/telephony/ISipDialogStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISipDialogStateCallback"


# virtual methods
.method public abstract blacklist onActiveSipDialogsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SipDialogState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
