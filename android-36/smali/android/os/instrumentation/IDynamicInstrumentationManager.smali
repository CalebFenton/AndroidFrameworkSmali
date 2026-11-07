.class public interface abstract Landroid/os/instrumentation/IDynamicInstrumentationManager;
.super Ljava/lang/Object;
.source "IDynamicInstrumentationManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;,
        Landroid/os/instrumentation/IDynamicInstrumentationManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.instrumentation.IDynamicInstrumentationManager"


# virtual methods
.method public abstract blacklist getExecutableMethodFileOffsets(Landroid/os/instrumentation/TargetProcess;Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
