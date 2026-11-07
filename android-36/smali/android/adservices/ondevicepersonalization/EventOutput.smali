.class public final Landroid/adservices/ondevicepersonalization/EventOutput;
.super Ljava/lang/Object;
.source "EventOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/EventOutput$Builder;
    }
.end annotation


# instance fields
.field blacklist mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;


# direct methods
.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/EventLogRecord;)V
    .registers 3
    .param p1, "eventLogRecord"    # Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 54
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventOutput;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 57
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 77
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 79
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/EventOutput;

    .line 81
    .local v0, "that":Landroid/adservices/ondevicepersonalization/EventOutput;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventOutput;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/EventOutput;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    .line 82
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 81
    return v1

    .line 77
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/EventOutput;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEventLogRecord()Landroid/adservices/ondevicepersonalization/EventLogRecord;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventOutput;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventOutput;->mEventLogRecord:Landroid/adservices/ondevicepersonalization/EventLogRecord;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 93
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method
