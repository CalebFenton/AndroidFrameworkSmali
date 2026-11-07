.class public final Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;
.super Ljava/lang/Object;
.source "WebTriggerOutputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEventLogRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Ljava/util/List;)V
    .registers 6
    .param p1, "requestLogRecord"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/adservices/ondevicepersonalization/RequestLogRecord;",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p2, "eventLogRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 50
    nop

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 91
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 92
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 93
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/WebTriggerOutput;)V
    .registers 4
    .param p1, "value"    # Landroid/adservices/ondevicepersonalization/WebTriggerOutput;

    .line 55
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    move-result-object v0

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/WebTriggerOutput;->getEventLogRecords()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;-><init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Ljava/util/List;)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 50
    nop

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 146
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_17

    move-object v2, v0

    goto :goto_1f

    :cond_17
    sget-object v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 147
    .local v2, "requestLogRecord":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    :goto_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "eventLogRecords":Ljava/util/List;, "Ljava/util/List<Landroid/adservices/ondevicepersonalization/EventLogRecord;>;"
    const-class v4, Landroid/adservices/ondevicepersonalization/EventLogRecord;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 150
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 151
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    .line 152
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    invoke-static {v4, v0, v5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEventLogRecords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/adservices/ondevicepersonalization/EventLogRecord;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 129
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 131
    :cond_14
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/WebTriggerOutputParcel;->mEventLogRecords:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 132
    return-void
.end method
