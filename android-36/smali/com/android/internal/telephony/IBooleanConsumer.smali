.class public interface abstract Lcom/android/internal/telephony/IBooleanConsumer;
.super Ljava/lang/Object;
.source "IBooleanConsumer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IBooleanConsumer$Stub;,
        Lcom/android/internal/telephony/IBooleanConsumer$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IBooleanConsumer"


# virtual methods
.method public abstract blacklist accept(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
