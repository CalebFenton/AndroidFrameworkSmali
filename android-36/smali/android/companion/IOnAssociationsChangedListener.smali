.class public interface abstract Landroid/companion/IOnAssociationsChangedListener;
.super Ljava/lang/Object;
.source "IOnAssociationsChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/IOnAssociationsChangedListener$Stub;,
        Landroid/companion/IOnAssociationsChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.companion.IOnAssociationsChangedListener"


# virtual methods
.method public abstract blacklist onAssociationsChanged(Ljava/util/List;)V
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
