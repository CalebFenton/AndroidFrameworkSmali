.class public final Landroid/view/textclassifier/SystemTextClassifier;
.super Ljava/lang/Object;
.source "SystemTextClassifier.java"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;,
        Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "androidtc"


# instance fields
.field private final greylist-max-o mFallback:Landroid/view/textclassifier/TextClassifier;

.field private final greylist-max-o mManagerService:Landroid/service/textclassifier/ITextClassifierService;

.field private greylist-max-o mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final greylist-max-o mSettings:Landroid/view/textclassifier/TextClassificationConstants;

.field private final blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Landroid/view/textclassifier/TextClassificationConstants;
    .param p3, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    nop

    .line 71
    const-string/jumbo v0, "textclassification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/service/textclassifier/ITextClassifierService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextClassifierService;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    .line 72
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationConstants;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 73
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    .line 76
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v0, v1, v2, p3}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 79
    return-void
.end method


# virtual methods
.method public whitelist classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/TextClassification$Request;

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 113
    :try_start_6
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextClassification$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 114
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textclassification"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 116
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextClassification;>;"
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 117
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassification;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_26

    .line 118
    .local v1, "classification":Landroid/view/textclassifier/TextClassification;
    if-eqz v1, :cond_25

    .line 119
    return-object v1

    .line 123
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextClassification;>;"
    .end local v1    # "classification":Landroid/view/textclassifier/TextClassification;
    :cond_25
    goto :goto_2e

    .line 121
    :catch_26
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error classifying text. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method

.method public whitelist destroy()V
    .registers 4

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, v1}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 246
    :cond_b
    goto :goto_14

    .line 244
    :catch_c
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error destroying classification session."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public whitelist detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/TextLanguage$Request;

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 194
    :try_start_6
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextLanguage$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 195
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textlanguage"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 197
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextLanguage;>;"
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 198
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLanguage;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_26

    .line 199
    .local v1, "textLanguage":Landroid/view/textclassifier/TextLanguage;
    if-eqz v1, :cond_25

    .line 200
    return-object v1

    .line 204
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextLanguage;>;"
    .end local v1    # "textLanguage":Landroid/view/textclassifier/TextLanguage;
    :cond_25
    goto :goto_2e

    .line 202
    :catch_26
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error detecting language."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->detectLanguage(Landroid/view/textclassifier/TextLanguage$Request;)Landroid/view/textclassifier/TextLanguage;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 251
    const-string v0, "SystemTextClassifier:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 253
    const-string v0, "mFallback"

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 254
    const-string v0, "mSessionId"

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 255
    const-string v0, "mSystemTcMetadata"

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 256
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 257
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 258
    return-void
.end method

.method public whitelist generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/TextLinks$Request;

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 135
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/textclassifier/SystemTextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/textclassifier/TextClassifier$Utils;->checkTextLength(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 136
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1b
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartLinkifyEnabled()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->isLegacyFallback()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 139
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifier$Utils;->generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0

    .line 143
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextLinks$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 144
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textlinks"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 146
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextLinks;>;"
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 147
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextLinks;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4a} :catch_4e

    .line 148
    .local v1, "links":Landroid/view/textclassifier/TextLinks;
    if-eqz v1, :cond_4d

    .line 149
    return-object v1

    .line 153
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextLinks;>;"
    .end local v1    # "links":Landroid/view/textclassifier/TextLinks;
    :cond_4d
    goto :goto_56

    .line 151
    :catch_4e
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error generating links. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_56
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMaxGenerateLinksTextLength()I
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getGenerateLinksMaxTextLength()I

    move-result v0

    return v0
.end method

.method greylist-max-o initializeRemoteSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 6
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 269
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    .line 271
    :try_start_8
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextClassificationContext;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 272
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, p1, v1}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    .line 275
    goto :goto_1d

    .line 273
    :catch_15
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error starting a new classification session."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public whitelist onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 163
    :try_start_6
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/SelectionEvent;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 164
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v0, v1, p1}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    .line 167
    goto :goto_1b

    .line 165
    :catch_13
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error reporting selection event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public whitelist onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 172
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 177
    :try_start_6
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 178
    new-instance v0, Landroid/view/textclassifier/TextClassificationContext$Builder;

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    goto :goto_23

    .line 179
    :cond_1f
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    :goto_23
    nop

    .line 180
    .local v0, "tcContext":Landroid/view/textclassifier/TextClassificationContext;
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassificationContext;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)V

    .line 182
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1}, Landroid/service/textclassifier/ITextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_33} :catch_34

    .line 185
    .end local v0    # "tcContext":Landroid/view/textclassifier/TextClassificationContext;
    goto :goto_3c

    .line 183
    :catch_34
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error reporting textclassifier event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method public whitelist suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/ConversationActions$Request;

    .line 210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 214
    :try_start_6
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/ConversationActions$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 215
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string v1, "conversation-actions"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 217
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/ConversationActions;>;"
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 218
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/ConversationActions;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_21} :catch_25

    .line 219
    .local v1, "conversationActions":Landroid/view/textclassifier/ConversationActions;
    if-eqz v1, :cond_24

    .line 220
    return-object v1

    .line 224
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/ConversationActions;>;"
    .end local v1    # "conversationActions":Landroid/view/textclassifier/ConversationActions;
    :cond_24
    goto :goto_2d

    .line 222
    :catch_25
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error reporting selection event."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2d
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestConversationActions(Landroid/view/textclassifier/ConversationActions$Request;)Landroid/view/textclassifier/ConversationActions;

    move-result-object v0

    return-object v0
.end method

.method public whitelist suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;
    .registers 5
    .param p1, "request"    # Landroid/view/textclassifier/TextSelection$Request;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Landroid/view/textclassifier/TextClassifier$Utils;->checkMainThread()V

    .line 90
    :try_start_6
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0}, Landroid/view/textclassifier/TextSelection$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 91
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;

    const-string/jumbo v1, "textselection"

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    .line 93
    .local v0, "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextSelection;>;"
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier;->mManagerService:Landroid/service/textclassifier/ITextClassifierService;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-interface {v1, v2, p1, v0}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 94
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;->get()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextSelection;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_26

    .line 95
    .local v1, "selection":Landroid/view/textclassifier/TextSelection;
    if-eqz v1, :cond_25

    .line 96
    return-object v1

    .line 100
    .end local v0    # "callback":Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback;, "Landroid/view/textclassifier/SystemTextClassifier$BlockingCallback<Landroid/view/textclassifier/TextSelection;>;"
    .end local v1    # "selection":Landroid/view/textclassifier/TextSelection;
    :cond_25
    goto :goto_2e

    .line 98
    :catch_26
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "androidtc"

    const-string v2, "Error suggesting selection for text. Using fallback."

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier;->mFallback:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    return-object v0
.end method
