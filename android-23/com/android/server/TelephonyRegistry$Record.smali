.class Lcom/android/server/TelephonyRegistry$Record;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field callerUserId:I

.field callingPackage:Ljava/lang/String;

.field canReadPhoneState:Z

.field events:I

.field onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field phoneId:I

.field subId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 100
    iput v0, p0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@6
    .line 102
    iput v0, p0, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    #@8
    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$Record;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$Record;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method matchOnSubscriptionsChangedListener()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method matchPhoneStateListenerEvent(I)Z
    .locals 2
    .param p1, "events"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 107
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->events:I

    #@7
    and-int/2addr v1, p1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{callingPackage="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " binder="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 117
    const-string/jumbo v1, " callback="

    #@22
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 117
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    #@28
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 118
    const-string/jumbo v1, " onSubscriptionsChangedListenererCallback="

    #@2f
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 119
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    #@35
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 120
    const-string/jumbo v1, " callerUserId="

    #@3c
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 120
    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    #@42
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 120
    const-string/jumbo v1, " subId="

    #@49
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 120
    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    #@4f
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 120
    const-string/jumbo v1, " phoneId="

    #@56
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 120
    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    #@5c
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 121
    const-string/jumbo v1, " events="

    #@63
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 121
    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->events:I

    #@69
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    .line 122
    const-string/jumbo v1, " canReadPhoneState="

    #@74
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 122
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    #@7a
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 122
    const-string/jumbo v1, "}"

    #@81
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    return-object v0
.end method
