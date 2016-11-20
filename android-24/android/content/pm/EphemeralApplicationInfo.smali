.class public final Landroid/content/pm/EphemeralApplicationInfo;
.super Ljava/lang/Object;
.source "EphemeralApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralApplicationInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final mGrantedPermissions:[Ljava/lang/String;

.field private final mLabelText:Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequestedPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/content/pm/EphemeralApplicationInfo$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/EphemeralApplicationInfo$1;-><init>()V

    #@5
    .line 108
    sput-object v0, Landroid/content/pm/EphemeralApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "requestedPermissions"    # [Ljava/lang/String;
    .param p3, "grantedPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 41
    iput-object p1, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    .line 42
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mPackageName:Ljava/lang/String;

    #@8
    .line 43
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mLabelText:Ljava/lang/CharSequence;

    #@a
    .line 44
    iput-object p2, p0, Landroid/content/pm/EphemeralApplicationInfo;->mRequestedPermissions:[Ljava/lang/String;

    #@c
    .line 45
    iput-object p3, p0, Landroid/content/pm/EphemeralApplicationInfo;->mGrantedPermissions:[Ljava/lang/String;

    #@e
    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mPackageName:Ljava/lang/String;

    #@9
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mLabelText:Ljava/lang/CharSequence;

    #@f
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mRequestedPermissions:[Ljava/lang/String;

    #@15
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mGrantedPermissions:[Ljava/lang/String;

    #@1b
    .line 62
    const/4 v0, 0x0

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@22
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@24
    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/EphemeralApplicationInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/EphemeralApplicationInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "requestedPermissions"    # [Ljava/lang/String;
    .param p4, "grantedPermissions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    .line 51
    iput-object p1, p0, Landroid/content/pm/EphemeralApplicationInfo;->mPackageName:Ljava/lang/String;

    #@8
    .line 52
    iput-object p2, p0, Landroid/content/pm/EphemeralApplicationInfo;->mLabelText:Ljava/lang/CharSequence;

    #@a
    .line 53
    iput-object p3, p0, Landroid/content/pm/EphemeralApplicationInfo;->mRequestedPermissions:[Ljava/lang/String;

    #@c
    .line 54
    iput-object p4, p0, Landroid/content/pm/EphemeralApplicationInfo;->mGrantedPermissions:[Ljava/lang/String;

    #@e
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGrantedPermissions()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mGrantedPermissions:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 67
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@8
    return-object v0

    #@9
    .line 69
    :cond_0
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mPackageName:Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mRequestedPermissions:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 83
    :cond_0
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mPackageName:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getEphemeralApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 74
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 76
    :cond_0
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mLabelText:Ljava/lang/CharSequence;

    #@d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mPackageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 102
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mLabelText:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a
    .line 103
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mRequestedPermissions:[Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@f
    .line 104
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mGrantedPermissions:[Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@14
    .line 105
    iget-object v0, p0, Landroid/content/pm/EphemeralApplicationInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 100
    return-void
.end method
