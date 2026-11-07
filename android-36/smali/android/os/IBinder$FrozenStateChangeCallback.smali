.class public interface abstract Landroid/os/IBinder$FrozenStateChangeCallback;
.super Ljava/lang/Object;
.source "IBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrozenStateChangeCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBinder$FrozenStateChangeCallback$State;
    }
.end annotation


# static fields
.field public static final whitelist STATE_FROZEN:I = 0x0

.field public static final whitelist STATE_UNFROZEN:I = 0x1


# virtual methods
.method public abstract whitelist onFrozenStateChanged(Landroid/os/IBinder;I)V
.end method
