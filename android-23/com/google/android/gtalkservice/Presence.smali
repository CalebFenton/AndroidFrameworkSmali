.class public final Landroid/com/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/com/google/android/gtalkservice/Presence$Show;,
        Landroid/com/google/android/gtalkservice/Presence$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/com/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFFLINE:Landroid/com/google/android/gtalkservice/Presence;


# instance fields
.field private mAllowInvisibility:Z

.field private mAvailable:Z

.field private mCapabilities:I

.field private mDefaultStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDndStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvisible:Z

.field private mShow:Landroid/com/google/android/gtalkservice/Presence$Show;

.field private mStatus:Ljava/lang/String;

.field private mStatusListContentsMax:I

.field private mStatusListMax:I

.field private mStatusMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence;

    #@2
    invoke-direct {v0}, Landroid/com/google/android/gtalkservice/Presence;-><init>()V

    #@5
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence;->OFFLINE:Landroid/com/google/android/gtalkservice/Presence;

    #@7
    .line 537
    new-instance v0, Landroid/com/google/android/gtalkservice/Presence$1;

    #@9
    invoke-direct {v0}, Landroid/com/google/android/gtalkservice/Presence$1;-><init>()V

    #@c
    .line 536
    sput-object v0, Landroid/com/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 71
    sget-object v0, Landroid/com/google/android/gtalkservice/Presence$Show;->NONE:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    const/16 v3, 0x8

    #@6
    invoke-direct {p0, v1, v0, v2, v3}, Landroid/com/google/android/gtalkservice/Presence;-><init>(ZLandroid/com/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    #@9
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setStatusMax(I)V

    #@c
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    #@13
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    #@1a
    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    move v0, v1

    #@21
    :goto_0
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    #@24
    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    move v0, v1

    #@2b
    :goto_1
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setAvailable(Z)V

    #@2e
    .line 104
    const-class v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-static {v0, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/com/google/android/gtalkservice/Presence$Show;

    #@3a
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setShow(Landroid/com/google/android/gtalkservice/Presence$Show;)V

    #@3d
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    #@43
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_2

    #@49
    :goto_2
    invoke-virtual {p0, v1}, Landroid/com/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    #@4c
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    #@4e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@51
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    #@53
    .line 111
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    #@55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@58
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    #@5a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5d
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    #@5f
    .line 114
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@64
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@67
    move-result v0

    #@68
    invoke-virtual {p0, v0}, Landroid/com/google/android/gtalkservice/Presence;->setCapabilities(I)V

    #@6b
    .line 97
    return-void

    #@6c
    :cond_0
    move v0, v2

    #@6d
    .line 101
    goto :goto_0

    #@6e
    :cond_1
    move v0, v2

    #@6f
    .line 103
    goto :goto_1

    #@70
    :cond_2
    move v1, v2

    #@71
    .line 108
    goto :goto_2
.end method

.method public constructor <init>(ZLandroid/com/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V
    .locals 1
    .param p1, "available"    # Z
    .param p2, "show"    # Landroid/com/google/android/gtalkservice/Presence$Show;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "caps"    # I

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iput-boolean p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mAvailable:Z

    #@5
    .line 84
    iput-object p2, p0, Landroid/com/google/android/gtalkservice/Presence;->mShow:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@7
    .line 85
    iput-object p3, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    #@9
    .line 86
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mInvisible:Z

    #@c
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    #@13
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    #@1a
    .line 89
    iput p4, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@1c
    .line 82
    return-void
.end method


# virtual methods
.method public allowInvisibility()Z
    .locals 1

    #@0
    .prologue
    .line 206
    iget-boolean v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    #@2
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 533
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCapabilities()I
    .locals 1

    #@0
    .prologue
    .line 419
    iget v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@2
    return v0
.end method

.method public getStatusListContentsMax()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    #@2
    return v0
.end method

.method public getStatusListMax()I
    .locals 1

    #@0
    .prologue
    .line 166
    iget v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatusListMax:I

    #@2
    return v0
.end method

.method public getStatusMax()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatusMax:I

    #@2
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mAvailable:Z

    #@2
    return v0
.end method

.method public isInvisible()Z
    .locals 1

    #@0
    .prologue
    .line 248
    iget-boolean v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mInvisible:Z

    #@2
    return v0
.end method

.method public setAllowInvisibility(Z)V
    .locals 0
    .param p1, "allowInvisibility"    # Z

    #@0
    .prologue
    .line 219
    iput-boolean p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    #@2
    .line 218
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    #@0
    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mAvailable:Z

    #@2
    .line 238
    return-void
.end method

.method public setCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    #@0
    .prologue
    .line 428
    iput p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@2
    .line 427
    return-void
.end method

.method public setInvisible(Z)Z
    .locals 1
    .param p1, "invisible"    # Z

    #@0
    .prologue
    .line 259
    iput-boolean p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mInvisible:Z

    #@2
    .line 262
    if-eqz p1, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->allowInvisibility()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 266
    :cond_0
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 263
    :cond_1
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method public setShow(Landroid/com/google/android/gtalkservice/Presence$Show;)V
    .locals 0
    .param p1, "show"    # Landroid/com/google/android/gtalkservice/Presence$Show;

    #@0
    .prologue
    .line 288
    iput-object p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mShow:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2
    .line 287
    return-void
.end method

.method public setStatusListContentsMax(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 197
    iput p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    #@2
    .line 196
    return-void
.end method

.method public setStatusListMax(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 177
    iput p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatusListMax:I

    #@2
    .line 176
    return-void
.end method

.method public setStatusMax(I)V
    .locals 0
    .param p1, "max"    # I

    #@0
    .prologue
    .line 157
    iput p1, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatusMax:I

    #@2
    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->isAvailable()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 550
    const-string/jumbo v1, "UNAVAILABLE"

    #@9
    return-object v1

    #@a
    .line 553
    :cond_0
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->isInvisible()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 554
    const-string/jumbo v1, "INVISIBLE"

    #@13
    return-object v1

    #@14
    .line 557
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    const/16 v1, 0x28

    #@18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1b
    .line 559
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/com/google/android/gtalkservice/Presence;->mShow:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@1d
    sget-object v2, Landroid/com/google/android/gtalkservice/Presence$Show;->NONE:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@1f
    if-ne v1, v2, :cond_6

    #@21
    .line 560
    const-string/jumbo v1, "AVAILABLE(x)"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 565
    :goto_0
    iget v1, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@29
    and-int/lit8 v1, v1, 0x8

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 566
    const-string/jumbo v1, " pmuc-v1"

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 568
    :cond_2
    iget v1, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@35
    and-int/lit8 v1, v1, 0x1

    #@37
    if-eqz v1, :cond_3

    #@39
    .line 569
    const-string/jumbo v1, " voice-v1"

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 571
    :cond_3
    iget v1, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@41
    and-int/lit8 v1, v1, 0x2

    #@43
    if-eqz v1, :cond_4

    #@45
    .line 572
    const-string/jumbo v1, " video-v1"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 574
    :cond_4
    iget v1, p0, Landroid/com/google/android/gtalkservice/Presence;->mCapabilities:I

    #@4d
    and-int/lit8 v1, v1, 0x4

    #@4f
    if-eqz v1, :cond_5

    #@51
    .line 575
    const-string/jumbo v1, " camera-v1"

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 577
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    return-object v1

    #@5c
    .line 562
    :cond_6
    iget-object v1, p0, Landroid/com/google/android/gtalkservice/Presence;->mShow:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@5e
    invoke-virtual {v1}, Landroid/com/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 517
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->getStatusMax()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 518
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->getStatusListMax()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 519
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 520
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->allowInvisibility()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    move v0, v1

    #@1e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 522
    iget-boolean v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mAvailable:Z

    #@23
    if-eqz v0, :cond_1

    #@25
    move v0, v1

    #@26
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 523
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mShow:Landroid/com/google/android/gtalkservice/Presence$Show;

    #@2b
    invoke-virtual {v0}, Landroid/com/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 524
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 525
    iget-boolean v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mInvisible:Z

    #@39
    if-eqz v0, :cond_2

    #@3b
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3e
    .line 527
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    #@40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@43
    .line 528
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    #@45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@48
    .line 529
    invoke-virtual {p0}, Landroid/com/google/android/gtalkservice/Presence;->getCapabilities()I

    #@4b
    move-result v0

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 516
    return-void

    #@50
    :cond_0
    move v0, v2

    #@51
    .line 520
    goto :goto_0

    #@52
    :cond_1
    move v0, v2

    #@53
    .line 522
    goto :goto_1

    #@54
    :cond_2
    move v1, v2

    #@55
    .line 525
    goto :goto_2
.end method
