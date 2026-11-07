.class public interface abstract Landroid/companion/IOnTransportsChangedListener;
.super Ljava/lang/Object;
.source "IOnTransportsChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IOnTransportsChangedListener$Stub;,
        Landroid/companion/IOnTransportsChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IOnTransportsChangedListener"


# virtual methods
.method public abstract blacklist onTransportsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
