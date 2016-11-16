.class public Landroid/security/keymaster/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/OperationResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final inputConsumed:I

.field public final operationHandle:J

.field public final outParams:Landroid/security/keymaster/KeymasterArguments;

.field public final output:[B

.field public final resultCode:I

.field public final token:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 36
    new-instance v0, Landroid/security/keymaster/OperationResult$1;

    #@2
    invoke-direct {v0}, Landroid/security/keymaster/OperationResult$1;-><init>()V

    #@5
    sput-object v0, Landroid/security/keymaster/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationHandle"    # J
    .param p5, "inputConsumed"    # I
    .param p6, "output"    # [B
    .param p7, "outParams"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput p1, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@5
    .line 53
    iput-object p2, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@7
    .line 54
    iput-wide p3, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    #@9
    .line 55
    iput p5, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@b
    .line 56
    iput-object p6, p0, Landroid/security/keymaster/OperationResult;->output:[B

    #@d
    .line 57
    iput-object p7, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    #@f
    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@9
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@f
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    #@15
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@1b
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    #@21
    .line 66
    sget-object v0, Landroid/security/keymaster/KeymasterArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/security/keymaster/KeymasterArguments;

    #@29
    iput-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    #@2b
    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 77
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@a
    .line 78
    iget-wide v0, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 79
    iget v0, p0, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 80
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->output:[B

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@19
    .line 81
    iget-object v0, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    #@1b
    invoke-virtual {v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e
    .line 75
    return-void
.end method
