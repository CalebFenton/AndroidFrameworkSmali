.class public abstract Landroid/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AbsSavedState$1;,
        Landroid/view/AbsSavedState$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Landroid/view/AbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    new-instance v0, Landroid/view/AbsSavedState$1;

    #@2
    invoke-direct {v0}, Landroid/view/AbsSavedState$1;-><init>()V

    #@5
    sput-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #@7
    .line 75
    new-instance v0, Landroid/view/AbsSavedState$2;

    #@9
    invoke-direct {v0}, Landroid/view/AbsSavedState$2;-><init>()V

    #@c
    .line 74
    sput-object v0, Landroid/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@e
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@6
    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@7
    move-result-object v0

    #@8
    .line 59
    .local v0, "superState":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "superState":Landroid/os/Parcelable;
    :goto_0
    iput-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@c
    .line 55
    return-void

    #@d
    .line 59
    .restart local v0    # "superState":Landroid/os/Parcelable;
    :cond_0
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #@f
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    if-nez p1, :cond_0

    #@6
    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "superState must not be null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 47
    :cond_0
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    #@11
    if-eq p1, v1, :cond_1

    #@13
    .end local p1    # "superState":Landroid/os/Parcelable;
    :goto_0
    iput-object p1, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@15
    .line 43
    return-void

    #@16
    .restart local p1    # "superState":Landroid/os/Parcelable;
    :cond_1
    move-object p1, v0

    #@17
    .line 47
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/AbsSavedState;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/view/AbsSavedState;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 70
    return-void
.end method
