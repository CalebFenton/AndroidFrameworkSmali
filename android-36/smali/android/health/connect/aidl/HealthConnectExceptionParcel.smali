.class public final Landroid/health/connect/aidl/HealthConnectExceptionParcel;
.super Ljava/lang/Object;
.source "HealthConnectExceptionParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/aidl/HealthConnectExceptionParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHealthConnectException:Landroid/health/connect/HealthConnectException;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/health/connect/aidl/HealthConnectExceptionParcel$1;

    invoke-direct {v0}, Landroid/health/connect/aidl/HealthConnectExceptionParcel$1;-><init>()V

    sput-object v0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/health/connect/HealthConnectException;)V
    .registers 2
    .param p1, "healthConnectException"    # Landroid/health/connect/HealthConnectException;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHealthConnectException()Landroid/health/connect/HealthConnectException;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 69
    .local v0, "sw":Ljava/io/StringWriter;
    iget-object v1, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    if-eqz v1, :cond_13

    .line 70
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 71
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    invoke-virtual {v2, v1}, Landroid/health/connect/HealthConnectException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 73
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HealthConnectExceptionParcel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    invoke-virtual {v0}, Landroid/health/connect/HealthConnectException;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Landroid/health/connect/aidl/HealthConnectExceptionParcel;->mHealthConnectException:Landroid/health/connect/HealthConnectException;

    invoke-virtual {v0}, Landroid/health/connect/HealthConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
