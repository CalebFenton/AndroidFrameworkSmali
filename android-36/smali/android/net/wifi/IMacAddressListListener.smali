.class public interface abstract Landroid/net/wifi/IMacAddressListListener;
.super Ljava/lang/Object;
.source "IMacAddressListListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IMacAddressListListener$Stub;,
        Landroid/net/wifi/IMacAddressListListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IMacAddressListListener"


# virtual methods
.method public abstract blacklist onResult(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
