.class public interface abstract Lcom/android/internal/util/IState;
.super Ljava/lang/Object;
.source "IState.java"


# static fields
.field public static final blacklist HANDLED:Z = true

.field public static final blacklist NOT_HANDLED:Z = false


# virtual methods
.method public abstract blacklist enter()V
.end method

.method public abstract blacklist exit()V
.end method

.method public abstract greylist getName()Ljava/lang/String;
.end method

.method public abstract blacklist processMessage(Landroid/os/Message;)Z
.end method
