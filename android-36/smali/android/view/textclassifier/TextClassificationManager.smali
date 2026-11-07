.class public final Landroid/view/textclassifier/TextClassificationManager;
.super Ljava/lang/Object;
.source "TextClassificationManager.java"


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "androidtc"

.field private static final blacklist sDefaultSettings:Landroid/view/textclassifier/TextClassificationConstants;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private final greylist-max-o mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

.field private greylist-max-o mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public static synthetic blacklist $r8$lambda$BqtFXnXhXgMcfHGcfYmXwWSliBE(Landroid/view/textclassifier/TextClassificationManager;Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationManager;->lambda$new$0(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationConstants;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassificationManager;->sDefaultSettings:Landroid/view/textclassifier/TextClassificationConstants;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassificationManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationManager;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 70
    return-void
.end method

.method private greylist-max-o getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    .line 236
    const-string v0, "androidtc"

    const-string v1, "Local text-classifier not supported. Returning a no-op text-classifier."

    invoke-static {v0, v1}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method private greylist-max-o getSettings()Landroid/view/textclassifier/TextClassificationConstants;
    .registers 3

    .line 149
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    if-nez v1, :cond_e

    .line 151
    new-instance v1, Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v1}, Landroid/view/textclassifier/TextClassificationConstants;-><init>()V

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 153
    :cond_e
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    monitor-exit v0

    return-object v1

    .line 154
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static greylist-max-o getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 249
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    nop

    .line 251
    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    .line 252
    .local v0, "tcm":Landroid/view/textclassifier/TextClassificationManager;
    if-eqz v0, :cond_13

    .line 253
    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    return-object v1

    .line 256
    :cond_13
    sget-object v1, Landroid/view/textclassifier/TextClassificationManager;->sDefaultSettings:Landroid/view/textclassifier/TextClassificationConstants;

    return-object v1
.end method

.method private blacklist getSystemTextClassifier(I)Landroid/view/textclassifier/TextClassifier;
    .registers 7
    .param p1, "type"    # I

    .line 214
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_48

    if-eqz v1, :cond_44

    .line 217
    :try_start_d
    const-string v1, "androidtc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing SystemTextClassifier, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifier;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v1, v2}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Landroid/view/textclassifier/SystemTextClassifier;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    .line 221
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v3

    const/4 v4, 0x2

    if-ne p1, v4, :cond_36

    const/4 v4, 0x1

    goto :goto_37

    :cond_36
    const/4 v4, 0x0

    :goto_37
    invoke-direct {v1, v2, v3, v4}, Landroid/view/textclassifier/SystemTextClassifier;-><init>(Landroid/content/Context;Landroid/view/textclassifier/TextClassificationConstants;Z)V
    :try_end_3a
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_d .. :try_end_3a} :catch_3c
    .catchall {:try_start_d .. :try_end_3a} :catchall_48

    :try_start_3a
    monitor-exit v0

    .line 219
    return-object v1

    .line 223
    :catch_3c
    move-exception v1

    .line 224
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    const-string v2, "androidtc"

    const-string v3, "Could not initialize SystemTextClassifier"

    invoke-static {v2, v3, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_44
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-object v1

    .line 228
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private synthetic blacklist lambda$new$0(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .registers 4
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 53
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession;

    .line 54
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/view/textclassifier/TextClassificationSession;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public whitelist createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;
    .registers 4
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 179
    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassificationSessionFactory;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    .line 180
    .local v0, "textClassifier":Landroid/view/textclassifier/TextClassifier;
    const-string v1, "Session Factory should never return null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    return-object v0
.end method

.method public greylist-max-o createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)Landroid/view/textclassifier/TextClassifier;
    .registers 4
    .param p1, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 190
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Landroid/view/textclassifier/TextClassificationSession;

    invoke-direct {v0, p1, p2}, Landroid/view/textclassifier/TextClassificationSession;-><init>(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassifier;)V

    return-object v0
.end method

.method public blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 242
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/textclassifier/TextClassifier;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 244
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/TextClassificationConstants;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 245
    return-void
.end method

.method public whitelist getClassifier(I)Landroid/view/textclassifier/TextClassifier;
    .registers 4
    .param p1, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 140
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_TEXT_CLASSIFIER_BY_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 145
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 142
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not have permission android.permission.ACCESS_TEXT_CLASSIFIER_BY_TYPE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v1, :cond_b

    .line 86
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    monitor-exit v0

    return-object v1

    .line 87
    :cond_b
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->isSystemTextClassifierEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 88
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 90
    :cond_1c
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public greylist-max-r getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;
    .registers 3
    .param p1, "type"    # I

    .line 117
    packed-switch p1, :pswitch_data_e

    .line 121
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationManager;->getSystemTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_8
    invoke-direct {p0}, Landroid/view/textclassifier/TextClassificationManager;->getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist setTextClassificationSessionFactory(Landroid/view/textclassifier/TextClassificationSessionFactory;)V
    .registers 4
    .param p1, "factory"    # Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 203
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    if-eqz p1, :cond_8

    .line 205
    :try_start_5
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    goto :goto_c

    .line 207
    :cond_8
    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mDefaultSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationManager;->mSessionFactory:Landroid/view/textclassifier/TextClassificationSessionFactory;

    .line 209
    :goto_c
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 4
    .param p1, "textClassifier"    # Landroid/view/textclassifier/TextClassifier;

    .line 101
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationManager;->mCustomTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
