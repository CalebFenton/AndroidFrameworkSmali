.class public final Landroid/view/contentcapture/ContentCaptureCondition;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureCondition$Flags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_IS_REGEX:I = 0x2


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mLocusId:Landroid/content/LocusId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureCondition$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/LocusId;I)V
    .registers 4
    .param p1, "locusId"    # Landroid/content/LocusId;
    .param p2, "flags"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    .line 64
    iput p2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 96
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 97
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 98
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/contentcapture/ContentCaptureCondition;

    .line 99
    .local v2, "other":Landroid/view/contentcapture/ContentCaptureCondition;
    iget v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    iget v4, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eq v3, v4, :cond_1d

    return v1

    .line 100
    :cond_1d
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v3, :cond_26

    .line 101
    iget-object v3, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-eqz v3, :cond_31

    return v1

    .line 103
    :cond_26
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    iget-object v4, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v3, v4}, Landroid/content/LocusId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    return v1

    .line 105
    :cond_31
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    return v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 86
    const/16 v0, 0x1f

    .line 87
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 88
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    add-int/2addr v2, v3

    .line 89
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_16

    :cond_10
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v3}, Landroid/content/LocusId;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v1, v3

    .line 90
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1}, Landroid/content/LocusId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "string":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eqz v1, :cond_2a

    .line 112
    nop

    .line 113
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    int-to-long v2, v2

    .line 114
    const-class v4, Landroid/view/contentcapture/ContentCaptureCondition;

    const-string v5, "FLAG_"

    invoke-static {v4, v5, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 127
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
