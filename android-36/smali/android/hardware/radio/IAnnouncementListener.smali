.class public interface abstract Landroid/hardware/radio/IAnnouncementListener;
.super Ljava/lang/Object;
.source "IAnnouncementListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/IAnnouncementListener$Stub;,
        Landroid/hardware/radio/IAnnouncementListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onListUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
