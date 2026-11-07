.class public Landroid/net/connectivity/org/chromium/base/ImportantFileWriterAndroid;
.super Ljava/lang/Object;
.source "ImportantFileWriterAndroid.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ImportantFileWriterAndroid$Natives;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeFileAtomically(Ljava/lang/String;[B)Z
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 30
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ImportantFileWriterAndroidJni;->get()Landroid/net/connectivity/org/chromium/base/ImportantFileWriterAndroid$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/ImportantFileWriterAndroid$Natives;->writeFileAtomically(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
