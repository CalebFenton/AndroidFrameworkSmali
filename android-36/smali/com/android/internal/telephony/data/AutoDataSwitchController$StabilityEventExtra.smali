.class final Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;
.super Ljava/lang/Record;
.source "AutoDataSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AutoDataSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StabilityEventExtra"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "targetPhoneId",
        "switchType",
        "needValidation"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        Z
    }
.end annotation


# instance fields
.field private final blacklist needValidation:Z

.field private final blacklist switchType:I

.field private final blacklist targetPhoneId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    iget-boolean v1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    iget v1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    if-ne v0, v1, :cond_1a

    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    iget p1, p1, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetneedValidation(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetswitchType(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettargetPhoneId(Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    return p0
.end method

.method private constructor blacklist <init>(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "targetPhoneId",
            "switchType",
            "needValidation"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    iput p2, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    iput-boolean p3, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(IIZLcom/android/internal/telephony/data/AutoDataSwitchController-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra$$ExternalSyntheticRecord0;->m(ZII)I

    move-result p0

    return p0
.end method

.method public blacklist needValidation()Z
    .registers 1

    .line 201
    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    return p0
.end method

.method public blacklist switchType()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    return p0
.end method

.method public blacklist targetPhoneId()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StabilityEventExtra{targetPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->targetPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", switchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->switchType:I

    .line 208
    invoke-static {v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController;->switchTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needValidation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/AutoDataSwitchController$StabilityEventExtra;->needValidation:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
