.class public Landroid/app/AppOpsManager$PackageOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageOps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$PackageOps$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1080
    new-instance v0, Landroid/app/AppOpsManager$PackageOps$1;

    #@2
    invoke-direct {v0}, Landroid/app/AppOpsManager$PackageOps$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/AppOpsManager$PackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1032
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1071
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    #@9
    .line 1072
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v2

    #@d
    iput v2, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    #@f
    .line 1073
    new-instance v2, Ljava/util/ArrayList;

    #@11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v2, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@16
    .line 1074
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 1075
    .local v0, "N":I
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@1d
    .line 1076
    iget-object v3, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@1f
    sget-object v2, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    #@27
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 1075
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1070
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1037
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1038
    iput-object p1, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    #@5
    .line 1039
    iput p2, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    #@7
    .line 1040
    iput-object p3, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@9
    .line 1037
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1057
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1044
    iget-object v0, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 1048
    iget v0, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1062
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 1063
    iget v1, p0, Landroid/app/AppOpsManager$PackageOps;->mUid:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1064
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1065
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@16
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@19
    move-result v1

    #@1a
    if-ge v0, v1, :cond_0

    #@1c
    .line 1066
    iget-object v1, p0, Landroid/app/AppOpsManager$PackageOps;->mEntries:Ljava/util/List;

    #@1e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    #@24
    invoke-virtual {v1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->writeToParcel(Landroid/os/Parcel;I)V

    #@27
    .line 1065
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1061
    :cond_0
    return-void
.end method
