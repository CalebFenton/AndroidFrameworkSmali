.class public abstract Landroid/service/dreams/DreamManagerInternal;
.super Ljava/lang/Object;
.source "DreamManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist canStartDreaming(Z)Z
.end method

.method public abstract blacklist dreamConditionActive()Z
.end method

.method public abstract greylist-max-o isDreaming()Z
.end method

.method public abstract blacklist registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
.end method

.method public abstract blacklist requestDream()V
.end method

.method public abstract blacklist startDream(ZLjava/lang/String;)V
.end method

.method public abstract blacklist stopDream(ZLjava/lang/String;)V
.end method

.method public abstract blacklist unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
.end method
