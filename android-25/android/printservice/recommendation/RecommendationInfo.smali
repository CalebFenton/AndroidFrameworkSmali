.class public final Landroid/printservice/recommendation/RecommendationInfo;
.super Ljava/lang/Object;
.source "RecommendationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/RecommendationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/CharSequence;

.field private final mNumDiscoveredPrinters:I

.field private final mPackageName:Ljava/lang/CharSequence;

.field private final mRecommendsMultiVendorService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/printservice/recommendation/RecommendationInfo$1;

    #@2
    invoke-direct {v0}, Landroid/printservice/recommendation/RecommendationInfo$1;-><init>()V

    #@5
    .line 121
    sput-object v0, Landroid/printservice/recommendation/RecommendationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v3

    #@d
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    .line 71
    :cond_0
    invoke-direct {p0, v1, v2, v3, v0}, Landroid/printservice/recommendation/RecommendationInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    #@17
    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/printservice/recommendation/RecommendationInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/printservice/recommendation/RecommendationInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "numDiscoveredPrinters"    # I
    .param p4, "recommendsMultiVendorService"    # Z

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    #@9
    .line 58
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    #@f
    .line 59
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mNumDiscoveredPrinters:I

    #@15
    .line 60
    iput-boolean p4, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    #@17
    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 105
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getNumDiscoveredPrinters()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mNumDiscoveredPrinters:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public recommendsMultiVendorService()Z
    .locals 1

    #@0
    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mPackageName:Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@5
    .line 111
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mName:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a
    .line 112
    iget v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mNumDiscoveredPrinters:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 113
    iget-boolean v0, p0, Landroid/printservice/recommendation/RecommendationInfo;->mRecommendsMultiVendorService:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    int-to-byte v0, v0

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@18
    .line 109
    return-void

    #@19
    .line 113
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method
