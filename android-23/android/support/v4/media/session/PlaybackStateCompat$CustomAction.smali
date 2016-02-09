.class public final Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$Builder;,
        Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mCustomActionObj:Ljava/lang/Object;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 628
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$1;-><init>()V

    #@5
    .line 627
    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 544
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mAction:Ljava/lang/String;

    #@9
    .line 564
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/CharSequence;

    #@11
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mName:Ljava/lang/CharSequence;

    #@13
    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mIcon:I

    #@19
    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mExtras:Landroid/os/Bundle;

    #@1f
    .line 562
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Landroid/os/Parcel;)V

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
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 556
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mAction:Ljava/lang/String;

    #@5
    .line 557
    iput-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mName:Ljava/lang/CharSequence;

    #@7
    .line 558
    iput p3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mIcon:I

    #@9
    .line 559
    iput-object p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mExtras:Landroid/os/Bundle;

    #@b
    .line 555
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static fromCustomAction(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 5
    .param p0, "customActionObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 594
    if-eqz p0, :cond_0

    #@3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v2, 0x15

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 595
    :cond_0
    return-object v3

    #@a
    .line 598
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    #@c
    .line 599
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;->getAction(Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 600
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@13
    move-result-object v2

    #@14
    .line 601
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;->getIcon(Ljava/lang/Object;)I

    #@17
    move-result v3

    #@18
    .line 602
    invoke-static {p0}, Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    #@1b
    move-result-object v4

    #@1c
    .line 598
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    #@1f
    .line 603
    .local v0, "customAction":Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    iput-object p0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mCustomActionObj:Ljava/lang/Object;

    #@21
    .line 604
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mAction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCustomAction()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mCustomActionObj:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x15

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 619
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mCustomActionObj:Ljava/lang/Object;

    #@c
    return-object v0

    #@d
    .line 622
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mAction:Ljava/lang/String;

    #@f
    .line 623
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mName:Ljava/lang/CharSequence;

    #@11
    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mIcon:I

    #@13
    iget-object v3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mExtras:Landroid/os/Bundle;

    #@15
    .line 622
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;->newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mCustomActionObj:Ljava/lang/Object;

    #@1b
    .line 624
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mCustomActionObj:Ljava/lang/Object;

    #@1d
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon()I
    .locals 1

    #@0
    .prologue
    .line 667
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mIcon:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 684
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
    .line 685
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mName:Ljava/lang/CharSequence;

    #@e
    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 686
    const-string/jumbo v1, ", mIcon="

    #@15
    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 686
    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mIcon:I

    #@1b
    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 687
    const-string/jumbo v1, ", mExtras="

    #@22
    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 687
    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mExtras:Landroid/os/Bundle;

    #@28
    .line 684
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
    .line 571
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mAction:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 572
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mName:Ljava/lang/CharSequence;

    #@7
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@a
    .line 573
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mIcon:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 574
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->mExtras:Landroid/os/Bundle;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@14
    .line 570
    return-void
.end method
