.class public interface abstract Landroid/service/dreams/IDreamOverlay;
.super Ljava/lang/Object;
.source "IDreamOverlay.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlay$Stub;,
        Landroid/service/dreams/IDreamOverlay$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamOverlay"


# virtual methods
.method public abstract blacklist getClient(Landroid/service/dreams/IDreamOverlayClientCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
