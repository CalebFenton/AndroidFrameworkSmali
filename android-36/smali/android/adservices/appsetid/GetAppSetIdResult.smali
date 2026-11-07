.class public final Landroid/adservices/appsetid/GetAppSetIdResult;
.super Landroid/adservices/common/AdServicesResponse;
.source "GetAppSetIdResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/appsetid/GetAppSetIdResult$Builder;,
        Landroid/adservices/appsetid/GetAppSetIdResult$AppSetIdScope;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/appsetid/GetAppSetIdResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SCOPE_APP:I = 0x1

.field public static final blacklist SCOPE_DEVELOPER:I = 0x2


# instance fields
.field private final blacklist mAppSetId:Ljava/lang/String;

.field private final blacklist mAppSetIdScope:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/adservices/appsetid/GetAppSetIdResult$1;

    invoke-direct {v0}, Landroid/adservices/appsetid/GetAppSetIdResult$1;-><init>()V

    sput-object v0, Landroid/adservices/appsetid/GetAppSetIdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "resultCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "appSetId"    # Ljava/lang/String;
    .param p4, "appSetIdScope"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/adservices/common/AdServicesResponse;-><init>(ILjava/lang/String;)V

    .line 63
    iput-object p3, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    .line 64
    iput p4, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;ILandroid/adservices/appsetid/GetAppSetIdResult-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/adservices/appsetid/GetAppSetIdResult;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 68
    invoke-direct {p0, p1}, Landroid/adservices/common/AdServicesResponse;-><init>(Landroid/os/Parcel;)V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/appsetid/GetAppSetIdResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/appsetid/GetAppSetIdResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 144
    return v0

    .line 147
    :cond_4
    instance-of v1, p1, Landroid/adservices/appsetid/GetAppSetIdResult;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 148
    return v2

    .line 151
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/adservices/appsetid/GetAppSetIdResult;

    .line 153
    .local v1, "that":Landroid/adservices/appsetid/GetAppSetIdResult;
    iget v3, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mStatusCode:I

    iget v4, v1, Landroid/adservices/appsetid/GetAppSetIdResult;->mStatusCode:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mErrorMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/appsetid/GetAppSetIdResult;->mErrorMessage:Ljava/lang/String;

    .line 154
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    iget-object v4, v1, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    iget v4, v1, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 153
    :goto_2f
    return v0
.end method

.method public blacklist getAppSetId()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAppSetIdScope()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    return v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 161
    iget v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mErrorMessage:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    iget v3, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppSetIdResult{mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppSetIdScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult;->mAppSetIdScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method
