.class final Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
.super Ljava/lang/Object;
.source "SystemTextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SystemTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResponseReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mName:Ljava/lang/String;

.field private greylist-max-o mResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mSettings:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/view/textclassifier/TextClassificationConstants;

    .line 309
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 310
    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    .line 311
    iput-object p2, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 312
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;Landroid/view/textclassifier/SystemTextClassifier-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;-><init>(Ljava/lang/String;Landroid/view/textclassifier/TextClassificationConstants;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 330
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    const-string v0, "androidtc"

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_55

    .line 332
    :try_start_c
    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    .line 333
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->getSystemTextClassifierApiTimeoutInSecond()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 332
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 335
    .local v1, "success":Z
    if-nez v1, :cond_34

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout in ResponseReceiver.get(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_34} :catch_35

    .line 341
    .end local v1    # "success":Z
    :cond_34
    goto :goto_55

    .line 338
    :catch_35
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted during ResponseReceiver.get(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_55
    :goto_55
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mResponse:Ljava/lang/Object;

    return-object v0
.end method

.method public greylist-max-o onFailure()V
    .registers 4

    .line 320
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request failed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "androidtc"

    invoke-static {v2, v0, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 322
    return-void
.end method

.method public greylist-max-o onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 315
    .local p0, "this":Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;, "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mResponse:Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 317
    return-void
.end method
