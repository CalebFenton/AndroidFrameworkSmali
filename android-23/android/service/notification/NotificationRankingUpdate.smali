.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationRankingUpdate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFirstAmbientIndex:I

.field private final mInterceptedKeys:[Ljava/lang/String;

.field private final mKeys:[Ljava/lang/String;

.field private final mVisibilityOverrides:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    #@2
    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    #@5
    .line 60
    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    #@9
    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    #@f
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    #@15
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    #@1b
    .line 40
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "interceptedKeys"    # [Ljava/lang/String;
    .param p3, "visibilityOverrides"    # Landroid/os/Bundle;
    .param p4, "firstAmbientIndex"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    #@5
    .line 35
    iput p4, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    #@7
    .line 36
    iput-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    #@9
    .line 37
    iput-object p3, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    #@b
    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFirstAmbientIndex()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    #@2
    return v0
.end method

.method public getInterceptedKeys()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVisibilityOverrides()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5
    .line 55
    iget v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 56
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    .line 57
    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@14
    .line 53
    return-void
.end method
