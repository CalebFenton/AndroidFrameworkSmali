.class public final Landroid/service/controls/templates/ControlButton;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/templates/ControlButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActionDescription:Ljava/lang/CharSequence;

.field private final blacklist mChecked:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/service/controls/templates/ControlButton$1;

    invoke-direct {v0}, Landroid/service/controls/templates/ControlButton$1;-><init>()V

    sput-object v0, Landroid/service/controls/templates/ControlButton;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    .line 75
    return-void
.end method

.method public constructor whitelist <init>(ZLjava/lang/CharSequence;)V
    .registers 3
    .param p1, "checked"    # Z
    .param p2, "actionDescription"    # Ljava/lang/CharSequence;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iput-boolean p1, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    .line 41
    iput-object p2, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActionDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isChecked()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-boolean v0, p0, Landroid/service/controls/templates/ControlButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-object v0, p0, Landroid/service/controls/templates/ControlButton;->mActionDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
