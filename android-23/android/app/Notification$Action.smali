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
        Landroid/app/Notification$Action$Builder;,
        Landroid/app/Notification$Action$Extender;,
        Landroid/app/Notification$Action$WearableExtender;,
        Landroid/app/Notification$Action$1;
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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1133
    new-instance v0, Landroid/app/Notification$Action$1;

    #@2
    invoke-direct {v0}, Landroid/app/Notification$Action$1;-><init>()V

    #@5
    .line 1132
    sput-object v0, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 906
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 950
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
    move-object v0, p0

    #@e
    move-object v2, p2

    #@f
    move-object v3, p3

    #@10
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V

    #@13
    .line 949
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;

    #@0
    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 955
    iput-object p1, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@5
    .line 956
    iput-object p2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@7
    .line 957
    iput-object p3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@9
    .line 958
    if-eqz p4, :cond_0

    #@b
    .end local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    iput-object p4, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@d
    .line 959
    iput-object p5, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@f
    .line 954
    return-void

    #@10
    .line 958
    .restart local p4    # "extras":Landroid/os/Bundle;
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    #@12
    .end local p4    # "extras":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    #@15
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;Landroid/app/Notification$Action;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/app/RemoteInput;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 932
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@b
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@11
    iput-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@13
    .line 933
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@15
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    #@18
    move-result v0

    #@19
    const/4 v1, 0x2

    #@1a
    if-ne v0, v1, :cond_0

    #@1c
    .line 934
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/app/Notification$Action;->icon:I

    #@24
    .line 937
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/lang/CharSequence;

    #@2c
    iput-object v0, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@2e
    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v0

    #@32
    const/4 v1, 0x1

    #@33
    if-ne v0, v1, :cond_1

    #@35
    .line 939
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@37
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/app/PendingIntent;

    #@3d
    iput-object v0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@3f
    .line 941
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@45
    .line 942
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    #@47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, [Landroid/app/RemoteInput;

    #@4d
    iput-object v0, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@4f
    .line 930
    return-void
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
    .locals 6

    #@0
    .prologue
    .line 1102
    new-instance v0, Landroid/app/Notification$Action;

    #@2
    .line 1103
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@5
    move-result-object v1

    #@6
    .line 1104
    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@8
    .line 1105
    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@a
    .line 1106
    new-instance v4, Landroid/os/Bundle;

    #@c
    iget-object v5, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@e
    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@11
    .line 1107
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    #@14
    move-result-object v5

    #@15
    .line 1102
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Action;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/app/RemoteInput;)V

    #@18
    return-object v0
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
    .line 1101
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
    .line 1111
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 2

    #@0
    .prologue
    .line 966
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@2
    if-nez v0, :cond_0

    #@4
    iget v0, p0, Landroid/app/Notification$Action;->icon:I

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 968
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
    .line 970
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Action;->mIcon:Landroid/graphics/drawable/Icon;

    #@15
    return-object v0
.end method

.method public getRemoteInputs()[Landroid/app/RemoteInput;
    .locals 1

    #@0
    .prologue
    .line 985
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
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1115
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@5
    move-result-object v0

    #@6
    .line 1116
    .local v0, "ic":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_0

    #@8
    .line 1117
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1118
    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 1122
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@10
    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@13
    .line 1123
    iget-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1124
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1125
    iget-object v1, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@1c
    invoke-virtual {v1, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1f
    .line 1129
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$Action;->mExtras:Landroid/os/Bundle;

    #@21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@24
    .line 1130
    iget-object v1, p0, Landroid/app/Notification$Action;->mRemoteInputs:[Landroid/app/RemoteInput;

    #@26
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@29
    .line 1114
    return-void

    #@2a
    .line 1120
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    goto :goto_0

    #@2e
    .line 1127
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    goto :goto_1
.end method
