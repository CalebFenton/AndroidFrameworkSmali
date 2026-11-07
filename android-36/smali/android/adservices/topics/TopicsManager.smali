.class public final Landroid/adservices/topics/TopicsManager;
.super Ljava/lang/Object;
.source "TopicsManager.java"


# static fields
.field static final blacklist EMPTY_SDK:Ljava/lang/String; = ""

.field static final blacklist RECORD_OBSERVATION_DEFAULT:Z = true

.field public static final blacklist TOPICS_SERVICE:Ljava/lang/String; = "topics_service"

.field private static final blacklist sLogger:Lcom/android/adservices/LoggerFactory$Logger;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mServiceBinder:Lcom/android/adservices/ServiceBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/adservices/ServiceBinder<",
            "Landroid/adservices/topics/ITopicsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mbuildGetTopicsResponse(Landroid/adservices/topics/TopicsManager;Landroid/adservices/topics/GetTopicsResult;)Landroid/adservices/topics/GetTopicsResponse;
    .registers 2

    invoke-direct {p0, p1}, Landroid/adservices/topics/TopicsManager;->buildGetTopicsResponse(Landroid/adservices/topics/GetTopicsResult;)Landroid/adservices/topics/GetTopicsResponse;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 57
    invoke-static {}, Lcom/android/adservices/LoggerFactory;->getTopicsLogger()Lcom/android/adservices/LoggerFactory$Logger;

    move-result-object v0

    sput-object v0, Landroid/adservices/topics/TopicsManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_d

    .line 103
    invoke-virtual {p0, p1}, Landroid/adservices/topics/TopicsManager;->initialize(Landroid/content/Context;)Landroid/adservices/topics/TopicsManager;

    .line 104
    return-void

    .line 99
    :cond_d
    new-instance v0, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v1, "Service is not available."

    invoke-direct {v0, v1}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist buildGetTopicsResponse(Landroid/adservices/topics/GetTopicsResult;)Landroid/adservices/topics/GetTopicsResponse;
    .registers 5
    .param p1, "resultParcel"    # Landroid/adservices/topics/GetTopicsResult;

    .line 229
    new-instance v0, Landroid/adservices/topics/GetTopicsResponse$Builder;

    .line 230
    invoke-direct {p0, p1}, Landroid/adservices/topics/TopicsManager;->getTopicList(Landroid/adservices/topics/GetTopicsResult;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/adservices/topics/TopicsManager;->getEncryptedTopicList(Landroid/adservices/topics/GetTopicsResult;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/adservices/topics/GetTopicsResponse$Builder;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 231
    invoke-virtual {v0}, Landroid/adservices/topics/GetTopicsResponse$Builder;->build()Landroid/adservices/topics/GetTopicsResponse;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/adservices/topics/TopicsManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1b

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_15

    .line 88
    const-class v0, Landroid/adservices/topics/TopicsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/topics/TopicsManager;

    goto :goto_1a

    .line 89
    :cond_15
    new-instance v0, Landroid/adservices/topics/TopicsManager;

    invoke-direct {v0, p0}, Landroid/adservices/topics/TopicsManager;-><init>(Landroid/content/Context;)V

    .line 87
    :goto_1a
    return-object v0

    .line 84
    :cond_1b
    new-instance v0, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v1, "Service is not available."

    invoke-direct {v0, v1}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getEncryptedTopicList(Landroid/adservices/topics/GetTopicsResult;)Ljava/util/List;
    .registers 12
    .param p1, "resultParcel"    # Landroid/adservices/topics/GetTopicsResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/topics/GetTopicsResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/adservices/topics/EncryptedTopic;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "encryptedTopicList":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/EncryptedTopic;>;"
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->getEncryptedTopics()Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "encryptedTopics":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->getEncryptionKeys()Ljava/util/List;

    move-result-object v2

    .line 256
    .local v2, "encryptionKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->getEncapsulatedKeys()Ljava/util/List;

    move-result-object v3

    .line 257
    .local v3, "encapsulatedKeys":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 258
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v4, :cond_35

    .line 259
    new-instance v6, Landroid/adservices/topics/EncryptedTopic;

    .line 261
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-direct {v6, v7, v8, v9}, Landroid/adservices/topics/EncryptedTopic;-><init>([BLjava/lang/String;[B)V

    .line 262
    .local v6, "encryptedTopic":Landroid/adservices/topics/EncryptedTopic;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v6    # "encryptedTopic":Landroid/adservices/topics/EncryptedTopic;
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 265
    .end local v5    # "i":I
    :cond_35
    return-object v0
.end method

.method private blacklist getService()Landroid/adservices/topics/ITopicsService;
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/adservices/topics/TopicsManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/adservices/topics/ITopicsService;

    .line 129
    .local v0, "service":Landroid/adservices/topics/ITopicsService;
    if-eqz v0, :cond_b

    .line 132
    return-object v0

    .line 130
    :cond_b
    new-instance v1, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;

    const-string v2, "Service is not available."

    invoke-direct {v1, v2}, Lcom/android/adservices/shared/common/exception/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getTopicList(Landroid/adservices/topics/GetTopicsResult;)Ljava/util/List;
    .registers 14
    .param p1, "resultParcel"    # Landroid/adservices/topics/GetTopicsResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/topics/GetTopicsResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/adservices/topics/Topic;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->getTaxonomyVersions()Ljava/util/List;

    move-result-object v0

    .line 236
    .local v0, "taxonomyVersionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->getModelVersions()Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "modelVersionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v2

    .line 238
    .local v2, "topicsCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v3, "topicList":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/topics/Topic;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 240
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v4, :cond_41

    .line 241
    new-instance v6, Landroid/adservices/topics/Topic;

    .line 243
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 244
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 245
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct/range {v6 .. v11}, Landroid/adservices/topics/Topic;-><init>(JJI)V

    .line 246
    .local v6, "topic":Landroid/adservices/topics/Topic;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v6    # "topic":Landroid/adservices/topics/Topic;
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 249
    .end local v5    # "i":I
    :cond_41
    return-object v3
.end method


# virtual methods
.method public whitelist getTopics(Landroid/adservices/topics/GetTopicsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .param p1, "getTopicsRequest"    # Landroid/adservices/topics/GetTopicsRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/topics/GetTopicsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/adservices/topics/GetTopicsResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p3, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/adservices/topics/GetTopicsResponse;Ljava/lang/Exception;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/adservices/common/CallerMetadata$Builder;

    invoke-direct {v0}, Landroid/adservices/common/CallerMetadata$Builder;-><init>()V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/adservices/common/CallerMetadata$Builder;->setBinderElapsedTimestamp(J)Landroid/adservices/common/CallerMetadata$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/adservices/common/CallerMetadata$Builder;->build()Landroid/adservices/common/CallerMetadata;

    move-result-object v0

    .line 156
    .local v0, "callerMetadata":Landroid/adservices/common/CallerMetadata;
    invoke-direct {p0}, Landroid/adservices/topics/TopicsManager;->getService()Landroid/adservices/topics/ITopicsService;

    move-result-object v1

    .line 157
    .local v1, "service":Landroid/adservices/topics/ITopicsService;
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsRequest;->getAdsSdkName()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "sdkName":Ljava/lang/String;
    const-string v3, ""

    .line 159
    .local v3, "appPackageName":Ljava/lang/String;
    const-string v4, ""

    .line 161
    .local v4, "sdkPackageName":Ljava/lang/String;
    iget-object v5, p0, Landroid/adservices/topics/TopicsManager;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {v5}, Landroid/adservices/common/SandboxedSdkContextUtils;->getAsSandboxedSdkContext(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v5

    .line 163
    .local v5, "sandboxedSdkContext":Landroid/app/sdksandbox/SandboxedSdkContext;
    if-eqz v5, :cond_5a

    .line 165
    invoke-virtual {v5}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkPackageName()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-virtual {v5}, Landroid/app/sdksandbox/SandboxedSdkContext;->getClientPackageName()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 173
    invoke-virtual {v5}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkName()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "sdkNameFromSandboxedContext":Ljava/lang/String;
    if-eqz v6, :cond_4a

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 179
    nop

    .line 180
    .end local v2    # "sdkName":Ljava/lang/String;
    .local v6, "sdkName":Ljava/lang/String;
    goto :goto_65

    .line 175
    .restart local v2    # "sdkName":Ljava/lang/String;
    .local v6, "sdkNameFromSandboxedContext":Ljava/lang/String;
    :cond_4a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Sdk Name From SandboxedSdkContext should not be null or empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 169
    .end local v6    # "sdkNameFromSandboxedContext":Ljava/lang/String;
    :cond_52
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "When calling Topics API from Sandbox, caller should not set Ads Sdk Name"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    :cond_5a
    if-nez v2, :cond_5e

    .line 185
    const-string v2, ""

    .line 187
    :cond_5e
    iget-object v6, p0, Landroid/adservices/topics/TopicsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v6, v2

    .line 190
    .end local v2    # "sdkName":Ljava/lang/String;
    .local v6, "sdkName":Ljava/lang/String;
    :goto_65
    :try_start_65
    new-instance v2, Landroid/adservices/topics/GetTopicsParam$Builder;

    invoke-direct {v2}, Landroid/adservices/topics/GetTopicsParam$Builder;-><init>()V

    .line 192
    invoke-virtual {v2, v3}, Landroid/adservices/topics/GetTopicsParam$Builder;->setAppPackageName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsParam$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {v2, v6}, Landroid/adservices/topics/GetTopicsParam$Builder;->setSdkName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsParam$Builder;

    move-result-object v2

    .line 194
    invoke-virtual {v2, v4}, Landroid/adservices/topics/GetTopicsParam$Builder;->setSdkPackageName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsParam$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {p1}, Landroid/adservices/topics/GetTopicsRequest;->shouldRecordObservation()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/adservices/topics/GetTopicsParam$Builder;->setShouldRecordObservation(Z)Landroid/adservices/topics/GetTopicsParam$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/adservices/topics/GetTopicsParam$Builder;->build()Landroid/adservices/topics/GetTopicsParam;

    move-result-object v2

    new-instance v7, Landroid/adservices/topics/TopicsManager$1;

    invoke-direct {v7, p0, p2, p3}, Landroid/adservices/topics/TopicsManager$1;-><init>(Landroid/adservices/topics/TopicsManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 190
    invoke-interface {v1, v2, v0, v7}, Landroid/adservices/topics/ITopicsService;->getTopics(Landroid/adservices/topics/GetTopicsParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/topics/IGetTopicsCallback;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_8a} :catch_8b

    .line 225
    goto :goto_96

    .line 222
    :catch_8b
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v7, Landroid/adservices/topics/TopicsManager;->sLogger:Lcom/android/adservices/LoggerFactory$Logger;

    const-string v8, "RemoteException"

    invoke-virtual {v7, v2, v8}, Lcom/android/adservices/LoggerFactory$Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)I

    .line 224
    invoke-interface {p3, v2}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 226
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_96
    return-void
.end method

.method public blacklist initialize(Landroid/content/Context;)Landroid/adservices/topics/TopicsManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    iput-object p1, p0, Landroid/adservices/topics/TopicsManager;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/adservices/topics/TopicsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/adservices/topics/TopicsManager$$ExternalSyntheticLambda0;-><init>()V

    .line 119
    const-string v1, "android.adservices.TOPICS_SERVICE"

    invoke-static {p1, v1, v0}, Lcom/android/adservices/ServiceBinder;->getServiceBinder(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Function;)Lcom/android/adservices/ServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/TopicsManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    .line 123
    return-object p0
.end method

.method public blacklist unbindFromService()V
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/adservices/topics/TopicsManager;->mServiceBinder:Lcom/android/adservices/ServiceBinder;

    invoke-virtual {v0}, Lcom/android/adservices/ServiceBinder;->unbindFromService()V

    .line 279
    return-void
.end method
