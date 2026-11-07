.class public Landroid/telephony/ims/ImsUtListener;
.super Ljava/lang/Object;
.source "ImsUtListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsUtListener"


# instance fields
.field private greylist-max-o mServiceInterface:Lcom/android/ims/internal/IImsUtListener;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 2
    .param p1, "serviceInterface"    # Lcom/android/ims/internal/IImsUtListener;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    .line 180
    return-void
.end method


# virtual methods
.method public blacklist getListenerInterface()Lcom/android/ims/internal/IImsUtListener;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    return-object v0
.end method

.method public whitelist onLineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "configuration"    # Landroid/telephony/ims/ImsSsInfo;

    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 127
    goto :goto_a

    .line 125
    :catch_6
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .registers 5
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 169
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 172
    goto :goto_f

    .line 170
    :catch_6
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "onSupplementaryServiceIndication: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public whitelist onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 148
    goto :goto_10

    .line 146
    :catch_7
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationCallBarringQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 156
    goto :goto_10

    .line 154
    :catch_7
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationCallForwardQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 164
    goto :goto_10

    .line 162
    :catch_7
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationCallWaitingQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "configuration"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 108
    goto :goto_10

    .line 106
    :catch_7
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationQueried: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 140
    goto :goto_10

    .line 138
    :catch_7
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationQueryFailed: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 84
    goto :goto_10

    .line 82
    :catch_7
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationUpdateFailed: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public whitelist onUtConfigurationUpdated(I)V
    .registers 5
    .param p1, "id"    # I

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsUtListener;->mServiceInterface:Lcom/android/ims/internal/IImsUtListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 76
    goto :goto_10

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsUtListener"

    const-string/jumbo v2, "utConfigurationUpdated: remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method
