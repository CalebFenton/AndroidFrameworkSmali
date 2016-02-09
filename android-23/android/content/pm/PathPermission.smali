.class public Landroid/content/pm/PathPermission;
.super Landroid/os/PatternMatcher;
.source "PathPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PathPermission$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReadPermission:Ljava/lang/String;

.field private final mWritePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Landroid/content/pm/PathPermission$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/PathPermission$1;-><init>()V

    #@5
    .line 58
    sput-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    #@9
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    #@f
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "readPermission"    # Ljava/lang/String;
    .param p4, "writePermission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@3
    .line 34
    iput-object p3, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    #@5
    .line 35
    iput-object p4, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    #@7
    .line 32
    return-void
.end method


# virtual methods
.method public getReadPermission()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWritePermission()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 48
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mReadPermission:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8
    .line 49
    iget-object v0, p0, Landroid/content/pm/PathPermission;->mWritePermission:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@d
    .line 46
    return-void
.end method
