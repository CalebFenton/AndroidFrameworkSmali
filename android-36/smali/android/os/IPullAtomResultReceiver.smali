.class public interface abstract Landroid/os/IPullAtomResultReceiver;
.super Ljava/lang/Object;
.source "IPullAtomResultReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPullAtomResultReceiver$Stub;,
        Landroid/os/IPullAtomResultReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IPullAtomResultReceiver"


# virtual methods
.method public abstract blacklist pullFinished(IZ[Landroid/util/StatsEventParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
