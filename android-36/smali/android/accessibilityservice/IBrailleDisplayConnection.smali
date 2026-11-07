.class public interface abstract Landroid/accessibilityservice/IBrailleDisplayConnection;
.super Ljava/lang/Object;
.source "IBrailleDisplayConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IBrailleDisplayConnection$Stub;,
        Landroid/accessibilityservice/IBrailleDisplayConnection$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IBrailleDisplayConnection"


# virtual methods
.method public abstract blacklist disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
