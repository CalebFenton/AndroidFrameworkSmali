.class public interface abstract Landroid/adservices/shell/IShellCommand;
.super Ljava/lang/Object;
.source "IShellCommand.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/shell/IShellCommand$Stub;,
        Landroid/adservices/shell/IShellCommand$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.shell.IShellCommand"


# virtual methods
.method public abstract blacklist runShellCommand(Landroid/adservices/shell/ShellCommandParam;Landroid/adservices/shell/IShellCommandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
