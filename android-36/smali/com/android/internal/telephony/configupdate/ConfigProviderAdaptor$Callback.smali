.class public Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor$Callback;
.super Ljava/lang/Object;
.source "ConfigProviderAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/configupdate/ConfigProviderAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChanged(Lcom/android/internal/telephony/configupdate/ConfigParser;)V
    .registers 2

    .line 0
    return-void
.end method
