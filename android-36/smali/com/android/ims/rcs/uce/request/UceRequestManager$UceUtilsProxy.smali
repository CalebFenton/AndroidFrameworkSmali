.class public interface abstract Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;
.super Ljava/lang/Object;
.source "UceRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UceUtilsProxy"
.end annotation


# virtual methods
.method public abstract blacklist getRclMaxNumberEntries(I)I
.end method

.method public abstract blacklist getSubscribeRetryDuration(Landroid/content/Context;I)J
.end method

.method public abstract blacklist isNumberBlocked(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract blacklist isPresenceCapExchangeEnabled(Landroid/content/Context;I)Z
.end method

.method public abstract blacklist isPresenceGroupSubscribeEnabled(Landroid/content/Context;I)Z
.end method

.method public abstract blacklist isPresenceSupported(Landroid/content/Context;I)Z
.end method

.method public abstract blacklist isSipOptionsSupported(Landroid/content/Context;I)Z
.end method
