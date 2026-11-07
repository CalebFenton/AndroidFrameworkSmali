.class public final Landroid/app/DirectAction;
.super Ljava/lang/Object;
.source "DirectAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DirectAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/DirectAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_ACTIONS_LIST:Ljava/lang/String; = "actions_list"


# instance fields
.field private blacklist mActivityId:Landroid/os/IBinder;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mID:Ljava/lang/String;

.field private final blacklist mLocusId:Landroid/content/LocusId;

.field private blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 212
    new-instance v0, Landroid/app/DirectAction$1;

    invoke-direct {v0}, Landroid/app/DirectAction$1;-><init>()V

    sput-object v0, Landroid/app/DirectAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/DirectAction;)V
    .registers 3
    .param p1, "original"    # Landroid/app/DirectAction;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget v0, p1, Landroid/app/DirectAction;->mTaskId:I

    iput v0, p0, Landroid/app/DirectAction;->mTaskId:I

    .line 74
    iget-object v0, p1, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    .line 75
    iget-object v0, p1, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    .line 77
    iget-object v0, p1, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    .line 78
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/DirectAction;->mTaskId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "idString":Ljava/lang/String;
    if-eqz v0, :cond_27

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput-object v1, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/DirectAction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/DirectAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/LocusId;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "locusId"    # Landroid/content/LocusId;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    .line 60
    iput-object p3, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    .line 61
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 136
    return v0

    .line 139
    :cond_4
    if-ne p1, p0, :cond_8

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    .line 144
    return v0

    .line 147
    :cond_13
    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/app/DirectAction;

    iget-object v1, v1, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getActivityId()Landroid/os/IBinder;
    .registers 2

    .line 96
    iget-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/app/DirectAction;->mTaskId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist setSource(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "activityId"    # Landroid/os/IBinder;

    .line 65
    iput p1, p0, Landroid/app/DirectAction;->mTaskId:I

    .line 66
    iput-object p2, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    .line 67
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget v0, p0, Landroid/app/DirectAction;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 154
    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 156
    iget-object v0, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return-void
.end method
