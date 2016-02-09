.class public Landroid/net/wifi/BatchedScanResult;
.super Ljava/lang/Object;
.source "BatchedScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/BatchedScanResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BatchedScanResult"


# instance fields
.field public final scanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public truncated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Landroid/net/wifi/BatchedScanResult$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/BatchedScanResult$1;-><init>()V

    #@5
    .line 77
    sput-object v0, Landroid/net/wifi/BatchedScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@a
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/BatchedScanResult;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/BatchedScanResult;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    #@5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@a
    .line 44
    iget-boolean v2, p1, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    #@c
    iput-boolean v2, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    #@e
    .line 45
    iget-object v2, p1, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@20
    .local v0, "s":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@22
    new-instance v3, Landroid/net/wifi/ScanResult;

    #@24
    invoke-direct {v3, v0}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    #@27
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 43
    .end local v0    # "s":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 50
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 52
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "BatchedScanResult: "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v3

    #@c
    .line 53
    const-string/jumbo v4, "truncated: "

    #@f
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    move-result-object v3

    #@13
    .line 53
    iget-boolean v4, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    #@15
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v3

    #@1d
    .line 54
    const-string/jumbo v4, "scanResults: ["

    #@20
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 55
    iget-object v3, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_0

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@35
    .line 56
    .local v0, "s":Landroid/net/wifi/ScanResult;
    const-string/jumbo v3, " <"

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@43
    move-result-object v3

    #@44
    const-string/jumbo v4, "> "

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4a
    goto :goto_0

    #@4b
    .line 58
    .end local v0    # "s":Landroid/net/wifi/ScanResult;
    :cond_0
    const-string/jumbo v3, " ]"

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@51
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 69
    iget-boolean v2, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const/4 v2, 0x1

    #@5
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 70
    iget-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@a
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d
    move-result v2

    #@e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 71
    iget-object v2, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    #@13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@23
    .line 72
    .local v0, "s":Landroid/net/wifi/ScanResult;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    goto :goto_1

    #@27
    .line 69
    .end local v0    # "s":Landroid/net/wifi/ScanResult;
    .end local v1    # "s$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    #@28
    goto :goto_0

    #@29
    .line 68
    .restart local v1    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
