.class public final Landroid/telecom/QueryLocationException;
.super Ljava/lang/RuntimeException;
.source "QueryLocationException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/QueryLocationException$QueryLocationErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/QueryLocationException;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_ALLOWED_FOR_NON_EMERGENCY_CONNECTIONS:I = 0x4

.field public static final whitelist ERROR_NOT_PERMITTED:I = 0x3

.field public static final whitelist ERROR_PREVIOUS_REQUEST_EXISTS:I = 0x2

.field public static final whitelist ERROR_REQUEST_TIME_OUT:I = 0x1

.field public static final whitelist ERROR_SERVICE_UNAVAILABLE:I = 0x5

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x6

.field public static final blacklist QUERY_LOCATION_ERROR:Ljava/lang/String; = "QueryLocationErrorKey"


# instance fields
.field private blacklist mCode:I

.field private final blacklist mMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Landroid/telecom/QueryLocationException$1;

    invoke-direct {v0}, Landroid/telecom/QueryLocationException$1;-><init>()V

    sput-object v0, Landroid/telecom/QueryLocationException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x6

    invoke-static {p1, v0}, Landroid/telecom/QueryLocationException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    iput v0, p0, Landroid/telecom/QueryLocationException;->mCode:I

    .line 101
    iput-object p1, p0, Landroid/telecom/QueryLocationException;->mMessage:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 104
    invoke-static {p1, p2}, Landroid/telecom/QueryLocationException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/QueryLocationException;->mCode:I

    .line 105
    iput p2, p0, Landroid/telecom/QueryLocationException;->mCode:I

    .line 106
    iput-object p1, p0, Landroid/telecom/QueryLocationException;->mMessage:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 110
    invoke-static {p1, p2}, Landroid/telecom/QueryLocationException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/QueryLocationException;->mCode:I

    .line 111
    iput p2, p0, Landroid/telecom/QueryLocationException;->mCode:I

    .line 112
    iput-object p1, p0, Landroid/telecom/QueryLocationException;->mMessage:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private static blacklist getMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "code"    # I

    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " (code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCode()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/telecom/QueryLocationException;->mCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/telecom/QueryLocationException;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroid/telecom/QueryLocationException;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
