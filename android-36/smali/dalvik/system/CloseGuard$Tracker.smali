.class public interface abstract Ldalvik/system/CloseGuard$Tracker;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tracker"
.end annotation


# virtual methods
.method public abstract greylist-max-o close(Ljava/lang/Throwable;)V
.end method

.method public abstract greylist-max-o open(Ljava/lang/Throwable;)V
.end method
