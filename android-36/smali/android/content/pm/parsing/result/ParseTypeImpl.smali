.class public Landroid/content/pm/parsing/result/ParseTypeImpl;
.super Ljava/lang/Object;
.source "ParseTypeImpl.java"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput;
.implements Landroid/content/pm/parsing/result/ParseResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/parsing/result/ParseInput;",
        "Landroid/content/pm/parsing/result/ParseResult<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist DEBUG_FILL_STACK_TRACE:Z = false

.field public static final blacklist DEBUG_LOG_ON_ERROR:Z = false

.field public static final blacklist DEBUG_THROW_ALL_ERRORS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ParseTypeImpl"


# instance fields
.field private final blacklist mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

.field private blacklist mDeferredErrors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mErrorCode:I

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mException:Ljava/lang/Exception;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mResult:Ljava/lang/Object;

.field private blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/parsing/result/ParseInput$Callback;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    .line 107
    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    .line 108
    return-void
.end method

.method public static blacklist forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 3

    .line 87
    nop

    .line 88
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 89
    .local v0, "platformCompat":Lcom/android/internal/compat/IPlatformCompat;
    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v2, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v1
.end method

.method public static blacklist forParsingWithoutPlatformCompat()Landroid/content/pm/parsing/result/ParseTypeImpl;
    .registers 2

    .line 72
    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$forDefaultParsing$1(Lcom/android/internal/compat/IPlatformCompat;JLjava/lang/String;I)Z
    .registers 9
    .param p0, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "targetSdkVersion"    # I

    .line 90
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 91
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 92
    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 94
    :try_start_9
    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_e

    return v1

    .line 95
    :catch_e
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParseTypeImpl"

    const-string v3, "IPlatformCompat query failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic blacklist lambda$forParsingWithoutPlatformCompat$0(JLjava/lang/String;I)Z
    .registers 7
    .param p0, "changeId"    # J
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 73
    invoke-static {p0, p1}, Landroid/content/pm/parsing/result/ParseInput$DeferredError;->getTargetSdkForChange(J)I

    move-result v0

    .line 74
    .local v0, "gateSdkVersion":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 75
    return v2

    .line 77
    :cond_9
    if-le p3, v0, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method


# virtual methods
.method public blacklist deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p1, "parseError"    # Ljava/lang/String;
    .param p2, "deferredError"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation

    .line 141
    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_45

    .line 142
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 146
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 149
    :cond_1b
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    invoke-interface {v0, p2, p3, v1, v3}, Landroid/content/pm/parsing/result/ParseInput$Callback;->isChangeEnabled(JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 150
    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 152
    :cond_2c
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-nez v0, :cond_37

    .line 153
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    .line 155
    :cond_37
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 160
    :cond_45
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-nez v0, :cond_50

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    .line 165
    :cond_50
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    .line 172
    iput p2, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    .line 174
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v0

    .line 175
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "index":I
    :goto_c
    const/4 v2, 0x0

    if-ltz v1, :cond_3c

    .line 176
    iget-object v3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 177
    .local v3, "changeId":J
    iget-object v5, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 178
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    iget-object v7, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iget v8, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    invoke-interface {v6, v3, v4, v7, v8}, Landroid/content/pm/parsing/result/ParseInput$Callback;->isChangeEnabled(JLjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 179
    invoke-virtual {p0, v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 183
    :cond_34
    iget-object v6, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v3    # "changeId":J
    .end local v5    # "errorMessage":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 187
    .end local v1    # "index":I
    :cond_3c
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public blacklist error(I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3
    .param p1, "parseError"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 220
    iput p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    .line 221
    iput-object p2, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    .line 237
    return-object p0
.end method

.method public blacklist error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 213
    .local p1, "intentResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<*>;"
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 213
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3
    .param p1, "parseError"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 202
    const/16 v0, -0x6c

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getErrorCode()I
    .registers 2

    .line 257
    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    return v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getException()Ljava/lang/Exception;
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public blacklist getResult()Ljava/lang/Object;
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isError()Z
    .registers 2

    .line 252
    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isSuccess()Z
    .registers 3

    .line 247
    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist reset()Landroid/content/pm/parsing/result/ParseInput;
    .registers 3

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    .line 112
    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    .line 113
    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    .line 115
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 121
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    .line 122
    return-object p0
.end method

.method public blacklist skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 3
    .param p1, "parseError"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 192
    const/16 v0, -0x7d

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(TResultType;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    .line 127
    .local p1, "result":Ljava/lang/Object;, "TResultType;"
    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set to success after set to error, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    const-string v2, "ParseTypeImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_21
    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    .line 133
    return-object p0
.end method
