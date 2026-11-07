.class public final Landroid/service/credentials/RemoteEntry;
.super Ljava/lang/Object;
.source "RemoteEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/credentials/RemoteEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSlice:Landroid/app/slice/Slice;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/service/credentials/RemoteEntry$1;

    invoke-direct {v0}, Landroid/service/credentials/RemoteEntry$1;-><init>()V

    sput-object v0, Landroid/service/credentials/RemoteEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/slice/Slice;)V
    .registers 5
    .param p1, "slice"    # Landroid/app/slice/Slice;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/service/credentials/RemoteEntry;->mSlice:Landroid/app/slice/Slice;

    .line 88
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/credentials/RemoteEntry;->mSlice:Landroid/app/slice/Slice;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/Slice;

    iput-object v0, p0, Landroid/service/credentials/RemoteEntry;->mSlice:Landroid/app/slice/Slice;

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/credentials/RemoteEntry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/credentials/RemoteEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/service/credentials/RemoteEntry;->mSlice:Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget-object v0, p0, Landroid/service/credentials/RemoteEntry;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 71
    return-void
.end method
