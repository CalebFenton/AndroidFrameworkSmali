.class public abstract Landroid/net/connectivity/org/chromium/base/PathService;
.super Ljava/lang/Object;
.source "PathService.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/PathService$Natives;
    }
.end annotation


# static fields
.field public static final blacklist DIR_MODULE:I = 0x3


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist override(ILjava/lang/String;)V
    .registers 3
    .param p0, "what"    # I
    .param p1, "path"    # Ljava/lang/String;

    .line 22
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PathServiceJni;->get()Landroid/net/connectivity/org/chromium/base/PathService$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/PathService$Natives;->override(ILjava/lang/String;)V

    .line 23
    return-void
.end method
