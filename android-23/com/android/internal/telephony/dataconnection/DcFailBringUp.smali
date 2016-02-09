.class Lcom/android/internal/telephony/dataconnection/DcFailBringUp;
.super Ljava/lang/Object;
.source "DcFailBringUp.java"


# static fields
.field static final ACTION_FAIL_BRINGUP:Ljava/lang/String; = "action_fail_bringup"

.field static final COUNTER:Ljava/lang/String; = "counter"

.field private static final DBG:Z = true

.field static final DEFAULT_COUNTER:I = 0x1

.field static final DEFAULT_FAIL_CAUSE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field static final DEFAULT_SUGGESTED_RETRY_TIME:I = -0x1

.field static final FAIL_CAUSE:Ljava/lang/String; = "fail_cause"

.field static final INTENT_BASE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "DcFailBringUp"

.field static final SUGGESTED_RETRY_TIME:Ljava/lang/String; = "suggested_retry_time"


# instance fields
.field mCounter:I

.field mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field mSuggestedRetryTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 31
    const-class v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->INTENT_BASE:Ljava/lang/String;

    #@c
    .line 42
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@e
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->DEFAULT_FAIL_CAUSE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@10
    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "DcFailBringUp"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 77
    return-void
.end method


# virtual methods
.method saveParameters(III)V
    .locals 1
    .param p1, "counter"    # I
    .param p2, "failCause"    # I
    .param p3, "suggestedRetryTime"    # I

    #@0
    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    #@2
    .line 65
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@8
    .line 66
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    #@a
    .line 63
    return-void
.end method

.method saveParameters(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, ".saveParameters: action="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->log(Ljava/lang/String;)V

    #@1f
    .line 53
    const-string/jumbo v0, "counter"

    #@22
    const/4 v1, 0x1

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@26
    move-result v0

    #@27
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    #@29
    .line 55
    const-string/jumbo v0, "fail_cause"

    #@2c
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->DEFAULT_FAIL_CAUSE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2e
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@31
    move-result v1

    #@32
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@35
    move-result v0

    #@36
    .line 54
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@3c
    .line 57
    const-string/jumbo v0, "suggested_retry_time"

    #@3f
    const/4 v1, -0x1

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@43
    move-result v0

    #@44
    .line 56
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    #@46
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    const-string/jumbo v1, ".saveParameters: "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->log(Ljava/lang/String;)V

    #@61
    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{mCounter="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 72
    const-string/jumbo v1, " mFailCause="

    #@15
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 72
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1b
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 73
    const-string/jumbo v1, " mSuggestedRetryTime="

    #@22
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 73
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    #@28
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 73
    const-string/jumbo v1, "}"

    #@2f
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
