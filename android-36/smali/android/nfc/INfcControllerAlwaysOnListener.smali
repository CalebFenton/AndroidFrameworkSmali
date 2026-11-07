.class public interface abstract Landroid/nfc/INfcControllerAlwaysOnListener;
.super Ljava/lang/Object;
.source "INfcControllerAlwaysOnListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcControllerAlwaysOnListener$Stub;,
        Landroid/nfc/INfcControllerAlwaysOnListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcControllerAlwaysOnListener"


# virtual methods
.method public abstract blacklist onControllerAlwaysOnChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
