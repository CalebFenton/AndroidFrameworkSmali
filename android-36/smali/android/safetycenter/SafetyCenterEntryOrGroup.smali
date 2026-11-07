.class public final Landroid/safetycenter/SafetyCenterEntryOrGroup;
.super Ljava/lang/Object;
.source "SafetyCenterEntryOrGroup.java"

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
            "Landroid/safetycenter/SafetyCenterEntryOrGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEntry:Landroid/safetycenter/SafetyCenterEntry;

.field private final blacklist mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/safetycenter/SafetyCenterEntryOrGroup$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterEntryOrGroup$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterEntry;)V
    .registers 3
    .param p1, "entry"    # Landroid/safetycenter/SafetyCenterEntry;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterEntry;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterEntryGroup;)V
    .registers 3
    .param p1, "entryGroup"    # Landroid/safetycenter/SafetyCenterEntryGroup;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safetycenter/SafetyCenterEntryGroup;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 101
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterEntryOrGroup;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 102
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterEntryOrGroup;

    .line 103
    .local v1, "that":Landroid/safetycenter/SafetyCenterEntryOrGroup;
    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public whitelist getEntry()Landroid/safetycenter/SafetyCenterEntry;
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    return-object v0
.end method

.method public whitelist getEntryGroup()Landroid/safetycenter/SafetyCenterEntryGroup;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterEntryOrGroup{mEntry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEntryGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

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

    .line 128
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntry:Landroid/safetycenter/SafetyCenterEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterEntryOrGroup;->mEntryGroup:Landroid/safetycenter/SafetyCenterEntryGroup;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    return-void
.end method
