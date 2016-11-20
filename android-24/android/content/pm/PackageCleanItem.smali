.class public Landroid/content/pm/PackageCleanItem;
.super Ljava/lang/Object;
.source "PackageCleanItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageCleanItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final andCode:Z

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Landroid/content/pm/PackageCleanItem$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PackageCleanItem$1;-><init>()V

    #@5
    .line 69
    sput-object v0, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "andCode"    # Z

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 29
    iput p1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    #@5
    .line 30
    iput-object p2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@7
    .line 31
    iput-boolean p3, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    #@9
    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    #@a
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@10
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    iput-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    #@19
    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PackageCleanItem;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PackageCleanItem;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 36
    if-ne p0, p1, :cond_0

    #@4
    .line 37
    return v3

    #@5
    .line 40
    :cond_0
    if-eqz p1, :cond_3

    #@7
    .line 41
    :try_start_0
    move-object v0, p1

    #@8
    check-cast v0, Landroid/content/pm/PackageCleanItem;

    #@a
    move-object v2, v0

    #@b
    .line 42
    .local v2, "other":Landroid/content/pm/PackageCleanItem;
    iget v5, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    #@d
    iget v6, v2, Landroid/content/pm/PackageCleanItem;->userId:I

    #@f
    if-ne v5, v6, :cond_2

    #@11
    iget-object v5, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@13
    iget-object v6, v2, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 43
    iget-boolean v5, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    #@1d
    iget-boolean v6, v2, Landroid/content/pm/PackageCleanItem;->andCode:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    if-ne v5, v6, :cond_1

    #@21
    .line 42
    :goto_0
    return v3

    #@22
    :cond_1
    move v3, v4

    #@23
    .line 43
    goto :goto_0

    #@24
    :cond_2
    move v3, v4

    #@25
    .line 42
    goto :goto_0

    #@26
    .line 45
    .end local v2    # "other":Landroid/content/pm/PackageCleanItem;
    :catch_0
    move-exception v1

    #@27
    .line 47
    :cond_3
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 53
    iget v1, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 54
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget-object v2, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v2

    #@c
    add-int v0, v1, v2

    #@e
    .line 55
    mul-int/lit8 v2, v0, 0x1f

    #@10
    iget-boolean v1, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    :goto_0
    add-int v0, v2, v1

    #@17
    .line 56
    return v0

    #@18
    .line 55
    :cond_0
    const/4 v1, 0x0

    #@19
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 64
    iget v0, p0, Landroid/content/pm/PackageCleanItem;->userId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 65
    iget-object v0, p0, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 66
    iget-boolean v0, p0, Landroid/content/pm/PackageCleanItem;->andCode:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 63
    return-void

    #@13
    .line 66
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
