.class public final Landroid/service/controls/actions/ControlActionWrapper;
.super Ljava/lang/Object;
.source "ControlActionWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/actions/ControlActionWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mControlAction:Landroid/service/controls/actions/ControlAction;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/service/controls/actions/ControlActionWrapper$1;

    invoke-direct {v0}, Landroid/service/controls/actions/ControlActionWrapper$1;-><init>()V

    sput-object v0, Landroid/service/controls/actions/ControlActionWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/controls/actions/ControlAction;)V
    .registers 2
    .param p1, "controlAction"    # Landroid/service/controls/actions/ControlAction;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Landroid/service/controls/actions/ControlActionWrapper;->mControlAction:Landroid/service/controls/actions/ControlAction;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWrappedAction()Landroid/service/controls/actions/ControlAction;
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/service/controls/actions/ControlActionWrapper;->mControlAction:Landroid/service/controls/actions/ControlAction;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 41
    iget-object v0, p0, Landroid/service/controls/actions/ControlActionWrapper;->mControlAction:Landroid/service/controls/actions/ControlAction;

    invoke-virtual {v0}, Landroid/service/controls/actions/ControlAction;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method
