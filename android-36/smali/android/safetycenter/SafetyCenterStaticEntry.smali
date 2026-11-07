.class public final Landroid/safetycenter/SafetyCenterStaticEntry;
.super Ljava/lang/Object;
.source "SafetyCenterStaticEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterStaticEntry$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterStaticEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSummary:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetyCenterStaticEntry;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSummary(Landroid/safetycenter/SafetyCenterStaticEntry;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/safetycenter/SafetyCenterStaticEntry;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/safetycenter/SafetyCenterStaticEntry$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterStaticEntry$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterStaticEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "summary"    # Ljava/lang/CharSequence;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    .line 74
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    .line 75
    iput-object p3, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/safetycenter/SafetyCenterStaticEntry-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/safetycenter/SafetyCenterStaticEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 105
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterStaticEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 106
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterStaticEntry;

    .line 107
    .local v1, "that":Landroid/safetycenter/SafetyCenterStaticEntry;
    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    .line 108
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    .line 109
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 107
    :goto_2d
    return v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 114
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SafetyCenterStaticEntry{mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

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

    .line 136
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 137
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 138
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterStaticEntry;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    return-void
.end method
