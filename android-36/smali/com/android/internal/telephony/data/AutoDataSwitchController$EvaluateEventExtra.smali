.class final Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;
.super Ljava/lang/Record;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AutoDataSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EvaluateEventExtra"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {}
    }
    componentAnnotations = {
        {}
    }
    componentNames = {
        "evaluateReason"
    }
    componentSignatures = {
        null
    }
    componentTypes = {
        I
    }
.end annotation


# instance fields
.field private final blacklist evaluateReason:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    instance-of v0, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    iget p1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetevaluateReason(Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    return p0
.end method

.method private constructor blacklist <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evaluateReason"
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 218
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist evaluateReason()I
    .registers 1

    .line 218
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 218
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->evaluateReason:I

    invoke-static {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra$$ExternalSyntheticRecord1;->m(I)I

    move-result p0

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra;

    const-string v1, "evaluateReason"

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
