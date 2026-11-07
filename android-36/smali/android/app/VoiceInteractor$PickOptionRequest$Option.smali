.class public final Landroid/app/VoiceInteractor$PickOptionRequest$Option;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor$PickOptionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/VoiceInteractor$PickOptionRequest$Option;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mExtras:Landroid/os/Bundle;

.field final greylist-max-o mIndex:I

.field final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field greylist-max-o mSynonyms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 521
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option$1;

    invoke-direct {v0}, Landroid/app/VoiceInteractor$PickOptionRequest$Option$1;-><init>()V

    sput-object v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    .line 506
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    .line 432
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    .line 433
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;I)V
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iput-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    .line 446
    iput p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    .line 447
    return-void
.end method


# virtual methods
.method public whitelist addSynonym(Ljava/lang/CharSequence;)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .registers 3
    .param p1, "synonym"    # Ljava/lang/CharSequence;

    .line 456
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    .line 459
    :cond_b
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    return-object p0
.end method

.method public whitelist countSynonyms()I
    .registers 2

    .line 476
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 498
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIndex()I
    .registers 2

    .line 472
    iget v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    return v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSynonymAt(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "index"    # I

    .line 480
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 488
    iput-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    .line 489
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 515
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 516
    iget v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceList(Ljava/util/ArrayList;)V

    .line 518
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 519
    return-void
.end method
