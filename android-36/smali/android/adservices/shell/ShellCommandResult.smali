.class public final Landroid/adservices/shell/ShellCommandResult;
.super Ljava/lang/Object;
.source "ShellCommandResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/shell/ShellCommandResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/shell/ShellCommandResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESULT_OK:I


# instance fields
.field private final blacklist mErr:Ljava/lang/String;

.field private final blacklist mOut:Ljava/lang/String;

.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/adservices/shell/ShellCommandResult$1;

    invoke-direct {v0}, Landroid/adservices/shell/ShellCommandResult$1;-><init>()V

    sput-object v0, Landroid/adservices/shell/ShellCommandResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "out"    # Ljava/lang/String;
    .param p3, "err"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/adservices/shell/ShellCommandResult;->mResultCode:I

    .line 40
    iput-object p2, p0, Landroid/adservices/shell/ShellCommandResult;->mOut:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Landroid/adservices/shell/ShellCommandResult;->mErr:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor blacklist <init>(Landroid/adservices/shell/ShellCommandResult$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/adservices/shell/ShellCommandResult$Builder;

    .line 49
    invoke-static {p1}, Landroid/adservices/shell/ShellCommandResult$Builder;->-$$Nest$fgetmResultCode(Landroid/adservices/shell/ShellCommandResult$Builder;)I

    move-result v0

    invoke-static {p1}, Landroid/adservices/shell/ShellCommandResult$Builder;->-$$Nest$fgetmOut(Landroid/adservices/shell/ShellCommandResult$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/adservices/shell/ShellCommandResult$Builder;->-$$Nest$fgetmErr(Landroid/adservices/shell/ShellCommandResult$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/adservices/shell/ShellCommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/shell/ShellCommandResult$Builder;Landroid/adservices/shell/ShellCommandResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/shell/ShellCommandResult;-><init>(Landroid/adservices/shell/ShellCommandResult$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/adservices/shell/ShellCommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/shell/ShellCommandResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/shell/ShellCommandResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getErr()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/adservices/shell/ShellCommandResult;->mErr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOut()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/adservices/shell/ShellCommandResult;->mOut:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/adservices/shell/ShellCommandResult;->mResultCode:I

    return v0
.end method

.method public blacklist isSuccess()Z
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroid/adservices/shell/ShellCommandResult;->getResultCode()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShellCommandResult[code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/adservices/shell/ShellCommandResult;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    .local v0, "string":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/adservices/shell/ShellCommandResult;->mOut:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 106
    const-string v1, ", out_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/shell/ShellCommandResult;->mOut:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    :cond_20
    iget-object v1, p0, Landroid/adservices/shell/ShellCommandResult;->mErr:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 109
    const-string v1, ", err_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/adservices/shell/ShellCommandResult;->mErr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    :cond_33
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget v0, p0, Landroid/adservices/shell/ShellCommandResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Landroid/adservices/shell/ShellCommandResult;->mOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroid/adservices/shell/ShellCommandResult;->mErr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
