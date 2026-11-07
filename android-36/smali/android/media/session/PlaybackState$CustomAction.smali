.class public final Landroid/media/session/PlaybackState$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/PlaybackState$CustomAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAction:Ljava/lang/String;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIcon:I

.field private final greylist-max-o mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 623
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$1;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$CustomAction$1;-><init>()V

    sput-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    .line 605
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    .line 608
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    .line 598
    iput-object p2, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    .line 599
    iput p3, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    .line 600
    iput-object p4, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    .line 601
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()Ljava/lang/String;
    .registers 2

    .line 643
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 672
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon()I
    .registers 2

    .line 661
    iget v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .registers 2

    .line 652
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action:mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 612
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 614
    iget v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 616
    return-void
.end method
