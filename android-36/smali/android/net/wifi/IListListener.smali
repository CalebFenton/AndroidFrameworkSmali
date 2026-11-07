.class public interface abstract Landroid/net/wifi/IListListener;
.super Ljava/lang/Object;
.source "IListListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IListListener$Stub;,
        Landroid/net/wifi/IListListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IListListener"


# virtual methods
.method public abstract blacklist onResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
