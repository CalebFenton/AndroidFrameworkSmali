.class public final Landroid/net/connectivity/org/chromium/net/GURLUtils;
.super Ljava/lang/Object;
.source "GURLUtils.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/GURLUtils$Natives;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/GURLUtilsJni;->get()Landroid/net/connectivity/org/chromium/net/GURLUtils$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/net/GURLUtils$Natives;->getOrigin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
