.class public final Landroid/net/DataUsageRequest;
.super Ljava/lang/Object;
.source "DataUsageRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DataUsageRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DataUsageRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARCELABLE_KEY:Ljava/lang/String; = "DataUsageRequest"

.field public static final REQUEST_ID_UNSET:I


# instance fields
.field public final requestId:I

.field public final template:Landroid/net/NetworkTemplate;

.field public final thresholdInBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 73
    new-instance v0, Landroid/net/DataUsageRequest$1;

    #@2
    invoke-direct {v0}, Landroid/net/DataUsageRequest$1;-><init>()V

    #@5
    .line 72
    sput-object v0, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(ILandroid/net/NetworkTemplate;J)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "thresholdInBytes"    # J

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput p1, p0, Landroid/net/DataUsageRequest;->requestId:I

    #@5
    .line 56
    iput-object p2, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@7
    .line 57
    iput-wide p3, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@9
    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 99
    instance-of v2, p1, Landroid/net/DataUsageRequest;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 100
    check-cast v0, Landroid/net/DataUsageRequest;

    #@9
    .line 101
    .local v0, "that":Landroid/net/DataUsageRequest;
    iget v2, v0, Landroid/net/DataUsageRequest;->requestId:I

    #@b
    iget v3, p0, Landroid/net/DataUsageRequest;->requestId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 102
    iget-object v2, v0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@11
    iget-object v3, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@13
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    .line 101
    if-eqz v2, :cond_1

    #@19
    .line 103
    iget-wide v2, v0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@1b
    iget-wide v4, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@1d
    cmp-long v2, v2, v4

    #@1f
    if-nez v2, :cond_1

    #@21
    const/4 v1, 0x1

    #@22
    .line 101
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 108
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/net/DataUsageRequest;->requestId:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget-object v1, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    iget-wide v2, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DataUsageRequest [ requestId="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/net/DataUsageRequest;->requestId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 93
    const-string/jumbo v1, ", networkTemplate="

    #@15
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 93
    iget-object v1, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@1b
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 94
    const-string/jumbo v1, ", thresholdInBytes="

    #@22
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 94
    iget-wide v2, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@28
    .line 92
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 94
    const-string/jumbo v1, " ]"

    #@2f
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/net/DataUsageRequest;->requestId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 68
    iget-object v0, p0, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 69
    iget-wide v0, p0, Landroid/net/DataUsageRequest;->thresholdInBytes:J

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@f
    .line 66
    return-void
.end method
