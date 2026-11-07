.class public final Landroid/health/connect/restore/BackupFileNamesSet;
.super Ljava/lang/Object;
.source "BackupFileNamesSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/restore/BackupFileNamesSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFileNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/health/connect/restore/BackupFileNamesSet$1;

    invoke-direct {v0}, Landroid/health/connect/restore/BackupFileNamesSet$1;-><init>()V

    sput-object v0, Landroid/health/connect/restore/BackupFileNamesSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "size":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/health/connect/restore/BackupFileNamesSet;->mFileNames:Ljava/util/Set;

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 68
    iget-object v2, p0, Landroid/health/connect/restore/BackupFileNamesSet;->mFileNames:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 70
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/restore/BackupFileNamesSet-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/restore/BackupFileNamesSet;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "fileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Landroid/health/connect/restore/BackupFileNamesSet;->mFileNames:Ljava/util/Set;

    .line 39
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFileNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/health/connect/restore/BackupFileNamesSet;->mFileNames:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/health/connect/restore/BackupFileNamesSet;->mFileNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Landroid/health/connect/restore/BackupFileNamesSet;->mFileNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .end local v1    # "fileName":Ljava/lang/String;
    goto :goto_f

    .line 78
    :cond_1f
    return-void
.end method
