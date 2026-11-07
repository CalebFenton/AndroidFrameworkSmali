.class public Landroid/net/connectivity/org/chromium/url/IDNStringUtil;
.super Ljava/lang/Object;
.source "IDNStringUtil.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "url::android"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist idnToASCII(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "src"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 26
    :catch_6
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
