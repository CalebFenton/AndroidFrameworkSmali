.class public interface abstract Lcom/android/internal/compat/IOverrideValidator;
.super Ljava/lang/Object;
.source "IOverrideValidator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IOverrideValidator$Stub;,
        Lcom/android/internal/compat/IOverrideValidator$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.compat.IOverrideValidator"


# virtual methods
.method public abstract blacklist getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
