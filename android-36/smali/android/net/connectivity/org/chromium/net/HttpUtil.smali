.class public final Landroid/net/connectivity/org/chromium/net/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/HttpUtil$Natives;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAllowedHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "headerValue"    # Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpUtilJni;->get()Landroid/net/connectivity/org/chromium/net/HttpUtil$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/HttpUtil$Natives;->isAllowedHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
