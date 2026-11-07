.class public interface abstract Lcom/android/internal/telephony/ILongConsumer;
.super Ljava/lang/Object;
.source "ILongConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ILongConsumer$Stub;,
        Lcom/android/internal/telephony/ILongConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ILongConsumer"


# virtual methods
.method public abstract blacklist accept(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
