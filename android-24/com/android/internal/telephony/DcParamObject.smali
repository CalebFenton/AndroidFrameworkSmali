.class public Lcom/android/internal/telephony/DcParamObject;
.super Ljava/lang/Object;
.source "DcParamObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DcParamObject$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/DcParamObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/internal/telephony/DcParamObject$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/DcParamObject$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/internal/telephony/DcParamObject;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "subId"    # I

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput p1, p0, Lcom/android/internal/telephony/DcParamObject;->mSubId:I

    #@5
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DcParamObject;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 30
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/internal/telephony/DcParamObject;->mSubId:I

    #@6
    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getSubId()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/telephony/DcParamObject;->mSubId:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 39
    iget v0, p0, Lcom/android/internal/telephony/DcParamObject;->mSubId:I

    #@2
    int-to-long v0, v0

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@6
    .line 38
    return-void
.end method
