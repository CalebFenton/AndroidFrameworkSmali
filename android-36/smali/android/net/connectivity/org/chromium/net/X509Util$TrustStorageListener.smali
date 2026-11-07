.class final Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;
.super Landroid/content/BroadcastReceiver;
.source "X509Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrustStorageListener"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/X509Util-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/X509Util$TrustStorageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 57
    const-string v0, "Unable to reload the default TrustManager"

    const-string v1, "X509Util"

    const/4 v2, 0x0

    .line 58
    .local v2, "shouldReloadTrustManager":Z
    nop

    .line 59
    const-string v3, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 60
    const/4 v2, 0x1

    goto :goto_44

    .line 61
    :cond_14
    const-string v3, "android.security.action.KEYCHAIN_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 62
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509UtilJni;->get()Landroid/net/connectivity/org/chromium/net/X509Util$Natives;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/connectivity/org/chromium/net/X509Util$Natives;->notifyClientCertStoreChanged()V

    goto :goto_44

    .line 63
    :cond_28
    const-string v3, "android.security.action.KEY_ACCESS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 64
    const-string v3, "android.security.extra.KEY_ACCESSIBLE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_44

    .line 67
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509UtilJni;->get()Landroid/net/connectivity/org/chromium/net/X509Util$Natives;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/connectivity/org/chromium/net/X509Util$Natives;->notifyClientCertStoreChanged()V

    .line 81
    :cond_44
    :goto_44
    if-eqz v2, :cond_59

    .line 83
    :try_start_46
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/X509Util;->-$$Nest$smreloadDefaultTrustManager()V
    :try_end_49
    .catch Ljava/security/cert/CertificateException; {:try_start_46 .. :try_end_49} :catch_54
    .catch Ljava/security/KeyStoreException; {:try_start_46 .. :try_end_49} :catch_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 90
    :goto_49
    goto :goto_59

    .line 88
    :catch_4a
    move-exception v3

    .line 89
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1, v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59

    .line 86
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4f
    move-exception v3

    .line 87
    .local v3, "e":Ljava/security/KeyStoreException;
    invoke-static {v1, v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/security/KeyStoreException;
    goto :goto_49

    .line 84
    :catch_54
    move-exception v3

    .line 85
    .local v3, "e":Ljava/security/cert/CertificateException;
    invoke-static {v1, v0, v3}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/security/cert/CertificateException;
    goto :goto_49

    .line 92
    :cond_59
    :goto_59
    return-void
.end method
