.class public interface abstract Landroid/companion/IOnMessageReceivedListener;
.super Ljava/lang/Object;
.source "IOnMessageReceivedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IOnMessageReceivedListener$Stub;,
        Landroid/companion/IOnMessageReceivedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IOnMessageReceivedListener"


# virtual methods
.method public abstract blacklist onMessageReceived(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
