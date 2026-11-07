.class public final Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;
.super Ljava/lang/Record;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsRegistrationRadioTechInfo"
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
        "phoneId",
        "imsRegistrationTech",
        "imsRegistrationState"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        I,
        I,
        I
    }
.end annotation


# instance fields
.field private final blacklist imsRegistrationState:I

.field private final blacklist imsRegistrationTech:I

.field private final blacklist phoneId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId:I

    iget v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech:I

    iget v1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech:I

    if-ne v0, v1, :cond_1a

    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState:I

    iget p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState:I

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "phoneId",
            "imsRegistrationTech",
            "imsRegistrationState"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId:I

    iput p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech:I

    iput p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 273
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId:I

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech:I

    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState:I

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo$$ExternalSyntheticRecord0;->m(III)I

    move-result p0

    return p0
.end method

.method public blacklist imsRegistrationState()I
    .registers 1

    .line 273
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationState:I

    return p0
.end method

.method public blacklist imsRegistrationTech()I
    .registers 1

    .line 273
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->imsRegistrationTech:I

    return p0
.end method

.method public blacklist phoneId()I
    .registers 1

    .line 273
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->phoneId:I

    return p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 273
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsRegistrationRadioTechInfo;

    const-string v1, "phoneId;imsRegistrationTech;imsRegistrationState"

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/data/AutoDataSwitchController$EvaluateEventExtra$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
