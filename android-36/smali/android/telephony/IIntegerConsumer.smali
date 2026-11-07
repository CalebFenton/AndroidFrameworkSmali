.class public interface abstract Landroid/telephony/IIntegerConsumer;
.super Ljava/lang/Object;
.source "IIntegerConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/IIntegerConsumer$Stub;,
        Landroid/telephony/IIntegerConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.IIntegerConsumer"


# virtual methods
.method public abstract blacklist accept(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
