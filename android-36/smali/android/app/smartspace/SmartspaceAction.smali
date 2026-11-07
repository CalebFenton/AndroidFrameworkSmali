.class public final Landroid/app/smartspace/SmartspaceAction;
.super Ljava/lang/Object;
.source "SmartspaceAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SmartspaceAction"


# instance fields
.field private final blacklist mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSubtitle:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Landroid/app/smartspace/SmartspaceAction$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceAction$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    .line 85
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mTitle:Ljava/lang/CharSequence;

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 88
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 89
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 90
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mIntent:Landroid/content/Intent;

    .line 91
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mUserHandle:Landroid/os/UserHandle;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mExtras:Landroid/os/Bundle;

    .line 93
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "subtitle"    # Ljava/lang/CharSequence;
    .param p5, "contentDescription"    # Ljava/lang/CharSequence;
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "userHandle"    # Landroid/os/UserHandle;
    .param p9, "extras"    # Landroid/os/Bundle;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Landroid/app/smartspace/SmartspaceAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 107
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mTitle:Ljava/lang/CharSequence;

    .line 108
    iput-object p4, p0, Landroid/app/smartspace/SmartspaceAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 109
    iput-object p5, p0, Landroid/app/smartspace/SmartspaceAction;->mContentDescription:Ljava/lang/CharSequence;

    .line 110
    iput-object p6, p0, Landroid/app/smartspace/SmartspaceAction;->mPendingIntent:Landroid/app/PendingIntent;

    .line 111
    iput-object p7, p0, Landroid/app/smartspace/SmartspaceAction;->mIntent:Landroid/content/Intent;

    .line 112
    iput-object p8, p0, Landroid/app/smartspace/SmartspaceAction;->mUserHandle:Landroid/os/UserHandle;

    .line 113
    iput-object p9, p0, Landroid/app/smartspace/SmartspaceAction;->mExtras:Landroid/os/Bundle;

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/app/smartspace/SmartspaceAction-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/app/smartspace/SmartspaceAction;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 183
    :cond_4
    instance-of v0, p1, Landroid/app/smartspace/SmartspaceAction;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    .line 185
    .local v0, "that":Landroid/app/smartspace/SmartspaceAction;
    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartspaceAction{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceAction;->mExtras:Landroid/os/Bundle;

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
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 203
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 204
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 205
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 207
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method
