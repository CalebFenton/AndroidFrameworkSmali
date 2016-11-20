.class public interface abstract Landroid/net/metrics/IDnsEventListener;
.super Ljava/lang/Object;
.source "IDnsEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IDnsEventListener$Stub;
    }
.end annotation


# static fields
.field public static final EVENT_GETADDRINFO:I = 0x1

.field public static final EVENT_GETHOSTBYNAME:I = 0x2


# virtual methods
.method public abstract onDnsEvent(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
