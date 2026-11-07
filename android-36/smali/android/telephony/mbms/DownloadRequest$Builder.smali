.class public Landroid/telephony/mbms/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o appIntent:Ljava/lang/String;

.field private greylist-max-o destination:Landroid/net/Uri;

.field private greylist-max-o fileServiceId:Ljava/lang/String;

.field private greylist-max-o source:Landroid/net/Uri;

.field private greylist-max-o subscriptionId:I

.field private greylist-max-o version:I


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "destinationUri"    # Landroid/net/Uri;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    .line 166
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    .line 169
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    .line 170
    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->destination:Landroid/net/Uri;

    .line 171
    return-void

    .line 167
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source and destination URIs must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist fromDownloadRequest(Landroid/telephony/mbms/DownloadRequest;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 4
    .param p0, "other"    # Landroid/telephony/mbms/DownloadRequest;

    .line 118
    new-instance v0, Landroid/telephony/mbms/DownloadRequest$Builder;

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetsourceUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetdestinationUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/mbms/DownloadRequest$Builder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/telephony/mbms/DownloadRequest$Builder;->setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/telephony/mbms/DownloadRequest$Builder;->setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;

    move-result-object v0

    .line 121
    .local v0, "result":Landroid/telephony/mbms/DownloadRequest$Builder;
    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetserializedResultIntentForApp(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    .line 124
    return-object v0
.end method

.method public static whitelist fromSerializedRequest([B)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 7
    .param p0, "data"    # [B

    .line 136
    const-string v0, "MbmsDownloadRequest"

    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .local v1, "stream":Ljava/io/ObjectInputStream;
    nop

    .line 138
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    .line 139
    .local v2, "dataContainer":Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
    new-instance v3, Landroid/telephony/mbms/DownloadRequest$Builder;

    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->-$$Nest$fgetsource(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->-$$Nest$fgetdestination(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/telephony/mbms/DownloadRequest$Builder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 140
    .local v3, "builder":Landroid/telephony/mbms/DownloadRequest$Builder;
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->-$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I

    move-result v4

    iput v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    .line 141
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->-$$Nest$fgetappIntent(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    .line 142
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->-$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    .line 143
    invoke-static {v2}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->-$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I

    move-result v4

    iput v4, v3, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_38} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_38} :catch_3a

    .line 151
    .end local v1    # "stream":Ljava/io/ObjectInputStream;
    .end local v2    # "dataContainer":Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
    nop

    .line 152
    return-object v3

    .line 148
    .end local v3    # "builder":Landroid/telephony/mbms/DownloadRequest$Builder;
    :catch_3a
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "Got ClassNotFoundException trying to parse opaque data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 144
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_46
    move-exception v1

    .line 146
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Got IOException trying to parse opaque data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/mbms/DownloadRequest;
    .registers 9

    .line 220
    new-instance v0, Landroid/telephony/mbms/DownloadRequest;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->destination:Landroid/net/Uri;

    iget v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    iget-object v5, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAppIntent(Landroid/content/Intent;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-gt v0, v1, :cond_13

    .line 216
    return-object p0

    .line 213
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App intent must not exceed length 50000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 189
    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public whitelist setServiceInfo(Landroid/telephony/mbms/FileServiceInfo;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 3
    .param p1, "serviceInfo"    # Landroid/telephony/mbms/FileServiceInfo;

    .line 179
    invoke-virtual {p1}, Landroid/telephony/mbms/FileServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public whitelist setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;
    .registers 2
    .param p1, "subscriptionId"    # I

    .line 198
    iput p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    .line 199
    return-object p0
.end method
