.class public Landroid/com/google/android/gtalkservice/GroupChatInvitation;
.super Ljava/lang/Object;
.source "GroupChatInvitation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/com/google/android/gtalkservice/GroupChatInvitation$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/com/google/android/gtalkservice/GroupChatInvitation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupContactId:J

.field private mInviter:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mRoomAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 79
    new-instance v0, Landroid/com/google/android/gtalkservice/GroupChatInvitation$1;

    #@2
    invoke-direct {v0}, Landroid/com/google/android/gtalkservice/GroupChatInvitation$1;-><init>()V

    #@5
    .line 78
    sput-object v0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mRoomAddress:Ljava/lang/String;

    #@9
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mInviter:Ljava/lang/String;

    #@f
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mReason:Ljava/lang/String;

    #@15
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mPassword:Ljava/lang/String;

    #@1b
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@1e
    move-result-wide v0

    #@1f
    iput-wide v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mGroupContactId:J

    #@21
    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 75
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mRoomAddress:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 68
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mInviter:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 69
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mReason:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 70
    iget-object v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mPassword:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 71
    iget-wide v0, p0, Landroid/com/google/android/gtalkservice/GroupChatInvitation;->mGroupContactId:J

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@19
    .line 66
    return-void
.end method
