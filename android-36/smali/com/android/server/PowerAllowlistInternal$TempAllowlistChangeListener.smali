.class public interface abstract Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;
.super Ljava/lang/Object;
.source "PowerAllowlistInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerAllowlistInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TempAllowlistChangeListener"
.end annotation


# virtual methods
.method public abstract blacklist onAppAdded(I)V
.end method

.method public abstract blacklist onAppRemoved(I)V
.end method
