.class Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;
.super Ljava/lang/Object;
.source "RemoteAnimationDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RemoteAnimationDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteAnimationAdapterEntry"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o activityTypeFilter:I

.field final greylist-max-o adapter:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v0, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    .line 190
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/RemoteAnimationDefinition-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/RemoteAnimationAdapter;I)V
    .registers 3
    .param p1, "adapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p2, "activityTypeFilter"    # I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    .line 184
    iput p2, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    .line 185
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 194
    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 195
    iget v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
