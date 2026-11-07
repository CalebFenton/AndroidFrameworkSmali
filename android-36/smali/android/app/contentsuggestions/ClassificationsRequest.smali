.class public final Landroid/app/contentsuggestions/ClassificationsRequest;
.super Ljava/lang/Object;
.source "ClassificationsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/ClassificationsRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contentsuggestions/ClassificationsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mSelections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/contentsuggestions/ClassificationsRequest$1;

    invoke-direct {v0}, Landroid/app/contentsuggestions/ClassificationsRequest$1;-><init>()V

    sput-object v0, Landroid/app/contentsuggestions/ClassificationsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 3
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 44
    .local p1, "selections":Ljava/util/List;, "Ljava/util/List<Landroid/app/contentsuggestions/ContentSelection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mSelections:Ljava/util/List;

    .line 46
    iput-object p2, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mExtras:Landroid/os/Bundle;

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/os/Bundle;Landroid/app/contentsuggestions/ClassificationsRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/contentsuggestions/ClassificationsRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_c

    :cond_a
    iget-object v0, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mExtras:Landroid/os/Bundle;

    :goto_c
    return-object v0
.end method

.method public whitelist getSelections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentSelection;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mSelections:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget-object v0, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mSelections:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Landroid/app/contentsuggestions/ClassificationsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
