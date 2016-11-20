.class public Lcom/android/ims/internal/uce/presence/PresTupleInfo;
.super Ljava/lang/Object;
.source "PresTupleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresTupleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContactUri:Ljava/lang/String;

.field private mFeatureTag:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 97
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;-><init>()V

    #@5
    .line 96
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    #@8
    .line 26
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    #@d
    .line 27
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    #@12
    .line 81
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    #@8
    .line 26
    const-string/jumbo v0, ""

    #@b
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    #@d
    .line 27
    const-string/jumbo v0, ""

    #@10
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    #@12
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@15
    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getContactUri()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    #@6
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    #@c
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    #@12
    .line 114
    return-void
.end method

.method public setContactUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactUri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    #@2
    .line 57
    return-void
.end method

.method public setFeatureTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "featureTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    #@2
    .line 42
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    #@2
    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 91
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 92
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 89
    return-void
.end method
