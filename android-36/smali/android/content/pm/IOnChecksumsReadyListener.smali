.class public interface abstract Landroid/content/pm/IOnChecksumsReadyListener;
.super Ljava/lang/Object;
.source "IOnChecksumsReadyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnChecksumsReadyListener$Stub;,
        Landroid/content/pm/IOnChecksumsReadyListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnChecksumsReadyListener"


# virtual methods
.method public abstract blacklist onChecksumsReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApkChecksum;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
