.class public final Landroid/telecom/CallException;
.super Ljava/lang/RuntimeException;
.source "CallException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallException$CallErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CODE_CALL_CANNOT_BE_SET_TO_ACTIVE:I = 0x4

.field public static final whitelist CODE_CALL_IS_NOT_BEING_TRACKED:I = 0x3

.field public static final whitelist CODE_CALL_NOT_PERMITTED_AT_PRESENT_TIME:I = 0x5

.field public static final whitelist CODE_CANNOT_HOLD_CURRENT_ACTIVE_CALL:I = 0x2

.field public static final whitelist CODE_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist CODE_OPERATION_TIMED_OUT:I = 0x6

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallException;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TRANSACTION_EXCEPTION_KEY:Ljava/lang/String; = "TelecomTransactionalExceptionKey"


# instance fields
.field private blacklist mCode:I

.field private final blacklist mMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Landroid/telecom/CallException$1;

    invoke-direct {v0}, Landroid/telecom/CallException$1;-><init>()V

    sput-object v0, Landroid/telecom/CallException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 125
    invoke-static {p1, p2}, Landroid/telecom/CallException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/CallException;->mCode:I

    .line 126
    iput p2, p0, Landroid/telecom/CallException;->mCode:I

    .line 127
    iput-object p1, p0, Landroid/telecom/CallException;->mMessage:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private static blacklist getMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "code"    # I

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " (code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
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

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCode()I
    .registers 2

    .line 134
    iget v0, p0, Landroid/telecom/CallException;->mCode:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 85
    iget-object v0, p0, Landroid/telecom/CallException;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Landroid/telecom/CallException;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
