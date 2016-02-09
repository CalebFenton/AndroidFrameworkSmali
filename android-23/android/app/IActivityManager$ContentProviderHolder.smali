.class public Landroid/app/IActivityManager$ContentProviderHolder;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$ContentProviderHolder$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connection:Landroid/os/IBinder;

.field public final info:Landroid/content/pm/ProviderInfo;

.field public noReleaseNeeded:Z

.field public provider:Landroid/content/IContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 554
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder$1;

    #@2
    invoke-direct {v0}, Landroid/app/IActivityManager$ContentProviderHolder$1;-><init>()V

    #@5
    .line 553
    sput-object v0, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 526
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .param p1, "_info"    # Landroid/content/pm/ProviderInfo;

    #@0
    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 533
    iput-object p1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@5
    .line 532
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 567
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/content/pm/ProviderInfo;

    #@c
    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@e
    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@11
    move-result-object v0

    #@12
    .line 568
    invoke-static {v0}, Landroid/content/ContentProviderNative;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@18
    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@1e
    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    const/4 v0, 0x1

    #@25
    :goto_0
    iput-boolean v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@27
    .line 566
    return-void

    #@28
    :cond_0
    move v0, v1

    #@29
    .line 571
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/IActivityManager$ContentProviderHolder;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 538
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 543
    iget-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    #@4
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 544
    iget-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 545
    iget-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    #@d
    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@14
    .line 549
    :goto_0
    iget-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@19
    .line 550
    iget-boolean v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    #@1b
    if-eqz v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 542
    return-void

    #@22
    .line 547
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    goto :goto_0
.end method
