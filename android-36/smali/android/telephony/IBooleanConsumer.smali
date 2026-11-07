.class public interface abstract Landroid/telephony/IBooleanConsumer;
.super Ljava/lang/Object;
.source "IBooleanConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/IBooleanConsumer$Stub;,
        Landroid/telephony/IBooleanConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.IBooleanConsumer"


# virtual methods
.method public abstract blacklist accept(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
