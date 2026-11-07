.class public final Landroid/adservices/ondevicepersonalization/EventInputParcel;
.super Ljava/lang/Object;
.source "EventInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/EventInputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/EventInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mParameters:Landroid/os/PersistableBundle;

.field private blacklist mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    new-instance v0, Landroid/adservices/ondevicepersonalization/EventInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/EventInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/RequestLogRecord;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "requestLogRecord"    # Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 44
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    .line 65
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 66
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    .line 67
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 44
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 117
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_14

    move-object v2, v0

    goto :goto_1c

    :cond_14
    sget-object v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 118
    .local v2, "requestLogRecord":Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    :goto_1c
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 120
    .local v3, "parameters":Landroid/os/PersistableBundle;
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    .line 121
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    .line 122
    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    invoke-static {v4, v0, v5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getParameters()Landroid/os/PersistableBundle;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public blacklist getRequestLogRecord()Landroid/adservices/ondevicepersonalization/RequestLogRecord;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 100
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mRequestLogRecord:Landroid/adservices/ondevicepersonalization/RequestLogRecord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 102
    :cond_14
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/EventInputParcel;->mParameters:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    return-void
.end method
