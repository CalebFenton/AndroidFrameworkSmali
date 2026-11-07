.class public Landroid/security/keymaster/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o inputConsumed:I

.field public final greylist-max-o operationHandle:J

.field public final greylist-max-o outParams:Landroid/security/keymaster/KeymasterArguments;

.field public final greylist-max-o output:[B

.field public final greylist-max-o resultCode:I

.field public final greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Landroid/security/keymaster/OperationResult$1;

    invoke-direct {v0}, Landroid/security/keymaster/OperationResult$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 10
    .param p1, "resultCode"    # I

    .line 64
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .end local p1    # "resultCode":I
    .local v1, "resultCode":I
    invoke-direct/range {v0 .. v7}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    .line 65
    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationHandle"    # J
    .param p5, "inputConsumed"    # I
    .param p6, "output"    # [B
    .param p7, "outParams"    # Landroid/security/keymaster/KeymasterArguments;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 56
    iput-object p2, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 57
    iput-wide p3, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 58
    iput p5, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 59
    iput-object p6, p0, Landroid/security/keymaster/OperationResult;->output:[B

    .line 60
    iput-object p7, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    .line 61
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    .line 73
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    iget v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 85
    iget-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 88
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    return-void
.end method
