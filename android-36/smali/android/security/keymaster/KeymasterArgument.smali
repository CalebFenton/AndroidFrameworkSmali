.class abstract Landroid/security/keymaster/KeymasterArgument;
.super Ljava/lang/Object;
.source "KeymasterArgument.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o tag:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/security/keymaster/KeymasterArgument$1;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArgument$1;-><init>()V

    sput-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "tag"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget v0, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument;->writeValue(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method public abstract greylist-max-o writeValue(Landroid/os/Parcel;)V
.end method
