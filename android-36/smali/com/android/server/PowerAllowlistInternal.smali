.class public interface abstract Lcom/android/server/PowerAllowlistInternal;
.super Ljava/lang/Object;
.source "PowerAllowlistInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;
    }
.end annotation


# virtual methods
.method public abstract blacklist registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
.end method

.method public abstract blacklist unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
.end method
