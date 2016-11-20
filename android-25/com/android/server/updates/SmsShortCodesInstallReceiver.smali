.class public Lcom/android/server/updates/SmsShortCodesInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SmsShortCodesInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 22
    const-string/jumbo v0, "/data/misc/sms/"

    #@3
    const-string/jumbo v1, "codes"

    #@6
    const-string/jumbo v2, "metadata/"

    #@9
    const-string/jumbo v3, "version"

    #@c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 21
    return-void
.end method
