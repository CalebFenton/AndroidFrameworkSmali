.class public interface abstract Landroid/media/tv/tuner/frontend/OnTuneEventListener;
.super Ljava/lang/Object;
.source "OnTuneEventListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/OnTuneEventListener$TuneEvent;
    }
.end annotation


# static fields
.field public static final whitelist SIGNAL_LOCKED:I = 0x0

.field public static final whitelist SIGNAL_LOST_LOCK:I = 0x2

.field public static final whitelist SIGNAL_NO_SIGNAL:I = 0x1


# virtual methods
.method public abstract whitelist onTuneEvent(I)V
.end method
