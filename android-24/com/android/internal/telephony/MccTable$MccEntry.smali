.class Lcom/android/internal/telephony/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MccTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mIso:Ljava/lang/String;

.field final mMcc:I

.field final mSmallestDigitsMnc:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 1
    .param p1, "mnc"    # I
    .param p2, "iso"    # Ljava/lang/String;
    .param p3, "smallestDigitsMCC"    # I

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    if-nez p2, :cond_0

    #@5
    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 61
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    #@d
    .line 62
    iput-object p2, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    #@f
    .line 63
    iput p3, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    #@11
    .line 57
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/MccTable$MccEntry;

    #@0
    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    #@2
    iget v1, p1, Lcom/android/internal/telephony/MccTable$MccEntry;->mMcc:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 67
    check-cast p1, Lcom/android/internal/telephony/MccTable$MccEntry;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MccTable$MccEntry;->compareTo(Lcom/android/internal/telephony/MccTable$MccEntry;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
