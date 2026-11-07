.class public interface abstract Landroid/content/pm/IDataLoaderStatusListener;
.super Ljava/lang/Object;
.source "IDataLoaderStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IDataLoaderStatusListener$Stub;,
        Landroid/content/pm/IDataLoaderStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DATA_LOADER_BINDING:I = 0x1

.field public static final blacklist DATA_LOADER_BOUND:I = 0x2

.field public static final blacklist DATA_LOADER_CREATED:I = 0x3

.field public static final blacklist DATA_LOADER_DESTROYED:I = 0x0

.field public static final blacklist DATA_LOADER_IMAGE_NOT_READY:I = 0x7

.field public static final blacklist DATA_LOADER_IMAGE_READY:I = 0x6

.field public static final blacklist DATA_LOADER_STARTED:I = 0x4

.field public static final blacklist DATA_LOADER_STOPPED:I = 0x5

.field public static final blacklist DATA_LOADER_UNAVAILABLE:I = 0x8

.field public static final blacklist DATA_LOADER_UNRECOVERABLE:I = 0x9

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IDataLoaderStatusListener"


# virtual methods
.method public abstract blacklist onStatusChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
