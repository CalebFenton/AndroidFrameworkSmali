.class interface abstract Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;
.super Ljava/lang/Object;
.source "ProxyChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist proxySettingsChanged(JLandroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "ProxyConfigServiceAndroid::JNIDelegate"
    .end annotation
.end method

.method public abstract blacklist proxySettingsChangedTo(JLandroid/net/connectivity/org/chromium/net/ProxyChangeListener;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .annotation runtime Landroid/net/connectivity/org/jni_zero/NativeClassQualifiedName;
        value = "ProxyConfigServiceAndroid::JNIDelegate"
    .end annotation
.end method
