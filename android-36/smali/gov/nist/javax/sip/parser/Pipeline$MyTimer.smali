.class Lgov/nist/javax/sip/parser/Pipeline$MyTimer;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/parser/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation


# instance fields
.field private greylist isCancelled:Z

.field greylist pipeline:Lgov/nist/javax/sip/parser/Pipeline;


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Pipeline;Lgov/nist/javax/sip/parser/Pipeline;)V
    .registers 3
    .param p1, "this$0"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p2, "pipeline"    # Lgov/nist/javax/sip/parser/Pipeline;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    .line 64
    iput-object p2, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->pipeline:Lgov/nist/javax/sip/parser/Pipeline;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel()Z
    .registers 3

    .line 79
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;->cancel()Z

    move-result v0

    .line 80
    .local v0, "retval":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->isCancelled:Z

    .line 81
    return v0
.end method

.method protected greylist runTask()V
    .registers 2

    .line 68
    iget-boolean v0, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->isCancelled:Z

    if-eqz v0, :cond_5

    .line 69
    return-void

    .line 72
    :cond_5
    :try_start_5
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline$MyTimer;->pipeline:Lgov/nist/javax/sip/parser/Pipeline;

    invoke-virtual {v0}, Lgov/nist/javax/sip/parser/Pipeline;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    .line 75
    goto :goto_f

    .line 73
    :catch_b
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 76
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_f
    return-void
.end method
