.class public interface abstract Lcom/android/internal/telephony/IIntegerConsumer;
.super Ljava/lang/Object;
.source "IIntegerConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIntegerConsumer$Stub;,
        Lcom/android/internal/telephony/IIntegerConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIntegerConsumer"


# virtual methods
.method public abstract blacklist accept(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
