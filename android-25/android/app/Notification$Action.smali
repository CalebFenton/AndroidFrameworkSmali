.class public Landroid/app/Notification$Action;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$Action$1;,
        Landroid/app/Notification$Action$Builder;,
        Landroid/app/Notification$Action$Extender;,
        Landroid/app/Notification$Action$WearableExtender;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mRemoteInputs:[Landroid/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Action;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1262
    new-instance v0, Landroid/app/Notification$Action$1;

    #@2
    invoke-direct {v0}, Landroid/app/Notification$Action$1;-><init>()V

    #@5
    .line 1261
    sput-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1003
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1049
    const-string/jumbo v0, ""

    #@3
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@6
    move-result-object v1

    #@7
    new-instance v4, Landroid/os/Bundle;

    #@9
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@c
    const/4 v5, 0x0

    #@d
    const/4 v6, 0x0

    #@e
    move-object v0, p0

    #@f
    move-object v2, p2

    #@10
    move-object v3, p3

    #@11
    invoke-direct/range {v0 .. v6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V

    #@14
    .line 1048
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z

    #@0
    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1007
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    #@6
    .line 1054
    iput-object p1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@8
    .line 1055
    if-eqz p1, :cond_0

    #@a
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x2

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 1056
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    #@17
    .line 1058
    :cond_0
    iput-object p2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@19
    .line 1059
    iput-object p3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@1b
    .line 1060
    if-eqz p4, :cond_1

    #@1d
    .end local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    iput-object p4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@1f
    .line 1061
    iput-object p5, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@21
    .line 1062
    iput-boolean p6, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    #@23
    .line 1053
    return-void

    #@24
    .line 1060
    .restart local p4    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    #@26
    .end local p4    # "extras":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    #@29
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;ZLandroid/app/Notification$Action;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1007
    iput-boolean v2, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    #@7
    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1030
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@15
    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@17
    .line 1031
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@19
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    #@1c
    move-result v0

    #@1d
    const/4 v3, 0x2

    #@1e
    if-ne v0, v3, :cond_0

    #@20
    .line 1032
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    #@28
    .line 1035
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/CharSequence;

    #@30
    iput-object v0, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@32
    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    if-ne v0, v1, :cond_1

    #@38
    .line 1037
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3a
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/app/PendingIntent;

    #@40
    iput-object v0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@42
    .line 1039
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@4c
    .line 1040
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, [Landroid/app/RemoteInput;

    #@54
    iput-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@56
    .line 1041
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v0

    #@5a
    if-ne v0, v1, :cond_2

    #@5c
    move v0, v1

    #@5d
    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    #@5f
    .line 1028
    return-void

    #@60
    :cond_2
    move v0, v2

    #@61
    .line 1041
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Notification$Action;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/Notification$Action;
    .locals 7

    #@0
    .prologue
    .line 1229
    new-instance v0, Landroid/app/Notification$Action;

    #@2
    .line 1230
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@5
    move-result-object v1

    #@6
    .line 1231
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@8
    .line 1232
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@a
    .line 1233
    iget-object v4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@c
    if-nez v4, :cond_0

    #@e
    new-instance v4, Landroid/os/Bundle;

    #@10
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@13
    .line 1234
    :goto_0
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    #@16
    move-result-object v5

    #@17
    .line 1235
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    #@1a
    move-result v6

    #@1b
    .line 1229
    invoke-direct/range {v0 .. v6}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Z)V

    #@1e
    return-object v0

    #@1f
    .line 1233
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    #@21
    iget-object v5, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@23
    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@26
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    invoke-virtual {p0}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1239
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    #@0
    .prologue
    .line 1088
    iget-boolean v0, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1080
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    #@0
    .prologue
    .line 1069
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1071
    const-string/jumbo v0, ""

    #@b
    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    #@d
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@13
    .line 1073
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@15
    return-object v0
.end method

.method public getRemoteInputs()[Landroid/app/RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 1096
    iget-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1243
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@5
    move-result-object v0

    #@6
    .line 1244
    .local v0, "ic":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_0

    #@8
    .line 1245
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1246
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 1250
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@10
    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@13
    .line 1251
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1252
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1253
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@1c
    invoke-virtual {v3, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 1257
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@21
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@24
    .line 1258
    iget-object v3, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@26
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@29
    .line 1259
    iget-boolean v3, p0, Landroid/app/Notification$Action;->mAllowGeneratedReplies:Z

    #@2b
    if-eqz v3, :cond_2

    #@2d
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 1242
    return-void

    #@31
    .line 1248
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    goto :goto_0

    #@35
    .line 1255
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    goto :goto_1

    #@39
    :cond_2
    move v1, v2

    #@3a
    .line 1259
    goto :goto_2
.end method
