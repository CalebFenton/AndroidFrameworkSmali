.class public interface abstract Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor;
.super Ljava/lang/Object;
.source "ConfigProviderAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;
    }
.end annotation


# static fields
.field public static final blacklist DOMAIN_SATELLITE:Ljava/lang/String; = "satellite"


# virtual methods
.method public abstract blacklist getConfigParser(Ljava/lang/String;)Lcom/android/internal/telephony/configupdate/ConfigParser;
.end method

.method public abstract blacklist registerCallback(Ljava/util/concurrent/Executor;Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;)V
.end method

.method public abstract blacklist unregisterCallback(Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;)V
.end method
