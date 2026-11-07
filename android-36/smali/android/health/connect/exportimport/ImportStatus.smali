.class public final Landroid/health/connect/exportimport/ImportStatus;
.super Ljava/lang/Object;
.source "ImportStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/exportimport/ImportStatus$DataImportState;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/exportimport/ImportStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DATA_IMPORT_ERROR_NONE:I = 0x0

.field public static final blacklist DATA_IMPORT_ERROR_UNKNOWN:I = 0x1

.field public static final blacklist DATA_IMPORT_ERROR_VERSION_MISMATCH:I = 0x3

.field public static final blacklist DATA_IMPORT_ERROR_WRONG_FILE:I = 0x2

.field public static final blacklist DATA_IMPORT_STARTED:I = 0x4


# instance fields
.field private final blacklist mDataImportState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/health/connect/exportimport/ImportStatus$1;

    invoke-direct {v0}, Landroid/health/connect/exportimport/ImportStatus$1;-><init>()V

    sput-object v0, Landroid/health/connect/exportimport/ImportStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "dataImportState"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/health/connect/exportimport/ImportStatus;->mDataImportState:I

    .line 101
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/exportimport/ImportStatus;->mDataImportState:I

    .line 123
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/exportimport/ImportStatus-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/exportimport/ImportStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataImportState()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/health/connect/exportimport/ImportStatus;->mDataImportState:I

    return v0
.end method

.method public blacklist isImportOngoing()Z
    .registers 3

    .line 113
    iget v0, p0, Landroid/health/connect/exportimport/ImportStatus;->mDataImportState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget v0, p0, Landroid/health/connect/exportimport/ImportStatus;->mDataImportState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void
.end method
