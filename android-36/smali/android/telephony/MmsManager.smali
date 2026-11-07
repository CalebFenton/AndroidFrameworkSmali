.class public Landroid/telephony/MmsManager;
.super Ljava/lang/Object;
.source "MmsManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MmsManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/telephony/MmsManager;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist downloadMultimediaMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 101
    :try_start_0
    const-string/jumbo v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move-object v1, v0

    .line 102
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_f

    .line 103
    return-void

    .line 105
    :cond_f
    nop

    .line 106
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/MmsManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v11

    .line 105
    const/16 v3, -0x2710

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IMms;->downloadMessage(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    .line 110
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    goto :goto_2a

    .line 108
    :catch_29
    move-exception v0

    .line 111
    :goto_2a
    return-void
.end method

.method public blacklist sendMultimediaMessage(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 20
    .param p1, "subId"    # I
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 68
    :try_start_0
    const-string/jumbo v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    move-object v1, v0

    .line 69
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_f

    .line 70
    return-void

    .line 73
    :cond_f
    nop

    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/MmsManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v11

    .line 73
    const/16 v3, -0x2710

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/IMms;->sendMessage(IILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    .line 78
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    goto :goto_2a

    .line 76
    :catch_29
    move-exception v0

    .line 79
    :goto_2a
    return-void
.end method
