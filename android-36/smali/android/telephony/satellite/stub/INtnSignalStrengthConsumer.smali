.class public interface abstract Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer;
.super Ljava/lang/Object;
.source "INtnSignalStrengthConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer$Stub;,
        Landroid/telephony/satellite/stub/INtnSignalStrengthConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.stub.INtnSignalStrengthConsumer"


# virtual methods
.method public abstract blacklist accept(Landroid/telephony/satellite/stub/NtnSignalStrength;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
