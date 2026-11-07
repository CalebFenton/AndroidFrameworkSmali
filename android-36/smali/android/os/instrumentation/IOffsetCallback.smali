.class public interface abstract Landroid/os/instrumentation/IOffsetCallback;
.super Ljava/lang/Object;
.source "IOffsetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/instrumentation/IOffsetCallback$Stub;,
        Landroid/os/instrumentation/IOffsetCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.instrumentation.IOffsetCallback"


# virtual methods
.method public abstract blacklist onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
