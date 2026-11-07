.class public final Landroid/database/BulkCursorDescriptor;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/database/BulkCursorDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o columnNames:[Ljava/lang/String;

.field public greylist-max-o count:I

.field public greylist-max-o cursor:Landroid/database/IBulkCursor;

.field public greylist-max-o wantsAllOnMoveCalls:Z

.field public greylist-max-o window:Landroid/database/CursorWindow;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/database/BulkCursorDescriptor$1;

    invoke-direct {v0}, Landroid/database/BulkCursorDescriptor$1;-><init>()V

    sput-object v0, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/BulkCursorNative;->asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;

    move-result-object v0

    iput-object v0, p0, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-boolean v0, p0, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/BulkCursorDescriptor;->count:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31

    .line 75
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    iput-object v0, p0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    .line 77
    :cond_31
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->cursor:Landroid/database/IBulkCursor;

    invoke-interface {v0}, Landroid/database/IBulkCursor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->columnNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Landroid/database/BulkCursorDescriptor;->wantsAllOnMoveCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/database/BulkCursorDescriptor;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    if-eqz v0, :cond_26

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Landroid/database/BulkCursorDescriptor;->window:Landroid/database/CursorWindow;

    invoke-virtual {v0, p1, p2}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2a

    .line 65
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    :goto_2a
    return-void
.end method
