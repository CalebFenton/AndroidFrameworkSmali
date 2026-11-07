.class public Lcom/android/internal/telephony/RegistrationFailedEvent;
.super Ljava/lang/Object;
.source "RegistrationFailedEvent.java"


# instance fields
.field public final blacklist additionalCauseCode:I

.field public final blacklist causeCode:I

.field public final blacklist cellIdentity:Landroid/telephony/CellIdentity;

.field public final blacklist chosenPlmn:Ljava/lang/String;

.field public final blacklist domain:I


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/CellIdentity;Ljava/lang/String;III)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->cellIdentity:Landroid/telephony/CellIdentity;

    .line 46
    iput-object p2, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->chosenPlmn:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->domain:I

    .line 48
    iput p4, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->causeCode:I

    .line 49
    iput p5, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->additionalCauseCode:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CellIdentity="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->cellIdentity:Landroid/telephony/CellIdentity;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chosenPlmn="

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->chosenPlmn:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", domain="

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->domain:I

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", causeCode="

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->causeCode:I

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", additionalCauseCode="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RegistrationFailedEvent;->additionalCauseCode:I

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
