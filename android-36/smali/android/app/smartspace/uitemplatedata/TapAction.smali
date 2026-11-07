.class public final Landroid/app/smartspace/uitemplatedata/TapAction;
.super Ljava/lang/Object;
.source "TapAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/TapAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/TapAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mId:Ljava/lang/CharSequence;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mShouldShowOnLockscreen:Z

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 145
    new-instance v0, Landroid/app/smartspace/uitemplatedata/TapAction$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/TapAction$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    .line 71
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mIntent:Landroid/content/Intent;

    .line 72
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 73
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mUserHandle:Landroid/os/UserHandle;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mExtras:Landroid/os/Bundle;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mShouldShowOnLockscreen:Z

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/os/UserHandle;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1, "id"    # Ljava/lang/CharSequence;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "shouldShowOnLockscreen"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    .line 82
    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mIntent:Landroid/content/Intent;

    .line 83
    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 84
    iput-object p4, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mUserHandle:Landroid/os/UserHandle;

    .line 85
    iput-object p5, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mExtras:Landroid/os/Bundle;

    .line 86
    iput-boolean p6, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mShouldShowOnLockscreen:Z

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/os/UserHandle;Landroid/os/Bundle;ZLandroid/app/smartspace/uitemplatedata/TapAction-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/app/smartspace/uitemplatedata/TapAction;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/app/PendingIntent;Landroid/os/UserHandle;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 159
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 160
    :cond_4
    instance-of v0, p1, Landroid/app/smartspace/uitemplatedata/TapAction;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 161
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    .line 162
    .local v0, "that":Landroid/app/smartspace/uitemplatedata/TapAction;
    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/CharSequence;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist shouldShowOnLockscreen()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mShouldShowOnLockscreen:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceTapAction{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldShowOnLockscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mShouldShowOnLockscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mId:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 132
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 134
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 136
    iget-boolean v0, p0, Landroid/app/smartspace/uitemplatedata/TapAction;->mShouldShowOnLockscreen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 137
    return-void
.end method
