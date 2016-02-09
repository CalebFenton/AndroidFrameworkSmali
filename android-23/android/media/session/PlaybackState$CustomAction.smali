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
        Landroid/media/session/PlaybackState$CustomAction$Builder;,
        Landroid/media/session/PlaybackState$CustomAction$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 630
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$1;

    #@2
    invoke-direct {v0}, Landroid/media/session/PlaybackState$CustomAction$1;-><init>()V

    #@5
    .line 629
    sput-object v0, Landroid/media/session/PlaybackState$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 593
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    #@9
    .line 611
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/CharSequence;

    #@11
    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    #@13
    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    #@19
    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    #@1f
    .line 609
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 603
    iput-object p1, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    #@5
    .line 604
    iput-object p2, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    #@7
    .line 605
    iput p3, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    #@9
    .line 606
    iput-object p4, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    #@b
    .line 602
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 626
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 678
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon()I
    .locals 1

    #@0
    .prologue
    .line 667
    iget v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Action:mName=\'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 684
    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    #@e
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 685
    const-string/jumbo v1, ", mIcon="

    #@15
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 685
    iget v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    #@1b
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 686
    const-string/jumbo v1, ", mExtras="

    #@22
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 686
    iget-object v1, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    #@28
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mAction:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 619
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mName:Ljava/lang/CharSequence;

    #@7
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@a
    .line 620
    iget v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mIcon:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 621
    iget-object v0, p0, Landroid/media/session/PlaybackState$CustomAction;->mExtras:Landroid/os/Bundle;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@14
    .line 617
    return-void
.end method
