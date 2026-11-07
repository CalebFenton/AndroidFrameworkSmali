.class public interface abstract Landroid/app/wearable/IWearableSensingCallback;
.super Ljava/lang/Object;
.source "IWearableSensingCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wearable/IWearableSensingCallback$Stub;,
        Landroid/app/wearable/IWearableSensingCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.wearable.IWearableSensingCallback"


# virtual methods
.method public abstract blacklist openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
