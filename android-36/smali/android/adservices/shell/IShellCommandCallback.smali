.class public interface abstract Landroid/adservices/shell/IShellCommandCallback;
.super Ljava/lang/Object;
.source "IShellCommandCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/shell/IShellCommandCallback$Stub;,
        Landroid/adservices/shell/IShellCommandCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.shell.IShellCommandCallback"


# virtual methods
.method public abstract blacklist onResult(Landroid/adservices/shell/ShellCommandResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
