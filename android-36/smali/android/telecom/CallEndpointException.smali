.class public final Landroid/telecom/CallEndpointException;
.super Ljava/lang/RuntimeException;
.source "CallEndpointException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallEndpointException$CallEndpointErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist CHANGE_ERROR:Ljava/lang/String; = "ChangeErrorKey"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallEndpointException;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_ANOTHER_REQUEST:I = 0x3

.field public static final whitelist ERROR_ENDPOINT_DOES_NOT_EXIST:I = 0x1

.field public static final whitelist ERROR_REQUEST_TIME_OUT:I = 0x2

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x4


# instance fields
.field private blacklist mCode:I

.field private final blacklist mMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/telecom/CallEndpointException$1;

    invoke-direct {v0}, Landroid/telecom/CallEndpointException$1;-><init>()V

    sput-object v0, Landroid/telecom/CallEndpointException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 96
    invoke-static {p1, p2}, Landroid/telecom/CallEndpointException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Landroid/telecom/CallEndpointException;->mCode:I

    .line 97
    iput p2, p0, Landroid/telecom/CallEndpointException;->mCode:I

    .line 98
    iput-object p1, p0, Landroid/telecom/CallEndpointException;->mMessage:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private static blacklist getMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "code"    # I

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " (code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 114
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

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCode()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/telecom/CallEndpointException;->mCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-object v0, p0, Landroid/telecom/CallEndpointException;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroid/telecom/CallEndpointException;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
