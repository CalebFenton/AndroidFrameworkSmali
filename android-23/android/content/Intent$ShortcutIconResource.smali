.class public Landroid/content/Intent$ShortcutIconResource;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutIconResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$ShortcutIconResource$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/Intent$ShortcutIconResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public packageName:Ljava/lang/String;

.field public resourceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 782
    new-instance v0, Landroid/content/Intent$ShortcutIconResource$1;

    #@2
    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource$1;-><init>()V

    #@5
    .line 781
    sput-object v0, Landroid/content/Intent$ShortcutIconResource;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 751
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 772
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    #@2
    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    #@5
    .line 773
    .local v0, "icon":Landroid/content/Intent$ShortcutIconResource;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    #@b
    .line 774
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    #@15
    .line 775
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 800
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 804
    iget-object v0, p0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 805
    iget-object v0, p0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 803
    return-void
.end method
