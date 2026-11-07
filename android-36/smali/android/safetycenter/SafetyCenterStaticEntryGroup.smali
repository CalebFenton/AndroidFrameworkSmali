.class public final Landroid/safetycenter/SafetyCenterStaticEntryGroup;
.super Ljava/lang/Object;
.source "SafetyCenterStaticEntryGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterStaticEntryGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mStaticEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/safetycenter/SafetyCenterStaticEntryGroup$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterStaticEntryGroup$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/util/List;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntry;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p2, "staticEntries":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetyCenterStaticEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 87
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 88
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterStaticEntryGroup;

    .line 89
    .local v1, "that":Landroid/safetycenter/SafetyCenterStaticEntryGroup;
    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    .line 90
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 89
    :goto_23
    return v0
.end method

.method public whitelist getStaticEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetyCenterStaticEntry;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 95
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterStaticEntryGroup{mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStaticEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 116
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntryGroup;->mStaticEntries:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 117
    return-void
.end method
