.class public interface abstract Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/RemoteCallbackList$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InterfaceDiedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist onInterfaceDied(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "TE;>;TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
