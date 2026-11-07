.class public final Landroid/adservices/ondevicepersonalization/EventInput;
.super Ljava/lang/Object;
.source "EventInput.java"


# instance fields
.field private blacklist mParameters:Landroid/os/PersistableBundle;

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/EventInputParcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/adservices/ondevicepersonalization/EventInputParcel;

    .line 48
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/EventInputParcel;->getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    move-result-object v0

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/EventInputParcel;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/adservices/ondevicepersonalization/EventInput;-><init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/os/PersistableBundle;)V

    .line 49
    return-void
.end method

.method public constructor whitelist <init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "requestLogRecord"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 44
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mParameters:Landroid/os/PersistableBundle;

    .line 66
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 67
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mParameters:Landroid/os/PersistableBundle;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 90
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 92
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/EventInput;

    .line 94
    .local v2, "that":Landroid/adservices/ondevicepersonalization/EventInput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/EventInput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 95
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mParameters:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/EventInput;->mParameters:Landroid/os/PersistableBundle;

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 94
    :goto_2b
    return v0

    .line 90
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/EventInput;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist getParameters()Landroid/os/PersistableBundle;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mParameters:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventInput;->mParameters:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 104
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method
