.class public interface abstract Lcom/android/internal/telephony/IVoidConsumer;
.super Ljava/lang/Object;
.source "IVoidConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IVoidConsumer$Stub;,
        Lcom/android/internal/telephony/IVoidConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IVoidConsumer"


# virtual methods
.method public abstract blacklist accept()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
