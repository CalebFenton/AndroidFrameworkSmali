.class public interface abstract Landroid/service/dreams/IDreamOverlayClientCallback;
.super Ljava/lang/Object;
.source "IDreamOverlayClientCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlayClientCallback$Stub;,
        Landroid/service/dreams/IDreamOverlayClientCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamOverlayClientCallback"


# virtual methods
.method public abstract blacklist onDreamOverlayClient(Landroid/service/dreams/IDreamOverlayClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
