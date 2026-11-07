.class public interface abstract Landroid/os/IHintManager$IHintManagerClient;
.super Ljava/lang/Object;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHintManagerClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$IHintManagerClient$Stub;,
        Landroid/os/IHintManager$IHintManagerClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IHintManager.IHintManagerClient"


# virtual methods
.method public abstract blacklist receiveChannelConfig(Landroid/hardware/power/ChannelConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
